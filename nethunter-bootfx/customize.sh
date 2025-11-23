#!/sbin/sh

# Boot Animation Installer
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

LOGFILE="/data/local/tmp/bootfx_install.log"

# Enhanced logging function
log_install() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') [INSTALL] $1" >> "$LOGFILE"
  ui_print "$1"
}

# Print module information
ui_print " ╔═════════════════════════════╗ "
ui_print " │       SMbootFX 2.2.1        │ "
ui_print " │         by John0n1          │ "
ui_print " │ https://github.com/John0n1/ │ "
ui_print " ╚═════════════════════════════╝ "
log_install "=== SMbootFX Installation Started ==="

# Check Magisk version
log_install "Checking Magisk version..."

if [ -n "$MAGISK_VER_CODE" ] && [ "$MAGISK_VER_CODE" -ge 27000 ]; then
  log_install "✓ Magisk version compatible: $MAGISK_VER"
elif [ -n "$MAGISK_VER_CODE" ]; then
  ui_print "! WARNING: Magisk 27+ required (Current: $MAGISK_VER)"
  log_install "WARNING: Magisk version $MAGISK_VER is below required 27+"
  ui_print "! Installation may fail on older versions"
  sleep 2
else
  ui_print "! WARNING: Could not detect Magisk version"
  log_install "WARNING: Could not detect Magisk version"
fi

# Check device compatibility
log_install "Checking device compatibility..."

# Check if Samsung device
BRAND=$(getprop ro.product.brand)
DEVICE=$(getprop ro.product.model)
log_install "Device brand: $BRAND"
log_install "Device model: $DEVICE"

if [ "$BRAND" != "samsung" ]; then
  ui_print "! WARNING: This module is designed for Samsung devices"
  ui_print "! Your device brand: $BRAND"
  ui_print "! Continue at your own risk..."
  log_install "WARNING: Non-Samsung device detected"
  sleep 3
else
  ui_print "✓ Samsung device detected: $DEVICE"
  log_install "SUCCESS: Samsung device detected"
fi

# Check Android version (Android 6-16, SDK 23-35)
SDK=$(getprop ro.build.version.sdk)
ANDROID_VER=$(getprop ro.build.version.release)
log_install "Android version: $ANDROID_VER (SDK $SDK)"

if [ "$SDK" -lt 23 ]; then
  log_install "ERROR: Android version too old (SDK $SDK)"
  abort "! Android 6.0+ required (Current: API $SDK)"
elif [ "$SDK" -gt 35 ]; then
  ui_print "! WARNING: Android version newer than tested (API $SDK)"
  log_install "WARNING: Android version newer than tested range (6-16)"
  ui_print "! Module tested up to Android 16"
  ui_print "! Continue at your own risk..."
  sleep 2
else
  ui_print "✓ Android version compatible: $ANDROID_VER"
  log_install "SUCCESS: Android version compatible"
fi

# Backup original files
log_install "Creating backup of original files..."

BACKUP_DIR="/data/local/tmp/bootfx_backup"
mkdir -p "$BACKUP_DIR"

BACKED_UP=0

if [ -f "/system/media/bootsamsung.qmg" ]; then
  cp "/system/media/bootsamsung.qmg" "$BACKUP_DIR/bootsamsung.qmg.bak" 2>/dev/null || true
  ui_print "✓ bootsamsung.qmg backed up"
  log_install "Backed up: bootsamsung.qmg"
  BACKED_UP=1
fi

if [ -f "/system/media/bootsamsungloop.qmg" ]; then
  cp "/system/media/bootsamsungloop.qmg" "$BACKUP_DIR/bootsamsungloop.qmg.bak" 2>/dev/null || true
  ui_print "✓ bootsamsungloop.qmg backed up"
  log_install "Backed up: bootsamsungloop.qmg"
  BACKED_UP=1
fi

if [ -f "/system/media/shutdown.qmg" ]; then
  cp "/system/media/shutdown.qmg" "$BACKUP_DIR/shutdown.qmg.bak" 2>/dev/null || true
  ui_print "✓ shutdown.qmg backed up"
  log_install "Backed up: shutdown.qmg"
  BACKED_UP=1
fi

if [ $BACKED_UP -eq 0 ]; then
  log_install "WARNING: No original files found to backup"
fi

log_install "Backup directory: $BACKUP_DIR"

# Install boot animation
ui_print "- Installing boot animation..."
log_install "Installing boot animation files via Magisk overlay"

# Log installation details
log_install "Module path: $MODPATH"
log_install "Module ID: $MODID"

ui_print "- Files will be overlayed via Magisk"
ui_print "- Reboot to apply changes"
ui_print ""
ui_print "Installation complete!"
log_install "=== SMbootFX Installation Completed Successfully ==="

# Set permissions
log_install "Setting file permissions..."
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
log_install "File permissions set"
