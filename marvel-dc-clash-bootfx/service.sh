#!/system/bin/sh
# Boot Animation Service Script
# This script ensures proper animation loading during the boot process.

# Log boot animation load
echo "$(date): Boot animation loaded" >> /data/local/tmp/bootfx.log

# Verify animation files exist
if [ ! -f "/system/media/bootsamsung.qmg" ]; then
    echo "$(date): ERROR - Boot animation files missing!" >> /data/local/tmp/bootfx.log
fi

# Optional: Configure specific properties for this theme
resetprop ro.bootanim.theme "android"