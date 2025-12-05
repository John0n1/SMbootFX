#!/sbin/sh

# Boot Animation Installer
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

# Display banner
print_modname() {
  ui_print " ╔═════════════════════════════╗ "
  ui_print " │       SMbootFX 3.0.2        │ "
  ui_print " │         by John0n1          │ "
  ui_print " │ https://github.com/John0n1/ │ "
  ui_print " ╚═════════════════════════════╝ "
  ui_print ""
}

print_modname

# Check device compatibility
ui_print "- Checking device compatibility..."

BRAND=$(getprop ro.product.brand)
if [ "$BRAND" != "samsung" ]; then
  ui_print "! WARNING: This module is designed for Samsung devices"
  ui_print "! Your device brand: $BRAND"
  ui_print "! Continue at your own risk..."
  sleep 3
else
  ui_print "✓ Samsung device detected"
fi

SDK=$(getprop ro.build.version.sdk)
if [ "$SDK" -lt 23 ]; then
  abort "! Android 6.0+ required (Current: API $SDK)"
else
  ui_print "✓ Android version compatible"
fi

ui_print "- Creating backup of original files..."

BACKUP_DIR="/data/local/tmp/bootfx_backup"
mkdir -p "$BACKUP_DIR"

for FILE in bootsamsung.qmg bootsamsungloop.qmg shutdown.qmg; do
  if [ -f "/system/media/$FILE" ]; then
    cp "/system/media/$FILE" "$BACKUP_DIR/$FILE.bak"
    ui_print "✓ $FILE backed up"
  fi
done

ui_print ""
ui_print "- Installation complete!"
ui_print "  Reboot to apply changes."
ui_print ""

# Permissions
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
