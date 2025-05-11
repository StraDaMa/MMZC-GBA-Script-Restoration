# MMZC GBA Script Restoration

This repo hosts the **MMZC GBA Script Restoration** mod for **Mega Man Zero/ZX Legacy Collection**, plus its issue tracker and releases.

[![Release](https://img.shields.io/github/v/release/StraDaMa/MMZC-GBA-Script-Restoration)](https://github.com/StraDaMa/MMZC-GBA-Script-Restoration/releases/latest)

<div align="center">
  <img src="https://i.imgur.com/kBnrFScm.png" alt="Mega Man Zero 1 Image 1"/>
  <img src="https://i.imgur.com/CxGKEPRm.png" alt="Mega Man Zero 1 Image 2"/>

  <img src="https://i.imgur.com/ZiQru0rm.png" alt="Mega Man Zero 2 Image 1"/>
  <img src="https://i.imgur.com/uHbCkI7m.png" alt="Mega Man Zero 2 Image 2"/>

  <img src="https://i.imgur.com/d5JIkA3m.png" alt="Mega Man Zero 3 Image 1"/>
  <img src="https://i.imgur.com/CM7gi3fm.png" alt="Mega Man Zero 3 Image 2"/>
</div>

## About
For the **Mega Man Zero Collection** for the Nintendo DS, the developers edited the game's script. The changes were mostly typo fixes, but it sometimes changed the script to tone down references to death. The updated script for the Nintendo DS is the script that is used by the **Mega Man Zero/ZX Legacy Collection**

This mod restores the original script as it appeared in the Game Boy Advance releases of the game.

This repo can also be used as a basis for any other text mods by changing the scripts found in the `tpl` folder and rebuilding the mod.

## Features
 - Restores GBA dialog for Zero 1–4.
 - Works with the [**MZZXLC Mod Loader**](https://github.com/StraDaMa/MZZXLC-Mod-Loader/releases/latest)
 - Easily moddable to further change text.

## Installing
1. Install **MZZXLC Mod Loader**  
   Download and install [**MZZXLC Mod Loader** from the latest releases page](https://github.com/StraDaMa/MZZXLC-Mod-Loader/releases/latest)
1. **Locate game folder**  
  In Steam, right-click **Mega Man Zero/ZX Legacy Collection** → *Manage* → *Browse Local Files*.  
   If there’s no `mods` folder, create one.
1. **Copy the mod**  
  Download the latest  [**MMZC GBA Script Restoration** release](https://github.com/StraDaMa/MMZC-GBA-Script-Restoration/releases/latest), unzip, and place the `MMZC GBA Script Restoration` folder into your `mods` directory.

## Usage & Verification
1. Launch the game after installing **MZZXLC Mod Loader**.
1. Check the box next to **MMZC GBA Script Restoration**.
1. When the game window opens, if `show_console` is set to `true` in the `modloader.toml`, the console window should show:
```txt
Loading Mod DLL: mods\MMZC GBA Script Restoration\MMZC GBA Script Restoration.dll
```

## Compiling
Compiling the source requires:
 *  Visual Studio 2022
 *  C++ Clang Compiler for Windows (For the ForPub configuration)
 *  Python 3.6+

To build the mod, open `MMZC GBA Script Restoration.sln` in Visual studio and build `Ctrl+Shift+B`.

To modify the game's text, edit the `.tpl` files found in the `tpl` folder with any text editor. Edits to the `.tpl` files will automatically be built into the mod on build.