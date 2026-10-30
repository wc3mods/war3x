# Warcraft 3 Expansion (War3x)

An AMX MOD X plugin that brings Warcraft 3 elements to Counter-Strike 1.6, enhancing gameplay with RPG features, special abilities, and unique races.

## Overview

War3x (Warcraft 3 Expansion) is a powerful AMX MOD X plugin that transforms Counter-Strike gameplay by introducing Warcraft 3-inspired elements. Players can choose different races, level up, gain skills, and purchase items during matches.

## Features

- Multiple playable races with unique abilities
- RPG leveling system
- Special skills and abilities
- Item shop system
- Race-specific shops
- Custom effects and animations

## Requirements

- Counter-Strike server with AMX MOD X 1.82 or higher
- MetaMod

## Installation

1. Download the latest version from [releases](https://github.com/wc3mods/war3x/releases/)
2. Extract the files to your server's mod directory
3. Configure the plugin settings in the config files
4. Restart your server

## Configuration

The plugin can be configured through various configuration files:

- `war3x.cfg` - Main plugin configuration

### Saving XP to MySQL

Set `war3x_save_xp_sql 1` and the `war3x_sql_host`, `war3x_sql_user`, `war3x_sql_pass` and `war3x_sql_db` cvars, and uncomment `mysql` in `addons/amxmodx/configs/modules.ini` (bundles after v1.0.5 do this for you).

War3x uses AMX Mod X's legacy DBI natives. On AMX Mod X 1.10 the stock mysql module crashes the server once such a login succeeds (`DatabaseInfo::charset` is left uninitialized in `dbi_connect`). A fix has been submitted to AMX Mod X; until it is released, use a mysql module built with the fix, or save XP with nVault.

### Newer Linux distributions

On glibc 2.41+ (e.g. Ubuntu 26.04), Metamod cannot load AMX Mod X because its binaries request an executable stack, and AMX Mod X silently doesn't start. Clear the flag with `patchelf --clear-execstack addons/amxmodx/dlls/amxmodx_mm_i386.so`.

## Commands

(Note: Add specific commands once documented)

## Support

- Official Website: [war3x.net](https://war3x.net)
- Forums: [wc3mods.net/forums](https://forums.wc3mods.net/viewforum.php?f=44)
- Bug Reports: Please use the official forums to report any issues

## Version History

Current Version: 1.0.3 (Released: 8/2/2006)
- Fixed crashing issues
- Compiled for AMX MOD X 1.75

## Credits

Created by Ryan and the War3x development team.

---

For more information, visit [war3x.net](https://war3x.net)
