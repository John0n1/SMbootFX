<div align="center">
  <h1>SMbootFX - Custom Samsung Boot Animations</h1>
</div>

<div align="center">
  
### Merry Christmas! 🎅
  
<img width="360" height="450" alt="image" src="https://github.com/user-attachments/assets/5ed40baf-b9fe-4cfb-be3d-f92d276fb3c6" />

________________________________________________________________
</div>

<div align="center">
Implements custom boot animations in `.qmg` format on Samsung devices with Magisk/KernelSU.

These modules replace the default boot animation with themed ones, offering a personalized startup and shutdown experience.
</div>

<div align="center">
  <h3>All themes are provided as ready-to-flash Magisk modules</h3>

[![Magisk 27+](https://img.shields.io/badge/Magisk-27+-000000?style=flat&logo=magisk&logoColor=lightgreen)](https://github.com/topjohnwu/Magisk)
[![Samsung](https://img.shields.io/badge/Samsung-OneUI-000000?style=flat&logo=samsung&logoColor=white)](#supported-devices) 
[![Android 6-16](https://img.shields.io/badge/Android-7<16-000000?style=flat&logo=android&logoColor=white)](https://www.android.com/)

**See [Supported Devices](#supported-devices)**
________________________________________________________________

| Theme | Preview | Download |
|-------|---------|----------|
| **Android - Purple** | <img src="examples/android-purple-bootfx.gif" alt="Android Purple" width="160"> | [android-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/android-bootfx-3.0.3-magisk.zip) |  |
| **Android - Red** | <img src="examples/android-bootfx.gif" alt="Android Red" width="160"> | [android-red-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/android-red-bootfx-3.0.3-magisk.zip) |  |
| **Android Green** | <img src="examples/android-green-on-black-bootfx.gif" alt="Android Green on Black" width="160"> | [android-green-on-black-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/android-green-on-black-bootfx-3.0.3-magisk.zip) |  |
| **Android White on Plum** | <img src="examples/android-white-on-plum-bootfx.gif" alt="Android White on Plum" width="160"> | [android-white-on-plum-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/android-white-on-plum-bootfx-3.0.3-magisk.zip) |  |
| **MIUI Blue Android on Black** | <img src="examples/miui-blue-android-on-black-bootfx.gif" alt="MIUI Blue Android on Black" width="160"> | [miui-blue-android-on-black-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/miui-blue-android-on-black-bootfx-3.0.3-magisk.zip) |  |
| **MIUI Black Android on Pink** | <img src="examples/miui-black-on-pink-bootfx.gif" alt="MIUI Black Android on Pink" width="160"> | [miui-black-android-on-pink-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/miui-black-android-on-pink-bootfx-3.0.3-magisk.zip) |  |
| **MIUI White Android on Black** | <img src="examples/miui-white-android-on-black-bootfx.gif" alt="MIUI White Android on Black" width="160"> | [miui-white-android-on-black-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/miui-white-android-on-black-bootfx-3.0.3-magisk.zip) |  |
| **MIUI White Android on Blue** | <img src="examples/miui-white-android-on-blue-bootfx.gif" alt="MIUI White Android on Blue" width="160"> | [miui-white-android-on-blue-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/miui-white-android-on-blue-bootfx-3.0.3-magisk.zip) |  |
| **Cyanogen Android** | <img src="examples/cyanogen-android-bootfx.gif" alt="Cyanogen Android" width="160"> | [green-android-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/green-android-bootfx-3.0.3-magisk.zip) |  |
| **Simple Android Black on Red** | <img src="examples/simple-android-black-on-red-bootfx.gif" alt="Simple Android Black on Red" width="160"> | [simple-android-black-on-red-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/simple-android-black-on-red-bootfx-3.0.3-magisk.zip) |  |
| **KitKat - Classic** | <img src="examples/kitkat-bootfx.gif" alt="KitKat Classic" width="160"> | [kitkat-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/kitkat-bootfx-3.0.3-magisk.zip) |  |
| **AOKP** | <img src="examples/aokp-bootfx.gif" alt="AOKP" width="160"> | [aokp-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/aokp-bootfx-3.0.3-magisk.zip) |  |
| **AOKP Magical** | <img src="examples/aokp-magical-bootfx.gif" alt="AOKP Magical" width="160"> | [aokp-magical-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/aokp-magical-bootfx-3.0.3-magisk.zip) |  |
| **Cyanogen Dark Boot Logo** | <img src="examples/cyanogen-dark-boot-logo-bootfx.gif" alt="Cyanogen Dark" width="160"> | [white-on-black-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/white-on-black-bootfx-3.0.3-magisk.zip) |  |
| **Apple - Static** | <img src="examples/apple-bootfx.png" alt="Apple Static" width="160"> | [apple-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/apple-bootfx-3.0.3-magisk.zip) |  |
| **Apple Electrocution** | <img src="examples/apple-electrocution-bootfx.gif" alt="Apple Electrocution" width="160"> | [apple-electrocution-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/apple-electrocution-bootfx-3.0.3-magisk.zip) |  |
| **Blue Lines A** | <img src="examples/blue-lines-a-bootfx.gif" alt="Blue Lines A" width="160"> | [blue-lines-a-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/blue-lines-a-bootfx-3.0.3-magisk.zip) |  |
| **CTOS - Watchdogs** | <img src="examples/ctos-bootfx.gif" alt="CTOS" width="160"> | [ctos-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/ctos-bootfx-3.0.3-magisk.zip) |  |
| **NetHunter** | <img src="examples/nethunter-bootfx.gif" alt="NetHunter" width="160"> | [nethunter-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/nethunter-bootfx-3.0.3-magisk.zip) |  |
| **NetHunter - Glitch** | <img src="examples/nethunter-glitch-bootfx.gif" alt="NetHunter Glitch" width="160"> | [nethunter-glitch-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/nethunter-glitch-bootfx-3.0.3-magisk.zip) |  |
| **NetHunter - Burning** | <img src="examples/nethunter-burning-bootfx.gif" alt="NetHunter Burning" width="160"> | [nethunter-burning-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/nethunter-burning-bootfx-3.0.3-magisk.zip) |  |
| **CyanogenMod 7** | <img src="examples/cyanogen-bootfx.gif" alt="CyanogenMod 7" width="160"> | [cyanogen7-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/cyanogen7-bootfx-3.0.3-magisk.zip) |  |
| **OnePlus Cyberpunk** | <img src="examples/oneplus-bootfx.gif" alt="OnePlus Cyberpunk" width="160"> | [oneplus-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/oneplus-bootfx-3.0.3-magisk.zip) |  |
| **Pixel** | <img src="examples/pixel-bootfx.gif" alt="Pixel" width="160"> | [pixel-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/pixel-bootfx-3.0.3-magisk.zip) |  |
| **Windows** | <img src="examples/windows-bootfx.gif" alt="Windows" width="160"> | [windows-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/windows-bootfx-3.0.3-magisk.zip) |  |
| **Error** | <img src="examples/error-bootfx.gif" alt="Error" width="160"> | [error-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/error-bootfx-3.0.3-magisk.zip) |  |
| **Valorant** | <img src="examples/valorant-bootfx.gif" alt="Valorant" width="160"> | [valorant-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/valorant-bootfx-3.0.3-magisk.zip) |  |
| **EA Game's** | <img src="examples/ea-bootfx.gif" alt="EA Games" width="160"> | [ea-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/ea-bootfx-3.0.3-magisk.zip) |  |
| **Xbox One** | <img src="examples/xbox-bootfx.gif" alt="Xbox One" width="160"> | [xbox-one-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/xbox-one-bootfx-3.0.3-magisk.zip) |  |
| **S.H.I.E.L.D.** | <img src="examples/shield-bootfx.gif" alt="S.H.I.E.L.D." width="160"> | [shield-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/shield-bootfx-3.0.3-magisk.zip) |  |
| **Simpsons** | <img src="examples/simpsons-bootfx.gif" alt="Simpsons" width="160"> | [simpsons-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/simpsons-bootfx-3.0.3-magisk.zip) |  |
| **Linux/Android** | <img src="examples/linux-bootfx.gif" alt="Linux/Android" width="160"> | [linux-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/linux-bootfx-3.0.3-magisk.zip) |  |
| **Marvel DC Clash** | <img src="examples/marvel-dc-bootfx.gif" alt="Marvel DC Clash" width="160"> | [marvel-dc-clash-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/marvel-dc-clash-bootfx-3.0.3-magisk.zip) |  |
| **Marvel Thor Dark World (Revision)** | <img src="examples/marvel-thor-bootfx.gif" alt="Marvel Thor Dark World" width="160"> | [marvel-thor-dark-world-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/marvel-thor-dark-world-bootfx-3.0.3-magisk.zip) |  |
| **Star Trek Twist (Revision)** | <img src="examples/star-trek-twist-bootfx.gif" alt="Star Trek Twist" width="160"> | [star-trek-twist-bootfx-3.0.3-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.3/star-trek-twist-bootfx-3.0.3-magisk.zip) |  |
| *More coming soon!* |  |  |  |
</div>

## Important Distinctions

1. This project targets the **boot animation** that plays after the bootloader logo, during the Android system startup.
2. Newer Samsung devices use the `.qmg` (**Qmage**) format, which is **not compatible** with non-Samsung devices.
3. These Magisk modules provide custom animations in a compatible `.qmg` format.
4. Modules include an **auto-backup** feature to safeguard your original Samsung boot animation files.

## How It Works

1. Magisk hooks into the system partition and uses its late-start service to systemlessly overlay the replacement boot animation files.
2. The module automatically backs up the original files for easy restoration if needed.

## Installation Guide

1. **Download** your chosen boot animation module from the table above.
2. **Open** the Magisk app.
3. Go to **Modules** → **Install from storage**.
4. Select the `.zip` file and **install**.
5. **Reboot** your device.
6. **Enjoy** the new boot animation!

## Important Notes

- Install only **one boot animation module** at a time.
- **Uninstall** any previous boot animation modules before installing a new one.
- Compatible with **Samsung devices only**.
- The **auto-backup** feature protects your original files.
- Use at your own risk—always back up your device before modifying system files.

## Troubleshooting

- If the animation doesn't change, ensure Magisk is properly installed and the module is enabled.
- KernelSU Next 3.0+ requires a metamodule (e.g. `meta-overlayfs`) for modules to mount; install it in KernelSU Manager, then reinstall this module.
- For installation issues, check Magisk logs or try reinstalling the module.
- If problems persist, disable the module in Magisk and reboot to restore the original animation.

## Supported Devices

Most Samsung Galaxy devices manufactured after 2012 are supported.

Confirmed working on:

* **Galaxy S series:** S21, S22, S23, S24, S25
* **Galaxy A series:** A52, A53, A54, A55, A56
* **Galaxy Fold/Flip series**

To confirm support for your specific device, check if the following files exist in either `/system/media/` or `/vendor/media/`:

* `bootsamsung.qmg`
* `bootsamsungloop.qmg`
* `shutdown.qmg`

If these files are present, your device should be compatible.

## Contributions and Requests

Feel free to open an issue for bug reports, feature requests, or new theme suggestions.  
Pull requests are welcome for new themes or improvements!

## Credits

The .qmg files used in this project are made by various creators, and credits are given in the themes table above, if author is known.

## Notices

- This project is **not** affiliated with, sponsored, or endorsed by Samsung Electronics Co., Ltd., or any other mentioned or themed brands. All trademarks are the property of their respective owners.
- The `.qmg` files are only distributed inside the flashable ZIPs in the **Releases** section due to GitHub file size limitations.
- Be cautious when downloading forked versions—especially `.qmg` files—from unknown sources, as they may contain malware or unwanted modifications.
- All .qmg's created by **John0n1** are licensed under the [Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)](https://creativecommons.org/licenses/by-nc/4.0/). The project’s source code is licensed under the **MIT License**.

## License

This project is licensed under the [MIT License](LICENSE).

