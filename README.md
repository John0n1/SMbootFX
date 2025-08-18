# Samsung Boot Animation Module

**Boot animation for Samsung device Magisk**

- Custom boot animations for Samsung devices via separate Magisk modules. 
- The modules replace the default boot animation with themed animations, providing a unique startup/shutdown experience.

## Requirements  
- *[![Magisk 26+](https://img.shields.io/badge/Magisk%2026%2B-black?style=flat&&logo=magisk&logoColor=lightgreen)](https://github.com/topjohnwu/Magisk)*

- *[![Android 10>16](https://img.shields.io/badge/Android%2010%3E16-black?style=flat&logo=android&logoColor=green)](https://www.android.com)*      

- *[![Samsung Galagy](https://img.shields.io/badge/Samsung%20Galaxy%20s20>25-black?style=flat&logo=samsung&logoColor=white)](https://samsung.com)*


## Available Themes  

| Theme | Preview | Download |
|-------|---------|----------|
| **Linux** | ![Linux Preview](examples/linux-bootfx.gif) | [ linux-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/linux-bootfx-2.0.1-magisk.zip) |
| **NetHunter** | ![NetHunter Preview](examples/nethunter-bootfx.gif) | [ nethunter-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/nethunter-bootfx-2.0.1-magisk.zip) |
| **Superhero** | ![Superhero Preview](examples/superhero-bootfx.gif) | [ superhero-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/superhero-bootfx-2.0.1-magisk.zip) |
| **EA** | ![EA Preview](examples/ea-bootfx.gif) | [ ea-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/ea-bootfx-2.0.1-magisk.zip) |
| **S.H.I.E.L.D** | ![Shield Preview](examples/shield-bootfx.gif) | [ shield-bootfx-2.0.1-magisk.zip](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/shield-bootfx-2.0.1-magisk.zip) |
| **Simpsons** | ![Simpsons Preview](examples/simpsons-bootfx.gif) | [ simpsons-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/simpsons-bootfx-2.0.1-magisk.zip) |
| **Apple** | ![Apple Preview](examples/apple-bootfx.png) | [ apple-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/apple-bootfx-2.0.1-magisk.zip) |
| **CTOS** | ![CTOS Preview](examples/ctos-bootfx.gif) | [ ctos-bootfx-2.0.1-magisk.zip ](https://github.com/John0n1/SMbootFX/releases/tag/2.0.1/ctos-bootfx-2.0.1-magisk.zip) |
| **more coming soon!** ...| | | |

## **Important distinction**
The **bootloader logo** (the very first logo that appears when you power on your device) is stored in the bootloader partition and is typically **not changeable**, even with root access. This logo is hardware-level and locked down by the manufacturer.
This project specifically targets the **boot animation** that plays after the bootloader logo, during the Android system startup process.
Samsung typically uses their own proprietary .QMG or "*Quick Media Graphics*" boot animation format, which is not compatible with non-samsung devices. 
This project provides Magisk modules that replace the default boot animation with custom animations in a compatible QMG format. 
The modules also include an auto-backup feature to protect  the original samsung boot animation files in case any issues arise.

## How it works

1. Magisk hooks into the system partition and uses its late start service phase to systemlessly mount replacement boot animation files over the original ones.
2. The module will auto-backup the original samsung boot animation files in case any issues arise.

## Installation

1. **Download** your preferred boot animation
2. **Open** Magisk Manager
3. **Install** preferred module via Magisk
4. **Reboot** your device
5. **Enjoy** your new boot animation!

##  Important Notes

- Only install **one boot animation** at a time
- **Uninstall** previous animation modules before installing new ones
- Compatible with **Samsung devices only**
- **Auto-backup** feature protects your original files

- Use at your own risk.

## License

This project is licensed under the [MIT License](LICENSE).
