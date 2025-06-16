#!/sbin/sh

# NetHunter Boot Animation Installer
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

# Enable verbose logging
set -x

# Function to log with timestamp
log_msg() {
  echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" >> /data/local/tmp/nethunter_bootfx_install.log
  ui_print "$1"
}

# Function to print messages
print_modname() {
  ui_print "*******************************"
  ui_print "       ON1-BootFX v1.5.2       "
  ui_print "         by John0n1            "
  ui_print "*******************************"
  log_msg "Starting NetHunter bootFX installation"
  log_msg "Module path: $MODPATH"
  log_msg "Installation directory: $TMPDIR"
}
# Function to check device compatibility
check_compatibility() {
  log_msg "Starting device compatibility check..."
  
  # Check if Samsung device
  BRAND=$(getprop ro.product.brand)
  log_msg "Device brand detected: $BRAND"
  
  if [ "$BRAND" != "samsung" ]; then
    log_msg "WARNING: Non-Samsung device detected - $BRAND"
    ui_print "! WARNING: This module is designed for Samsung devices"
    ui_print "! Your device brand: $BRAND"
    ui_print "! Continue at your own risk..."
    sleep 3
  else
    log_msg "Samsung device confirmed"
    ui_print "✓ Samsung device detected"
  fi
  
  # Check Android version
  SDK=$(getprop ro.build.version.sdk)
  ANDROID_VERSION=$(getprop ro.build.version.release)
  log_msg "Android SDK level: $SDK"
  log_msg "Android version: $ANDROID_VERSION"
  
  if [ "$SDK" -lt 30 ]; then
    log_msg "ERROR: Incompatible Android version - SDK $SDK (requires 30+)"
    abort "! Android 14.0+ required (Current: API $SDK)"
  else
    log_msg "Android version compatibility confirmed"
    ui_print "✓ Android version compatible"
  fi
  
  # Log device info
  DEVICE=$(getprop ro.product.device)
  MODEL=$(getprop ro.product.model)
  log_msg "Device: $DEVICE"
  log_msg "Model: $MODEL"
}

# Function to backup original files
backup_originals() {
  log_msg "Starting backup process..."
  ui_print "- Creating backup of original files..."
  
  BACKUP_DIR="/data/local/tmp/bootfx_backup"
  log_msg "Creating backup directory: $BACKUP_DIR"
  mkdir -p "$BACKUP_DIR"
  
  # Check and log existing files
  log_msg "Scanning for existing boot animation files..."
  
  if [ -f "/system/media/bootsamsung.qmg" ]; then
    FILESIZE=$(stat -c%s "/system/media/bootsamsung.qmg")
    log_msg "Found bootsamsung.qmg (size: $FILESIZE bytes)"
    cp "/system/media/bootsamsung.qmg" "$BACKUP_DIR/bootsamsung.qmg.bak"
    if [ $? -eq 0 ]; then
      log_msg "Successfully backed up bootsamsung.qmg"
      ui_print "✓ bootsamsung.qmg backed up"
    else
      log_msg "ERROR: Failed to backup bootsamsung.qmg"
    fi
  else
    log_msg "bootsamsung.qmg not found in /system/media/"
  fi
  
  if [ -f "/system/media/bootsamsungloop.qmg" ]; then
    FILESIZE=$(stat -c%s "/system/media/bootsamsungloop.qmg")
    log_msg "Found bootsamsungloop.qmg (size: $FILESIZE bytes)"
    cp "/system/media/bootsamsungloop.qmg" "$BACKUP_DIR/bootsamsungloop.qmg.bak"
    if [ $? -eq 0 ]; then
      log_msg "Successfully backed up bootsamsungloop.qmg"
      ui_print "✓ bootsamsungloop.qmg backed up"
    else
      log_msg "ERROR: Failed to backup bootsamsungloop.qmg"
    fi
  else
    log_msg "bootsamsungloop.qmg not found in /system/media/"
  fi
  
  if [ -f "/system/media/shutdown.qmg" ]; then
    FILESIZE=$(stat -c%s "/system/media/shutdown.qmg")
    log_msg "Found shutdown.qmg (size: $FILESIZE bytes)"
    cp "/system/media/shutdown.qmg" "$BACKUP_DIR/shutdown.qmg.bak"
    if [ $? -eq 0 ]; then
      log_msg "Successfully backed up shutdown.qmg"
      ui_print "✓ shutdown.qmg backed up"
    else
      log_msg "ERROR: Failed to backup shutdown.qmg"
    fi
  else
    log_msg "shutdown.qmg not found in /system/media/"
  fi
  
  log_msg "Backup process completed"
}

# Main installation process
on_install() {
  log_msg "=== Starting NetHunter bootFX installation ==="
  print_modname
  check_compatibility
  backup_originals
  
  log_msg "Installing NetHunter boot animation files..."
  ui_print "- Installing NetHunter boot animation..."
  
  # Log module files being installed
  log_msg "Module directory contents:"
  if [ -d "$MODPATH/system/media" ]; then
    for file in "$MODPATH/system/media"/*.qmg; do
      if [ -f "$file" ]; then
        FILENAME=$(basename "$file")
        FILESIZE=$(stat -c%s "$file")
        log_msg "Installing: $FILENAME (size: $FILESIZE bytes)"
      fi
    done
  else
    log_msg "ERROR: Module media directory not found at $MODPATH/system/media"
  fi
  
  ui_print "- Files will be overlayed via Magisk"
  log_msg "Files will be systemlessly mounted over /system/media/"
  
  ui_print "- Reboot to apply changes"
  log_msg "Installation process completed successfully"
  ui_print ""
  ui_print "Installation complete!"
  log_msg "=== NetHunter bootFX installation finished ==="
}

# Set permissions
set_permissions() {
  log_msg "Setting file permissions..."
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/service.sh 0 0 0755
  log_msg "Permissions set successfully"
}
