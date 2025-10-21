# How to Update Release Assets

## Overview
All 28 Magisk module zip files have been regenerated with correct version 2.1.0 information in their internal files (update.json, CHANGELOG.md, and module.prop).

## Location
The updated zip files are located in the `release-assets/` directory (locally generated, not in git due to size).

## Why This Update Is Needed
The previous zip files in the 2.1.0 release had correct filenames but contained outdated version information inside the packages. Users installing these modules would see incorrect version numbers in their Magisk manager.

## Upload Instructions

### Option 1: Using GitHub Web Interface
1. Go to https://github.com/John0n1/SMbootFX/releases/tag/2.1.0
2. Click "Edit release"
3. Delete each existing zip file by clicking the trash icon next to it
4. Drag and drop all 28 new zip files from `release-assets/` directory
5. Click "Update release"

### Option 2: Using GitHub CLI (gh)
```bash
cd /home/runner/work/SMbootFX/SMbootFX/release-assets

# Delete old assets (this will prompt for confirmation)
gh release delete-asset 2.1.0 android-black-on-pink-bootfx-2.1.0-magisk.zip -y
gh release delete-asset 2.1.0 android-bootfx-2.1.0-magisk.zip -y
# ... repeat for all 28 files

# Upload new assets
for file in *.zip; do
    gh release upload 2.1.0 "$file"
done
```

## Verification
After uploading, verify one of the modules:
1. Download a zip file from the release
2. Extract it
3. Check that `update.json` contains `"version": "2.1.0"`
4. Check that `module.prop` contains `version=2.1.0` and `versionCode=210`
5. Check that `CHANGELOG.md` has a "## 2.1.0 SMbootFX" section at the top

## Files Generated
Total: 28 zip files (approximately 1.1 GB total)

See `release-assets/README.md` for the complete list of modules.
