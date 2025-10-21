# SMbootFX - Custom Samsung Boot Animations

Implements custom boot animations in .QMG format on Samsung Galaxy devices using Magisk. These modules replace the default boot animation with themed ones, offering a personalized startup and shutdown experience.

## Requirements
- [![Magisk 27+](https://img.shields.io/badge/Magisk%2027%2B-black?style=flat&logo=magisk&logoColor=lightgreen)](https://github.com/topjohnwu/Magisk)

- [![Samsung](https://img.shields.io/badge/Samsung-000000?style=flat&logo=samsung&logoColor=white)](https://samsung.com) - **See [Supported Devices](#supported-devices)**

- [![Android 6-16](https://img.shields.io/badge/Android%206--16-3DDC84?style=flat&logo=android&logoColor=white)](https://www.android.com/)



## Available Themes

| Theme | Preview | Download | Made By |
|-------|---------|----------|---------|
| **Android Green** | ![Android Green on Black Preview](examples/android-green-on-black-bootfx.gif) | [android-green-on-black-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/android-green-on-black-bootfx-2.1.0-magisk.zip) | **(XDA)** Melissa Pugs |
| **Android - Purple** | ![Android Purple Preview](examples/android-purple-bootfx.gif) | [android-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/android-bootfx-2.1.0-magisk.zip) | **(XDA)** Melissa Pugs |
| **Android - Red** | ![Android Red Preview](examples/android-bootfx.gif) | [android-red-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/android-red-bootfx-2.1.0-magisk.zip) | **(XDA)** Melissa Pugs |
| **Android - Black on Pink** | _Preview coming soon_ | [android-black-on-pink-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/android-black-on-pink-bootfx-2.1.0-magisk.zip) | John0n1 |
| **MIUI Blue Android on Black** | ![MIUI Blue Preview](examples/miui-blue-android-on-black-bootfx.gif) | [miui-blue-android-on-black-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/miui-blue-android-on-black-bootfx-2.1.0-magisk.zip) | **(XDA)** Melissa Pugs |
| **MIUI White Android on Black** | ![MIUI White on Black Preview](examples/miui-white-android-on-black-bootfx.gif) | [miui-white-android-on-black-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/miui-white-android-on-black-bootfx-2.1.0-magisk.zip) | **(XDA)** Melissa Pugs |
| **MIUI White Android on Blue** | ![MIUI White on Blue Preview](examples/miui-white-android-on-blue-bootfx.gif) | [miui-white-android-on-blue-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/miui-white-android-on-blue-bootfx-2.1.0-magisk.zip) | **(XDA)** Melissa Pugs |
| **KitKat - Classic** | ![KitKat Classic Preview](examples/kitkat-bootfx.gif) | [kitkat-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/kitkat-bootfx-2.1.0-magisk.zip) | Unknown |
| **KitKat - Android Easter Egg** | ![KitKat Easter Egg Preview](examples/kitkat-bootfx.gif) | [android-kitkat-easter-egg-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/android-kitkat-easter-egg-bootfx-2.1.0-magisk.zip) | Unknown |
| **Simple Android Black on Red** | ![Simple Android Black on Red Preview](examples/simple-android-black-on-red-bootfx.gif) | [simple-android-black-on-red-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/simple-android-black-on-red-bootfx-2.1.0-magisk.zip) | Unknown |
| **White on Black** | ![Cyanogen Android Preview](examples/cyanogen-android-bootfx.gif) | [green-android-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/green-android-bootfx-2.1.0-magisk.zip) | Unknown |
| **Black on White** | ![Cyanogen Dark Preview](examples/cyanogen-dark-boot-logo-bootfx.gif) | [white-on-black-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/white-on-black-bootfx-2.1.0-magisk.zip) | Unknown |
| **Reactor BootAni (Revision)** | ![Reactor BootAni Revision Preview](examples/reactor-bootani-revision-bootfx.gif) | [reactor-bootani-revision-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/reactor-bootani-revision-bootfx-2.1.0-magisk.zip) | John0n1 |
| **AOKP** | ![AOKP Preview](examples/aokp-bootfx.gif) | [aokp-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/aokp-bootfx-2.1.0-magisk.zip) | **(XDA)** PartimusPrime |
| **AOKP Magical** | ![AOKP Magical Preview](examples/aokp-magical-bootfx.gif) | [aokp-magical-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/aokp-magical-bootfx-2.1.0-magisk.zip) | **(XDA)** PartimusPrime |
| **NetHunter** | ![NetHunter Preview](examples/nethunter-bootfx.gif) | [nethunter-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/nethunter-bootfx-2.1.0-magisk.zip) | **(kali.org)** OffSec Services |
| **CTOS - Watchdogs** | ![CTOS Preview](examples/ctos-bootfx.gif) | [ctos-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/ctos-bootfx-2.1.0-magisk.zip) | **(kali.org)** OffSec Services |
| **Superhero** | ![Superhero Preview](examples/superhero-bootfx.gif) | [superhero-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/superhero-bootfx-2.1.0-magisk.zip) | **(XDA)** goforce87 |
| **EA Game's** | ![EA Preview](examples/ea-bootfx.gif) | [ea-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/ea-bootfx-2.1.0-magisk.zip) | Unknown |
| **S.H.I.E.L.D.** | ![S.H.I.E.L.D. Preview](examples/shield-bootfx.gif) | [shield-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/shield-bootfx-2.1.0-magisk.zip) | Unknown |
| **Simpsons** | ![Simpsons Preview](examples/simpsons-bootfx.gif) | [simpsons-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/simpsons-bootfx-2.1.0-magisk.zip) | **(XDA)** JaeKarr99 & KachowPow |
| **Apple - Static** | ![Apple Preview](examples/apple-bootfx.png) | [apple-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/apple-bootfx-2.1.0-magisk.zip) | Unknown |
| **Linux/Android** | ![Linux Preview](examples/linux-bootfx.gif) | [linux-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/linux-bootfx-2.1.0-magisk.zip) | Unknown |
| **Apple Electrocution** | ![Apple Electrocution Preview](examples/apple-electrocution-bootfx.gif) | [apple-electrocution-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/apple-electrocution-bootfx-2.1.0-magisk.zip) | Unknown |
| **Blue Lines A** | ![Blue Lines A Preview](examples/blue-lines-a-bootfx.gif) | [blue-lines-a-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/blue-lines-a-bootfx-2.1.0-magisk.zip) | Unknown |
| **Iron Man** | ![Iron Man Preview](examples/iron-man-bootfx.gif) | [iron-man-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/iron-man-bootfx-2.1.0-magisk.zip) | Unknown |
| **Marvel Avengers Sequence** | ![Marvel Avengers Preview](examples/marvel-avengers-sequence-bootfx.gif) | [marvel-avengers-sequence-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/marvel-avengers-sequence-bootfx-2.1.0-magisk.zip) | Unknown |
| **Xbox One** | _Preview coming soon_ | [xbox-one-bootfx-2.1.0-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.1.0/xbox-one-bootfx-2.1.0-magisk.zip) | Unknown |
| **More coming soon!** | | | |

## Important Distinctions

1. This project targets the **boot animation** that plays after the bootloader logo, during the Android system startup.
2. Newer Samsung devices use the .QMG ("Quick Media Graphics") format, which is **not compatible** with non-Samsung devices.
3. These Magisk modules provide custom animations in a compatible .QMG format.
4. Modules include an auto-backup feature to safeguard your original Samsung boot animation files.

## How It Works

1. Magisk hooks into the system partition and uses its late-start service to systemlessly overlay the replacement boot animation files.
2. The module automatically backs up the original files for easy restoration if needed.

## Installation Guide

1. **Download** your chosen boot animation module from the table above.
2. **Open** the Magisk app.
3. **Install** the module via Magisk's "Modules" section (select "Install from storage").
4. **Reboot** your device.
5. **Enjoy** the new boot animation!

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

# Supported Devices

Confirmed compatability with the following Samsung devices:
- Samsung Galaxy S-Series 21, 22, 23, 24 and 25
- Samsung A-Series 52, 53, 54, 55 and 56
- Samsung Fold/Flip Series

To check if your device is supported, look for the presence of the following files in your device's `/system/media/` or `/vendor/media/` directory:

- `bootsamsung.qmg`
- `bootsamsungloop.qmg`
- `shutdown.qmg`

If you see these files, your device is compatible.

## Contributions and Requests

Feel free to open an issue for bug reports, feature requests, or new theme suggestions. Pull requests are welcome for new themes or improvements!

## License

This project is licensed under the [MIT License](LICENSE).
