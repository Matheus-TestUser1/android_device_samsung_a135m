#!/system/bin/sh
# Touch Detection Script for Samsung Galaxy A13
# Current Date and Time (UTC - YYYY-MM-DD HH:MM:SS formatted): 2025-03-16 01:41:52
# Current User's Login: Matheus-TestUser1

# Check touch hardware
touch_id=$(cat /sys/class/sec/tsp/device/id)

case "$touch_id" in
    "HX83*")
        # Himax
        setprop persist.sys.touch.driver "himax_ts"
        ;;
    "SEC_TS*")
        # Samsung
        setprop persist.sys.touch.driver "sec_ts"
        ;;
    "NVT*")
        # Novatek
        setprop persist.sys.touch.driver "novatek_ts"
        ;;
    "FT*")
        # Focaltech
        setprop persist.sys.touch.driver "focaltech_ts"
        ;;
    "GT*")
        # Goodix
        setprop persist.sys.touch.driver "goodix_ts"
        ;;
    "S3*")
        # Synaptics
        setprop persist.sys.touch.driver "synaptics_ts"
        ;;
    "EG*")
        # eGalax
        setprop persist.sys.touch.driver "egalax_ts"
        ;;
    "AT*")
        # Atmel
        setprop persist.sys.touch.driver "atmel_ts"
        ;;
    "MF*")
        # Melfas
        setprop persist.sys.touch.driver "melfas_ts"
        ;;
    "IM*")
        # Imagis
        setprop persist.sys.touch.driver "imagis_ts"
        ;;
    *)
        # Default to Samsung
        setprop persist.sys.touch.driver "sec_ts"
        ;;
esac
