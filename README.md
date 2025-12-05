# SMbootFX - Custom Samsung Boot Animations

Implements custom boot animations in `.qmg` format on Samsung devices with Magisk/KernelSU.

These modules replace the default boot animation with themed ones, offering a personalized startup and shutdown experience.

**All themes are provided as ready-to-flash Magisk modules.**

[![Magisk 27+](https://img.shields.io/badge/Magisk-27+-000000?style=flat&logo=magisk&logoColor=lightgreen)](https://github.com/topjohnwu/Magisk)
[![Samsung](https://img.shields.io/badge/Samsung-OneUI-000000?style=flat&logo=samsung&logoColor=white)](#supported-devices) 
[![Android 6-16](https://img.shields.io/badge/Android-7<16-000000?style=flat&logo=android&logoColor=white)](https://www.android.com/)

**See [Supported Devices](#supported-devices)**
________________________________________________________________


| Theme | Preview | Download | Credits |
|-------|---------|----------|---------|
| **Android - Purple** | ![Android Purple](examples/android-purple-bootfx.gif) | [android-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/android-bootfx-3.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **Android - Red** | ![Android Red](examples/android-bootfx.gif) | [android-red-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/android-red-bootfx-3.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **Android Green** | ![Android Green on Black](examples/android-green-on-black-bootfx.gif) | [android-green-on-black-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/android-green-on-black-bootfx-3.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **MIUI Blue Android on Black** | ![MIUI Blue Android on Black](examples/miui-blue-android-on-black-bootfx.gif) | [miui-blue-android-on-black-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/miui-blue-android-on-black-bootfx-3.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **MIUI White Android on Black** | ![MIUI White Android on Black](examples/miui-white-android-on-black-bootfx.gif) | [miui-white-android-on-black-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/miui-white-android-on-black-bootfx-3.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **MIUI White Android on Blue** | ![MIUI White Android on Blue](examples/miui-white-android-on-blue-bootfx.gif) | [miui-white-android-on-blue-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/miui-white-android-on-blue-bootfx-3.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **Reactor BootAni (Revision)** | ![Reactor BootAni Revision](examples/reactor-bootani-revision-bootfx.gif) | [reactor-bootani-revision-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/reactor-bootani-revision-bootfx-3.0.2-magisk.zip) | **(XDA)** Unkown |
| **Cyanogen Android** | ![Cyanogen Android](examples/cyanogen-android-bootfx.gif) | [green-android-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/green-android-bootfx-3.0.2-magisk.zip) | **(XDA)** Unkown |
| **Cyanogen Dark Boot Logo** | ![Cyanogen Dark](examples/cyanogen-dark-boot-logo-bootfx.gif) | [white-on-black-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/white-on-black-bootfx-3.0.2-magisk.zip) | **(XDA)** Unkown |
| **Simple Android Black on Red** | ![Simple Android Black on Red](examples/simple-android-black-on-red-bootfx.gif) | [simple-android-black-on-red-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/simple-android-black-on-red-bootfx-3.0.2-magisk.zip) | **(XDA)** Uknown |
| **KitKat - Classic** | ![KitKat Classic](examples/kitkat-bootfx.gif) | [kitkat-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/kitkat-bootfx-3.0.2-magisk.zip) | **(XDA)** Unknown |
| **AOKP** | ![AOKP](examples/aokp-bootfx.gif) | [aokp-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/aokp-bootfx-3.0.2-magisk.zip) | **(XDA)** PartimusPrime |
| **AOKP Magical** | ![AOKP Magical](examples/aokp-magical-bootfx.gif) | [aokp-magical-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/aokp-magical-bootfx-3.0.2-magisk.zip) | **(XDA)** PartimusPrime |
| **Apple - Static** | ![Apple Static](examples/apple-bootfx.png) | [apple-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/apple-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **Apple Electrocution** | ![Apple Electrocution](examples/apple-electrocution-bootfx.gif) | [apple-electrocution-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/apple-electrocution-bootfx-3.0.2-magisk.zip) | ***JaeKar99*** |
| **Pissing on Apple** | ![Pissing on Apple](examples/pissing-on-apple.gif) | [pissing-on-apple-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/pissing-on-apple-bootfx-3.0.2-magisk.zip) | ***JaeKar99*** |
| **Blue Lines A** | ![Blue Lines A](examples/blue-lines-a-bootfx.gif) | [blue-lines-a-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/blue-lines-a-bootfx-3.0.2-magisk.zip) | **(XDA)** Unkown |
| **CTOS - Watchdogs** | ![CTOS](examples/ctos-bootfx.gif) | [ctos-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/ctos-bootfx-3.0.2-magisk.zip) | **(kali.org)** OffSec Services |
| **NetHunter** | ![NetHunter](examples/nethunter-bootfx.gif) | [nethunter-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/nethunter-bootfx-3.0.2-magisk.zip) | **(kali.org)** OffSec Services |
| **NetHunter - Glitch** | <img src="examples/nethunter-glitch-bootfx.gif" alt="NetHunter Glitch" width="160"> | [nethunter-glitch-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/nethunter-glitch-bootfx-3.0.2-magisk.zip) | **(kali.org)** OffSec Services |
| **NetHunter - Burning** | <img src="examples/nethunter-burning-bootfx.gif" alt="NetHunter Burning" width="160"> | [nethunter-burning-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/nethunter-burning-bootfx-3.0.2-magisk.zip) | **(kali.org)** OffSec Services |
| **CyanogenMod 7** | ![CyanogenMod 7](examples/cyanogen-bootfx.gif) | [cyanogen7-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/cyanogen7-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **OnePlus Cyberpunk** | ![OnePlus Cyberpunk](examples/oneplus-bootfx.gif) | [oneplus-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/oneplus-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **Pixel** | <img src="examples/pixel-bootfx.gif" alt="Pixel" width="160"> | [pixel-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/pixel-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **Windows** | <img src="examples/windows-bootfx.gif" alt="Windows" width="160"> | [windows-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/windows-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **Error** | <img src="examples/error-bootfx.gif" alt="Error" width="160"> | [error-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/error-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **Valorant** | ![Valorant](examples/valorant-bootfx.gif) | [valorant-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/valorant-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **EA Game's** | ![EA Games](examples/ea-bootfx.gif) | [ea-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/ea-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **Xbox One** | ![Xbox One](examples/xbox-bootfx.gif) | [xbox-one-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/xbox-one-bootfx-3.0.2-magisk.zip) | ***John0n1*** |
| **S.H.I.E.L.D.** | ![S.H.I.E.L.D.](examples/shield-bootfx.gif) | [shield-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/shield-bootfx-3.0.2-magisk.zip) | **(XDA)** Unknown |
| **Simpsons** | ![Simpsons](examples/simpsons-bootfx.gif) | [simpsons-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/simpsons-bootfx-3.0.2-magisk.zip) | **(XDA)** JaeKarr99 & KachowPow |
| **Iron Man** | ![Iron Man](examples/iron-man-bootfx.gif) | [iron-man-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/iron-man-bootfx-3.0.2-magisk.zip) | **(XDA)** Unknown |
| **Linux/Android** | ![Linux/Android](examples/linux-bootfx.gif) | [linux-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/linux-bootfx-3.0.2-magisk.zip) | **(XDA)** Unknown |
| **Marvel Avengers Sequence** | ![Marvel Avengers](examples/marvel-avengers-sequence-bootfx.gif) | [marvel-avengers-sequence-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/marvel-avengers-sequence-bootfx-3.0.2-magisk.zip) | **(XDA)** Unknown |
| **Superhero** | ![Superhero](examples/superhero-bootfx.gif) | [superhero-bootfx-3.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/3.0.2/superhero-bootfx-3.0.2-magisk.zip) | **(XDA)** Unkown |
|  *More coming soon!* |  |  |  |

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
