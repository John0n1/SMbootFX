# Installation Troubleshooting Guide

This guide helps resolve common installation issues with SMbootFX Magisk modules.

## "Installation Failed" Error

If you see **"Installation failed"** when trying to install a module through Magisk:

### Solution 1: Update Magisk
**Most Common Fix**
1. Open Magisk Manager
2. Check your Magisk version in the app
3. If below version 27.0, update Magisk:
   - Tap the Magisk icon in the top-left
   - Tap "Install" next to the Magisk version
   - Choose "Direct Install"
   - Reboot your device
4. After reboot, try installing the boot animation module again

### Solution 2: Verify Device Compatibility
This module **only works on Samsung devices** with QMG boot animation support.

**Check if your device is compatible:**
1. Install a terminal emulator app (like Termux)
2. Run these commands:
   ```bash
   su
   ls -la /system/media/boot*.qmg
   ```
3. You should see files like:
   - `bootsamsung.qmg`
   - `bootsamsungloop.qmg`
   
If you don't see these files, your device may not be compatible.

**Compatible Devices:**
- Samsung Galaxy S21, S22, S23, S24, S25 series
- Samsung Galaxy A52, A53, A54, A55, A56 series
- Samsung Galaxy Z Fold/Flip series
- Most modern Samsung devices running Android 6+

### Solution 3: Check Installation Logs
1. After a failed installation, use a file manager with root access
2. Navigate to `/data/local/tmp/`
3. Open `bootfx_install.log`
4. Look for ERROR or WARNING messages that indicate what went wrong

### Solution 4: Clear Magisk Cache
1. Open Android Settings
2. Go to Apps → Magisk
3. Tap "Storage"
4. Tap "Clear Data" (this won't remove installed modules)
5. Reopen Magisk and try installing again

### Solution 5: Reinstall Magisk
If all else fails:
1. Uninstall Magisk using "Restore Images" in Magisk settings
2. Reboot
3. Reinstall Magisk (version 27.0 or newer)
4. Try installing the boot animation module

## Module Installs But Animation Doesn't Change

If the module installs successfully but your boot animation doesn't change:

### Check 1: Module is Enabled
1. Open Magisk Manager
2. Go to "Modules" section
3. Ensure your boot animation module has a **checkmark** (enabled)
4. If disabled, tap the toggle to enable it
5. Reboot your device

### Check 2: Try a Second Reboot
Some Samsung devices require **two reboots** for changes to take effect:
1. Reboot once after installation
2. Wait for device to fully boot
3. Reboot a second time

### Check 3: Remove Conflicting Modules
Only **one** boot animation module should be installed at a time:
1. Go to Magisk → Modules
2. Check for other boot animation modules
3. Disable or uninstall any conflicting modules
4. Reboot

### Check 4: Verify Module Files
1. Use a root file manager (like MiXplorer or Root Explorer)
2. Navigate to `/data/adb/modules/`
3. Find your module folder (e.g., `oneplus_boot_qmg`)
4. Check if `system/media/` contains `.qmg` files
5. Verify `service.sh` exists and is executable

### Check 5: Check Service Logs
1. Use a file manager to navigate to `/data/local/tmp/`
2. Open `bootfx.log`
3. Look for errors like "file not found" or "permission denied"

## Android Version Too Old Error

If you see **"Android 6.0+ required"**:
- Your device is running Android 5.x (Lollipop) or older
- These modules require Android 6.0 (Marshmallow) or newer
- Consider updating your device OS if possible

## Non-Samsung Device Warning

If you see **"This module is designed for Samsung devices"**:
- The module detected your device is not a Samsung device
- These modules use Samsung's proprietary .QMG format
- Installation may proceed but won't work on non-Samsung devices
- Consider looking for boot animation modules designed for your device brand

## Permission Denied Errors

If logs show permission errors:
1. Ensure your device is **properly rooted**
2. Grant root access to Magisk when prompted
3. Check that Magisk has full root permissions in your root manager

## Storage Space Issues

If installation fails due to storage:
1. Free up at least **100MB** of space in `/data` partition
2. Check available space: Settings → Storage
3. Clear cache or uninstall unused apps
4. Try installing again

## Backup and Recovery

### Automatic Backups
All modules automatically backup your original boot animation files to:
```
/data/local/tmp/bootfx_backup/
```

### Manual Restore
If you need to restore original files:
1. Use a root file manager
2. Navigate to `/data/local/tmp/bootfx_backup/`
3. Copy `.qmg.bak` files to `/system/media/`
4. Rename files (remove `.bak` extension)
5. Set permissions to `0644` (rw-r--r--)
6. Reboot

### Uninstall Module
To completely remove a boot animation module:
1. Open Magisk Manager
2. Go to Modules
3. Tap the trash icon next to the module
4. Reboot
5. Original animation will be restored

## Still Having Issues?

If none of these solutions work:

1. **Check GitHub Issues**: Visit the [SMbootFX Issues page](https://github.com/John0n1/SMbootFX/issues) to see if others have reported similar problems

2. **Create a New Issue**: Open a new issue with:
   - Your device model (e.g., Samsung Galaxy A11)
   - Android version
   - Magisk version
   - Contents of `/data/local/tmp/bootfx_install.log`
   - Steps you've already tried

3. **Join the Community**: Look for XDA Developers threads or Samsung modding communities for additional support

## Additional Tips

- **Always backup** your device before installing system modifications
- **Don't install multiple** boot animation modules simultaneously
- **Read the module description** to ensure it supports your device
- **Keep Magisk updated** to the latest stable version
- **Check XDA Developers** for device-specific information

---

**Version 2.2.1** - Critical bug fixes for Magisk 24+ compatibility

For more information, see the [main README](README.md).
