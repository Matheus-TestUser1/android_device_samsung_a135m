
# TWRP Device Tree for Samsung Galaxy A13 (SM-A135M)

## Disclaimer
**⚠️ Warning: Installing custom recoveries can potentially brick your device. Proceed at your own risk. I am not responsible for any damage or data loss.**

**Compiled for Android 13 and 14.**

## Requirements
- Linux Computer (Recommended Ubuntu 20.04 or higher)
- At least 250GB of disk space
- 16GB of RAM (recommended)
- Tools: `repo`, `git`, `build-essential`

## Environment Setup

### 1. Set up the Build Environment
```bash
# Update packages
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y repo git build-essential wget python3 bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
```

### 2. Set up TWRP Repository
```bash
# Create the working directory
mkdir -p ~/TWRP && cd ~/TWRP

# Initialize TWRP repository
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

# Synchronize repositories
repo sync -j$(nproc)
```

### 3. Clone the Device Tree
```bash
# Clone the device tree
git clone -b twrp-12.1 https://github.com/Matheus-TestUser1/android_device_samsung_a13.git device/samsung/a13
```

### 4. Compile TWRP
```bash
# Prepare the build environment
cd ~/TWRP
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_a13-eng
mka recoveryimage
```

## Feature Status

### Main Features
- [A] Correct screen/recovery size
- [P] Touch and screen working
- [A] Reboot to system
- [P] ADB
- [P] Backup/restore to internal SD/SD card

### Secondary Features
- [ ] Update.zip sideload
- [P] F2FS/EXT4 support
- [ ] Data decryption
- [P] MTP export

### Legend
- `[A]` Fully Functional
- `[P]` Partially Functional
- `[ ]` Not Tested/Not Functional

## Credits
- [Device Tree a137f](https://github.com/badra639/twrp_samsung_a13ve)
- [Device Tree A01 Core](https://github.com/almondnguyen/twrp_device_samsung_a01core)
- [Device Tree A146B](https://github.com/physwizz/a146b-a14x-TWRP-11-dt)

## Additional Resources
- [Complete TWRP Build Guide](https://xdaforums.com/t/guide-to-twrp-building.4515895/)

## Support
If you encounter issues, open an issue on the repository or seek help on Android development forums.
