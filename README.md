# SMbootFX - Custom Samsung Boot Animations

Implements custom boot animations in .QMG format on Samsung Galaxy devices using Magisk. These modules replace the default boot animation with themed ones, offering a personalized startup and shutdown experience.

## Requirements
- [![Magisk 26+](https://img.shields.io/badge/Magisk%2026%2B-black?style=flat&logo=magisk&logoColor=lightgreen)](https://github.com/topjohnwu/Magisk)
- [![Android 10 to 16](https://img.shields.io/badge/Android%2010%20to%2016-black?style=flat&logo=android&logoColor=green)](https://www.android.com)
- [![Samsung Galaxy S20 to S25](https://img.shields.io/badge/Samsung%20Galaxy%20S20%20to%20S25-black?style=flat&logo=samsung&logoColor=white)](https://samsung.com)

## Available Themes

| Theme | Preview | Download | Made By |
|-------|---------|----------|---------|
| **Linux** | ![Linux Preview](examples/linux-bootfx.gif) | [linux-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/linux-bootfx-2.0.2-magisk.zip) | Unknown |
| **NetHunter** | ![NetHunter Preview](examples/nethunter-bootfx.gif) | [nethunter-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/nethunter-bootfx-2.0.2-magisk.zip) | **(kali.org)** OffSec Services |
| **Superhero** | ![Superhero Preview](examples/superhero-bootfx.gif) | [superhero-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/superhero-bootfx-2.0.2-magisk.zip) | **(XDA)** goforce87 |
| **EA** | ![EA Preview](examples/ea-bootfx.gif) | [ea-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/ea-bootfx-2.0.2-magisk.zip) | Unknown |
| **S.H.I.E.L.D.** | ![S.H.I.E.L.D. Preview](examples/shield-bootfx.gif) | [shield-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/shield-bootfx-2.0.2-magisk.zip) | Unknown |
| **Simpsons** | ![Simpsons Preview](examples/simpsons-bootfx.gif) | [simpsons-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/simpsons-bootfx-2.0.2-magisk.zip) | **(XDA)** JaeKarr99 & KachowPow |
| **Apple** | ![Apple Preview](examples/apple-bootfx.png) | [apple-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/apple-bootfx-2.0.2-magisk.zip) | Unknown |
| **CTOS** | ![CTOS Preview](examples/ctos-bootfx.gif) | [ctos-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/ctos-bootfx-2.0.2-magisk.zip) | **(kali.org)** OffSec Services *?*  |
| **Android Purple** | ![Android Purple Preview](examples/android-purple-bootfx.gif) | [android-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/android-bootfx-2.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **Android Red** | ![Android Red Preview](examples/android-bootfx.gif) | [android-red-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/android-red-bootfx-2.0.2-magisk.zip) | **(XDA)** Melissa Pugs |
| **AOKP** | ![AOKP Preview](examples/aokp-bootfx.gif) | [aokp-bootfx-2.0.2-magisk.zip](https://github.com/John0n1/SMbootFX/releases/download/2.0.2/aokp-bootfx-2.0.2-magisk.zip) | **(XDA)** PartimusPrime |
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

## Contributions and Requests

Feel free to open an issue for bug reports, feature requests, or new theme suggestions. Pull requests are welcome for new themes or improvements!

## License

This project is licensed under the [MIT License](LICENSE).
