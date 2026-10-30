---
title: New Installation
parent: Installation
nav_order: 1
---

# Warcraft 3 Expansion: New Installation Guide

This guide installs War3x on a Counter-Strike 1.6 or Condition Zero server.

## Requirements

1. **A game server (HLDS)**: see the [HLDS installation guide](https://docs.war3ft.net/hlds).
2. **AMX Mod X** 1.8.2, 1.9.0 or 1.10.0, with Metamod: [AMX Mod X downloads](https://www.amxmodx.org/downloads.php).
3. **War3x**: the latest release from [GitHub](https://github.com/wc3mods/war3x/releases).

## Pick a download

Each release has three kinds of zip. Pick the one that matches your AMX Mod X version:

| Download | Contains | Use it when |
|----------|----------|-------------|
| `war3x-v1.0.5-cstrike-amxmodx-1.10.0-git5467.zip` (or `czero`) | War3x **plus** AMX Mod X and Metamod, already configured | You're setting up a new server. Extract it into your `cstrike` (or `czero`) folder and you're done; skip the rest of this page. |
| `war3x-v1.0.5-plugin-amxmodx-1.10.0-git5467.zip` | Only War3x | You already run AMX Mod X. Follow the steps below. |
| `war3x-v1.0.5-client-files.zip` | Sounds and sprites | You want to host the files for fast downloads (sv_downloadurl). |

{: .note }
The `-amxmodx-<version>` part of the name is the AMX Mod X version the plugin was compiled for. Use the zip that matches the AMX Mod X version on your server.

## File placement

Extract the plugin zip into your game folder. The files go here:

```
|-- cstrike (or czero)
    |-- addons
        |-- amxmodx
            |-- configs
                |-- war3x        # Configuration files (war3x.cfg, map lists, restrictions)
            |-- data
                |-- lang
                    |-- war3x.txt  # Translations
            |-- plugins          # war3x.amxx
            |-- scripting        # Source code (optional)
    |-- sound
        |-- warcraft3            # Sounds
    |-- sprites
        |-- warcraft3            # Sprites
    |-- war3x.css                # Style sheet for the in-game help
```

## AMX Mod X configuration

### Enable the plugin

Add this line to the bottom of `addons/amxmodx/configs/plugins.ini`:

```
war3x.amxx debug
```

### Enable the required modules

In `addons/amxmodx/configs/modules.ini`, remove the `;` in front of these modules:

```
fun
engine
fakemeta
cstrike
csx
```

To save experience in MySQL, also enable:

```
mysql
```

Otherwise War3x saves experience in AMX Mod X's built-in vault (`addons/amxmodx/data/vault.ini`) and needs no database. See [Saving experience](../configuration.md#saving-experience) before turning MySQL on with AMX Mod X 1.10.

## Start the server

Restart the server (or change map). The server console shows War3x loading. If it doesn't load on a recent Linux distribution, see the [FAQ](../faq.md#amx-mod-x-doesnt-load-on-a-new-linux-distribution).

Next: [configure War3x](../configuration.md).
