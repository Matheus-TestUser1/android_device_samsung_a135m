#!/system/bin/sh
# Touch Detection Script for Samsung Galaxy A13
# Updated: 2025-03-16 01:31:05
# Author: Matheus-TestUser1

# Check touch hardware
touch_id=$(cat /sys/class/sec/tsp/device/id)

case "$touch_id" in
    "HX83*")
        # Himax
        setprop ro.recovery.touch.driver "himax_ts"
        ;;
    "SEC_TS*")
        # Samsung
        setprop ro.recovery.touch.driver "sec_ts"
        ;;
    "NVT*")
        # Novatek
        setprop ro.recovery.touch.driver "novatek_ts"
        ;;
    "FT*")
        # Focaltech
        setprop ro.recovery.touch.driver "focaltech_ts"
        ;;
    "GT*")
        # Goodix
        setprop ro.recovery.touch.driver "goodix_ts"
        ;;
    "S3*")
        # Synaptics
        setprop ro.recovery.touch.driver "synaptics_ts"
        ;;
    "EG*")
        # eGalax
        setprop ro.recovery.touch.driver "egalax_ts"
        ;;
    "AT*")
        # Atmel
        setprop ro.recovery.touch.driver "atmel_ts"
        ;;
    "MF*")
        # Melfas
        setprop ro.recovery.touch.driver "melfas_ts"
        ;;
    "IM*")
        # Imagis
        setprop ro.recovery.touch.driver "imagis_ts"
        ;;
    *)
        # Default to Samsung
        setprop ro.recovery.touch.driver "sec_ts"
        ;;
esac
