#!/usr/bin/env python3
"""
Unzip all .zip files in repo root, convert .sh line endings to LF,
update versions to 3.0.1 in module.prop and in files that reference the old version,
then rezip, preserving file permissions.
"""
import os, zipfile, shutil, tempfile, re, stat

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
NEW_VERSION = '3.0.2'
NEW_VERSIONCODE = '302'

def norm_line_endings(path):
    # Read binary, normalize CRLF/CR to LF, write back preserving mode
    with open(path, 'rb') as f:
        data = f.read()
    # Replace CRLF and CR
    data = data.replace(b'\r\n', b'\n').replace(b'\r', b'\n')
    with open(path, 'wb') as f:
        f.write(data)


def preserve_zip(src_dir, zip_path):
    # Create zip file from src_dir preserving file permissions
    with zipfile.ZipFile(zip_path, 'w', compression=zipfile.ZIP_DEFLATED) as zf:
        for root, dirs, files in os.walk(src_dir):
            for name in files:
                full = os.path.join(root, name)
                arcname = os.path.relpath(full, src_dir)
                zi = zipfile.ZipInfo.from_file(full, arcname)
                # set external_attr from file mode (so executable bits preserved)
                mode = os.stat(full).st_mode
                zi.external_attr = (mode & 0xFFFF) << 16
                with open(full, 'rb') as f:
                    zf.writestr(zi, f.read())


def process_zip(zipfile_path):
    print(f"Processing: {zipfile_path}")
    tmp = tempfile.mkdtemp(prefix='zipedit_')
    try:
        with zipfile.ZipFile(zipfile_path, 'r') as zf:
            zf.extractall(tmp)
        # Find module.prop and determine old version
        module_prop = os.path.join(tmp, 'module.prop')
        old_version = None
        if os.path.exists(module_prop):
            with open(module_prop, 'r', encoding='utf-8', errors='ignore') as f:
                lines = f.readlines()
            new_lines = []
            for line in lines:
                if line.strip().startswith('version='):
                    old_version = line.strip().split('=',1)[1]
                    new_lines.append(f"version={NEW_VERSION}\n")
                elif line.strip().startswith('versionCode='):
                    new_lines.append(f"versionCode={NEW_VERSIONCODE}\n")
                else:
                    new_lines.append(line)
            with open(module_prop, 'w', encoding='utf-8') as f:
                f.writelines(new_lines)
            print(f" - module.prop updated (version -> {NEW_VERSION})")
        # Walk files: normalize .sh endings and replace old_version occurrences
        for root, dirs, files in os.walk(tmp):
            for name in files:
                path = os.path.join(root, name)
                lower = name.lower()
                if lower.endswith('.sh') or lower.endswith('.bash') or lower.endswith('.ksh'):
                    try:
                        norm_line_endings(path)
                        # make executable
                        st = os.stat(path)
                        os.chmod(path, st.st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH)
                        print(f" - normalized LF and set executable: {os.path.relpath(path,tmp)}")
                    except Exception as e:
                        print(f"   ! error normalizing {path}: {e}")
                # If old_version known, replace occurrences in text files
                if old_version:
                    try:
                        with open(path, 'rb') as f:
                            data = f.read()
                        # heuristic: only process small text files
                        if len(data) < 5_000_000:
                            try:
                                text = data.decode('utf-8')
                            except Exception:
                                try:
                                    text = data.decode('latin-1')
                                except Exception:
                                    text = None
                            if text is not None and old_version in text:
                                newtext = text.replace(old_version, NEW_VERSION)
                                with open(path, 'wb') as f:
                                    f.write(newtext.encode('utf-8'))
                                print(f" - replaced version in {os.path.relpath(path,tmp)}")
                    except Exception as e:
                        print(f"   ! error replacing version in {path}: {e}")
        # Rezip to same path (overwrite)
        bak = zipfile_path + '.bak'
        os.replace(zipfile_path, bak)
        preserve_zip(tmp, zipfile_path)
        print(f" -> Repacked {zipfile_path} (backup at {bak})")
    finally:
        shutil.rmtree(tmp)


if __name__ == '__main__':
    os.chdir(ROOT)
    zips = [p for p in sorted(os.listdir('.')) if p.lower().endswith('.zip')]
    if not zips:
        print('No zip files found in repo root.')
    for z in zips:
        process_zip(os.path.join(ROOT, z))
    print('All done.')
