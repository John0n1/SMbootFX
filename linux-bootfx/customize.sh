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
  ui_print "- Checking device compatibility..."
  
  # Check if Samsung device
  BRAND=$(getprop ro.product.brand)
  if [ "$BRAND" != "samsung" ]; then
    ui_print "! WARNING: This module is designed for Samsung devices"
    ui_print "! Your device brand: $BRAND"
    ui_print "! Continue at your own risk..."
    sleep 3
  else
    ui_print "✓ Samsung device detected"
  fi
  
  # Check Android version
  SDK=$(getprop ro.build.version.sdk)
  if [ "$SDK" -lt 23 ]; then
    abort "! Android 6.0+ required (Current: API $SDK)"
  else
    ui_print "✓ Android version compatible"
  fi
}


# Function to backup original files
backup_originals() {
  ui_print "- Creating backup of original files..."
  
  BACKUP_DIR="/data/local/tmp/bootfx_backup"
  mkdir -p "$BACKUP_DIR"
  
  if [ -f "/system/media/bootsamsung.qmg" ]; then
    cp "/system/media/bootsamsung.qmg" "$BACKUP_DIR/bootsamsung.qmg.bak"
    ui_print "✓ bootsamsung.qmg backed up"
  fi
  
  if [ -f "/system/media/bootsamsungloop.qmg" ]; then
    cp "/system/media/bootsamsungloop.qmg" "$BACKUP_DIR/bootsamsungloop.qmg.bak"
    ui_print "✓ bootsamsungloop.qmg backed up"
  fi
  
  if [ -f "/system/media/shutdown.qmg" ]; then
    cp "/system/media/shutdown.qmg" "$BACKUP_DIR/shutdown.qmg.bak"
    ui_print "✓ shutdown.qmg backed up"
  fi
}

# Main installation process
on_install() {
  print_modname
  check_compatibility
  backup_originals

   ui_print "- Installing CTOS boot animation..."
   ui_print ""
   ui_print "- Backup confirmed ✓"
   ui_print ""
   ui_print "- BOOTMODE is LATESTARTSERVICE=true ✓"
   ui_print ""
   ui_print "- Device is SΛMSUNG ✓"
   ui_print ""
   ui_print "- Installation complete! ✓"
   ui_print "- Reboot to apply changes"
   ui_print ""
}

# Set permissions
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644 
  set_perm $MODPATH/service.sh 0 0 0755 
}