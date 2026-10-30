---
title: Frequently Asked Questions
nav_order: 4
---

# Frequently Asked Questions

## Players

### How do I cast my ultimate?
Bind a key to `ultimate`, for example `bind "mouse3" "ultimate"` in the console. See [Binding Keys](plugin_information.md#binding-keys).

### Where can I see what each skill does?
Type `skillsinfo` in chat for your race, or see the [skills](https://war3x.net/plugin/skills) and [races](https://war3x.net/plugin/races) pages on war3x.net.

### Why are levels coming so fast, and why did my level reset?
The server is using short-term experience: either it doesn't save experience, or this map is in `short_term_maps.cfg`. Short-term levels come quickly and aren't saved. See [Leveling](plugin_information.md#leveling).

## Server admins

### Does War3x work with Counter-Strike: Source or CS2?
No. It's an AMX Mod X plugin for Counter-Strike 1.6 and Condition Zero (GoldSrc).

### Which download do I need?
The one built for your AMX Mod X version: the zip name ends in `-amxmodx-<version>`. For a new server, the `cstrike` or `czero` bundle includes AMX Mod X and Metamod already set up. See [New Installation](installation/new-installation.md#pick-a-download).

### The server crashes when a player joins after I turned on MySQL
That's the AMX Mod X 1.10 mysql module bug described in [Saving experience](configuration.md#saving-experience). Use a mysql module built with the fix, or switch back to vault saving with `war3x_save_xp_sql 0`.

### AMX Mod X doesn't load on a new Linux distribution
On glibc 2.41 and newer (for example Ubuntu 26.04), Metamod can't load AMX Mod X because its binary asks for an executable stack, and AMX Mod X silently doesn't start. Clear the flag:

```
patchelf --clear-execstack addons/amxmodx/dlls/amxmodx_mm_i386.so
```

### How do I give a player experience or levels?
Use `war3x_setxp` or `war3x_setlevel` in the console, for example `war3x_setlevel ryan orc 10` or `war3x_setxp ryan orc +500`. You need the admin flag set in `war3x_setxp_flag` (ban, `d`, by default). See [Admin commands](plugin_information.md#admin-commands).

### How do I turn War3x off on some maps?
Add the map names to `disabled_maps.cfg`. To change settings for just one map, use `map_specific/<mapname>.cfg`. See [Map lists](configuration.md#map-lists).

### How do I run bots with War3x?
Install Metamod-based bots (such as PODBot) as Metamod plugins: add the bot's line to `addons/metamod/plugins.ini` alongside AMX Mod X's, for example:

```
linux addons/amxmodx/dlls/amxmodx_mm_i386.so
linux addons/podbot/podbot_mm_i386.so
```

Make sure you have waypoints for your maps, or the bots won't do much.

### Where do I get help or report a bug?
On the [forums](https://forums.wc3mods.net/viewforum.php?f=44) or as a [GitHub issue](https://github.com/wc3mods/war3x/issues).
