#!/system/bin/sh
# Android Black on Pink Boot Animation Service Script
# This runs during boot to ensure proper animation loading

# Log boot animation load
echo "$(date): Android Black on Pink boot animation loaded" >> /data/local/tmp/bootfx.log

# Verify animation files exist
if [ ! -f "/system/media/bootsamsung.qmg" ]; then
    echo "$(date): ERROR - Boot animation files missing!" >> /data/local/tmp/bootfx.log
fi

# Optional: Set specific properties for this theme
resetprop ro.bootanim.theme "android_black_on_pink"

