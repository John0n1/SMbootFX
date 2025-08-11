#!/sbin/sh

# Linux Boot Animation Installer
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

# Function to print messages
print_modname() {
  ui_print ""
  ui_print "*******************************"
  ui_print "       SMbootFX 2.0.0          "
  ui_print "         by John0n1            "
  ui_print "*******************************"
  ui_print ""
  ui_print "https://github.com/John0n1/SMbootFX"
  ui_print ""
  
  ui_print "Setting up custom bootanimation..."
  
  ui_print ""
}

# Function to check device compatibility
check_compatibility() {
  ui_print "- Entering check_compatibility..."
  ui_print ""
  ui_print "- Checking device compatibility..."
  
  # Check if Samsung device
  BRAND=$(getprop ro.product.brand)
  ui_print "- Device brand: $BRAND"
  if [ "$BRAND" != "samsung" ]; then
    ui_print "! WARNING: This module is designed for Samsung devices"
    ui_print "! Proceed with caution..."
    
  elif [ "$BRAND" == "samsung" ]; then
    ui_print "! Your device brand: $BRAND"
    ui_print "! Continue at your own risk..."
    
  else
    ui_print "✓ Samsung device detected"
  fi
  
  # Check Android version
  SDK=$(getprop ro.build.version.sdk)
  ui_print "- Android API level: $SDK"
  if [ "$SDK" -lt 23 ]; then
    ui_print "! Android 6.0+ required (Current: API $SDK)"
    # abort "! Android 6.0+ required (Current: API $SDK)"  # Uncomment if you want to abort on failure
  else
    ui_print "✓ Android version compatible"
  fi
}

# Function to backup original files
backup_originals() {
  ui_print "- Entering backup_originals..."
  ui_print "- Creating backup of original files..."
  
  BACKUP_DIR="/data/local/tmp/bootfx_backup"
  mkdir -p "$BACKUP_DIR"
  
  if [ -f "/system/media/bootsamsung.qmg" ]; then
    cp "/system/media/bootsamsung.qmg" "$BACKUP_DIR/bootsamsung.qmg.bak"
    ui_print "✓ bootsamsung.qmg backed up"
  else
    ui_print "! bootsamsung.qmg not found"
  fi
  
  if [ -f "/system/media/bootsamsungloop.qmg" ]; then
    cp "/system/media/bootsamsungloop.qmg" "$BACKUP_DIR/bootsamsungloop.qmg.bak"
    ui_print "✓ bootsamsungloop.qmg backed up"
  else
    ui_print "! bootsamsungloop.qmg not found"
  fi
  
  if [ -f "/system/media/shutdown.qmg" ]; then
    cp "/system/media/shutdown.qmg" "$BACKUP_DIR/shutdown.qmg.bak"
    ui_print "✓ shutdown.qmg backed up"
  else
    ui_print "! shutdown.qmg not found"
  fi
}

# Main installation process
on_install() {
  ui_print "- BOOTMODE is $BOOTMODE ✓"
  print_modname
  ui_print ""
  check_compatibility
  ui_print ""
  ui_print "- Device is $DEVICE ✓"
  ui_print ""
  
  backup_originals
  ui_print ""
  ui_print "- Backup confirm ✓"
  
  ui_print ""
  ui_print "- Installing boot animation..."
  
  ui_print "- Files will be overlaid via Magisk"
  ui_print ""
  
  ui_print "- Reboot to apply changes"
  ui_print ""
  ui_print "Installation complete! ✓"
  ui_print ""
  ui_print "Thanks for using John0n1's SMbootFX!"
}

# Set permissions
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/service.sh 0 0 0755
}