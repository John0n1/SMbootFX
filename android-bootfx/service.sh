#!/system/bin/sh
# Boot Animation Service Script
# This script ensures proper animation loading during the boot process.

MODDIR=${0%/*}
LOGFILE="/data/local/tmp/bootfx.log"

# Enhanced logging function
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [SMbootFX] $1" >> "$LOGFILE"
}

# Log module startup
log_message "=== SMbootFX Service Started ==="
log_message "Module directory: $MODDIR"

# Verify animation files exist
if [ -f "/system/media/bootsamsung.qmg" ]; then
    log_message "SUCCESS: bootsamsung.qmg found"
else
    log_message "ERROR: bootsamsung.qmg missing!"
fi

if [ -f "/system/media/bootsamsungloop.qmg" ]; then
    log_message "SUCCESS: bootsamsungloop.qmg found"
else
    log_message "WARNING: bootsamsungloop.qmg missing (optional)"
fi

if [ -f "/system/media/shutdown.qmg" ]; then
    log_message "SUCCESS: shutdown.qmg found"
else
    log_message "WARNING: shutdown.qmg missing (optional)"
fi

# Log Magisk environment info
log_message "Magisk version: $(magisk -v 2>/dev/null || echo 'unknown')"
log_message "Android SDK: $(getprop ro.build.version.sdk)"
log_message "Device: $(getprop ro.product.model)"

# Optional: Configure specific properties for this theme
THEME_NAME=$(getprop ro.bootanim.theme 2>/dev/null)
if [ -n "$THEME_NAME" ]; then
    log_message "Current boot animation theme: $THEME_NAME"
fi

log_message "=== SMbootFX Service Completed ==="
