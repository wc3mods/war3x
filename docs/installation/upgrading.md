---
title: Upgrading
parent: Installation
nav_order: 2
---

# Warcraft 3 Expansion: Upgrading

Upgrading replaces the plugin and its files. Saved experience is kept: it lives in AMX Mod X's vault or your MySQL database, not in the War3x files.

## Requirements

1. An existing War3x installation.
2. The latest release from [GitHub](https://github.com/wc3mods/war3x/releases), built for the **same AMX Mod X version** your server runs. The `-amxmodx-<version>` part of the zip name tells you which.

## Back up your configuration

Copy `addons/amxmodx/configs/war3x/` somewhere safe first. The release contains a fresh `war3x.cfg` and map lists, so extracting it overwrites your settings.

## Replace the files

Extract the **plugin** zip (`war3x-v<version>-plugin-amxmodx-<version>.zip`) into your `cstrike` (or `czero`) folder, overwriting the old files. The layout is the same as in the [new installation guide](new-installation.md#file-placement).

Then put back your settings: either restore your backed-up `war3x` config folder, or copy your changes into the new `war3x.cfg` (new releases may add settings, so comparing the two is worth it).

## Restart

Restart the server or change map to load the new version.
