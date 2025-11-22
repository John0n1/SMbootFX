#!/sbin/sh

# Boot Animation Uninstaller
LOGFILE="/data/local/tmp/bootfx_uninstall.log"

# Enhanced logging function
log_uninstall() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') [UNINSTALL] $1" >> "$LOGFILE"
  ui_print "$1"
}

log_uninstall "=== SMbootFX Uninstallation Started ==="
ui_print "- Removing boot animation..."

# Restore backups if they exist
BACKUP_DIR="/data/local/tmp/bootfx_backup"

if [ -d "$BACKUP_DIR" ]; then
  log_uninstall "Restoring original files from backup..."
  
  if [ -f "$BACKUP_DIR/bootsamsung.qmg.bak" ]; then
    cp "$BACKUP_DIR/bootsamsung.qmg.bak" "/system/media/bootsamsung.qmg"
    ui_print "✓ Original bootsamsung.qmg restored"
    log_uninstall "Restored: bootsamsung.qmg"
  fi
  
  if [ -f "$BACKUP_DIR/bootsamsungloop.qmg.bak" ]; then
    cp "$BACKUP_DIR/bootsamsungloop.qmg.bak" "/system/media/bootsamsungloop.qmg"
    ui_print "✓ Original bootsamsungloop.qmg restored"
    log_uninstall "Restored: bootsamsungloop.qmg"
  fi
  
  if [ -f "$BACKUP_DIR/shutdown.qmg.bak" ]; then
    cp "$BACKUP_DIR/shutdown.qmg.bak" "/system/media/shutdown.qmg"
    ui_print "✓ Original shutdown.qmg restored"
    log_uninstall "Restored: shutdown.qmg"
  fi
  
  # Clean up backup directory
  rm -rf "$BACKUP_DIR"
  ui_print "✓ Backup files cleaned up"
  log_uninstall "Backup directory cleaned up"
else
  log_uninstall "No backup directory found"
fi

# Clean up logs
if [ -f /data/local/tmp/bootfx.log ]; then
  rm -f /data/local/tmp/bootfx.log
  log_uninstall "Runtime log removed"
fi

if [ -f /data/local/tmp/bootfx_install.log ]; then
  rm -f /data/local/tmp/bootfx_install.log
  log_uninstall "Installation log removed"
fi

ui_print "- cyanogen7 boot animation removed successfully"
ui_print "- Reboot to apply changes"
log_uninstall "=== SMbootFX Uninstallation Completed ==="
