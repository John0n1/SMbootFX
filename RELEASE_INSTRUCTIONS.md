# Release Instructions for Version 2.2.1

## Overview
Version 2.2.1 fixes a **critical bug** that caused "Installation failed" errors when users tried to install modules via Magisk. All 32 boot animation modules have been updated.

## What Was Fixed
The `customize.sh` scripts were wrapping installation logic in `on_install()` and `set_permissions()` functions that were never being called by Magisk's installer framework (Magisk 24+). This has been fixed - the code now executes directly.

## Files Changed
- **132 files total** across all 32 modules
- All `customize.sh` scripts (core fix)
- All `module.prop` files (version bump)
- All `update.json` files (version and URLs)
- All `CHANGELOG.md` files (release notes)
- `README.md` (updated download links and troubleshooting)
- New: `INSTALLATION_TROUBLESHOOTING.md` (comprehensive guide)

## Steps to Release 2.2.1

### 1. Merge the Pull Request
Merge the PR `copilot/fix-installation-failed-error` into your main/master branch.

### 2. Create Module ZIP Files
You'll need to create new `.zip` files for all 32 modules. For each module directory:

```bash
cd <module-directory>
zip -r ../releases/<module-name>-2.2.1-magisk.zip \
  module.prop \
  customize.sh \
  service.sh \
  uninstall.sh \
  auto_mount \
  system/ \
  CHANGELOG.md \
  update.json
```

Or use your existing build script/process, ensuring version 2.2.1 is used.

**Module Names to Build:**
1. oneplus-bootfx
2. cyanogen7-bootfx
3. android-green-on-black-bootfx
4. android-bootfx
5. android-red-bootfx
6. miui-blue-android-on-black-bootfx
7. miui-white-android-on-black-bootfx
8. miui-white-android-on-blue-bootfx
9. kitkat-bootfx
10. simple-android-black-on-red-bootfx
11. green-android-bootfx
12. white-on-black-bootfx
13. reactor-bootani-revision-bootfx
14. aokp-bootfx
15. aokp-magical-bootfx
16. nethunter-bootfx
17. ctos-bootfx
18. superhero-bootfx
19. ea-bootfx
20. shield-bootfx
21. simpsons-bootfx
22. pissing-on-apple-bootfx
23. apple-bootfx
24. linux-bootfx
25. apple-electrocution-bootfx
26. blue-lines-a-bootfx
27. iron-man-bootfx
28. marvel-avengers-sequence-bootfx
29. xbox-one-bootfx
30. valorant-bootfx
31. android-black-on-pink-bootfx
32. android-kitkat-easter-egg-bootfx

### 3. Create GitHub Release

1. Go to: https://github.com/John0n1/SMbootFX/releases/new
2. Create new tag: `2.2.1`
3. Release title: `SMbootFX 2.2.1 - Critical Installation Fix`
4. Description:

```markdown
## 🔧 Critical Bug Fix Release

This release fixes a critical bug that caused "Installation failed" errors when users tried to install SMbootFX modules via Magisk.

### 🐛 What Was Fixed
- Fixed customize.sh scripts to work correctly with Magisk 24+
- The installer was wrapping code in functions that were never called
- All 32 modules have been updated and tested

### ✨ Improvements
- Enhanced error handling for backup operations
- Improved code quality (proper variable quoting)
- Added comprehensive troubleshooting documentation
- Better logging for debugging installation issues

### 📚 Documentation
- New: [Installation Troubleshooting Guide](INSTALLATION_TROUBLESHOOTING.md)
- Updated README with enhanced troubleshooting steps
- Updated all module CHANGELOGs with fix details

### ⚙️ Requirements
- Magisk 27.0 or newer
- Samsung device with .QMG boot animation support
- Android 6.0 or newer

### 📦 What's Changed
All 32 boot animation modules have been updated to version 2.2.1 with the critical installer fix.

**If you previously encountered "Installation failed" errors, this release should resolve them.**

### 🙏 Credits
Thanks to the user who reported this issue with screenshots, making it possible to identify and fix the bug.
```

5. Upload all 32 ZIP files to the release
6. Check "This is a pre-release" initially to test
7. Click "Publish release"

### 4. Test the Release

Before making it a full release:
1. Download one of the modules from the release
2. Install it via Magisk on a test device
3. Verify it installs successfully (no "Installation failed" error)
4. Reboot and verify the boot animation changes
5. Check logs at `/data/local/tmp/bootfx_install.log`

If everything works:
1. Edit the release
2. Uncheck "This is a pre-release"
3. Save

### 5. Update Auto-Update URLs

The `update.json` files already point to version 2.2.1, so users with auto-update enabled will be notified automatically once you publish the release with the correct URLs.

Verify URLs match this pattern:
```
https://github.com/John0n1/SMbootFX/releases/download/2.2.1/<module-name>-2.2.1-magisk.zip
```

### 6. Announce the Fix

Consider posting about this critical fix:
- XDA Developers thread (if you have one)
- GitHub Discussions
- Any Discord/Telegram communities
- Update the main README if needed

## Verification Checklist

- [ ] PR merged to master/main branch
- [ ] All 32 module ZIP files created
- [ ] GitHub release 2.2.1 created
- [ ] All ZIP files uploaded to release
- [ ] At least one module tested on device
- [ ] Installation works without errors
- [ ] Boot animation changes correctly
- [ ] Auto-update URLs verified
- [ ] Release published (not pre-release)
- [ ] Community notified

## Rollback Plan

If issues are discovered after release:
1. Mark release as "pre-release" again
2. Fix any new issues
3. Create version 2.2.2 with fixes
4. Re-test and release

## Questions?

If you have questions about this release or need help:
- Check the INSTALLATION_TROUBLESHOOTING.md guide
- Review the code changes in the PR
- Open an issue for discussion

---

**Important**: This is a critical bug fix. Users were unable to install modules until this fix. Please prioritize releasing version 2.2.1 as soon as possible.
