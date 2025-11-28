#!/sbin/sh

# Simpsons Boot Animation Uninstaller
ui_print "- Removing Simpsons boot animation..."

# Restore backups if they exist
BACKUP_DIR="/data/local/tmp/bootfx_backup"

if [ -d "$BACKUP_DIR" ]; then
  ui_print "- Restoring original files..."
  
  if [ -f "$BACKUP_DIR/bootsamsung.qmg.bak" ]; then
    cp "$BACKUP_DIR/bootsamsung.qmg.bak" "/system/media/bootsamsung.qmg"
    ui_print "✓ Original bootsamsung.qmg restored"
  fi
  
  if [ -f "$BACKUP_DIR/bootsamsungloop.qmg.bak" ]; then
    cp "$BACKUP_DIR/bootsamsungloop.qmg.bak" "/system/media/bootsamsungloop.qmg"
    ui_print "✓ Original bootsamsungloop.qmg restored"
  fi
  
  if [ -f "$BACKUP_DIR/shutdown.qmg.bak" ]; then
    cp "$BACKUP_DIR/shutdown.qmg.bak" "/system/media/shutdown.qmg"
    ui_print "✓ Original shutdown.qmg restored"
  fi
  
  # Clean up backup directory
  rm -rf "$BACKUP_DIR"
  ui_print "✓ Backup files cleaned up"
fi

# Clean up logs
rm -f /data/local/tmp/bootfx.log

ui_print "- Simpsons boot animation removed successfully"
ui_print "- Reboot to apply changes"
