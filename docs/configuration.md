---
title: Configuration
nav_order: 3
---

# Configuration

All configuration lives in `addons/amxmodx/configs/war3x/`:

```
|-- war3x
    |-- war3x.cfg              # Main settings (all the cvars below)
    |-- disabled_maps.cfg      # Maps where War3x is turned off
    |-- short_term_maps.cfg    # Maps that use short-term experience
    |-- map_specific/          # Per-map overrides (mapname.cfg)
    |-- _restrict_help.txt     # Restriction letter codes
```

Changes to `war3x.cfg` take effect on the next map.

## Gameplay

| Cvar | Description | Default |
|------|-------------|---------|
| `war3x_enabled` | War3x on (1) or off (0) | `1` |
| `war3x_startlevel_first` | Level of the first character a player creates (0-10) | `4` |
| `war3x_startlevel_other` | Level of the player's other characters (0-10) | `0` |
| `war3x_xp_normal` | Multiplier for all experience | `1.0` |
| `war3x_xp_objective` | Multiplier for objective experience | `1.0` |
| `war3x_xp_minplayers` | Players needed on the server before objectives give experience | `3` |
| `war3x_ultimatewarmup` | Seconds after round start before ultimates can be cast | `20` |
| `war3x_statusicons` | Show status icons for ultimates, skills and items | `1` |

## Item shop

| Cvar | Description | Default |
|------|-------------|---------|
| `war3x_shopmenus` | Enable the item shop | `1` |
| `war3x_shopzone` | Only allow buying in the buy zone | `1` |
| `war3x_shoptime` | Only allow buying during `mp_buytime` | `1` |
| `war3x_ankhpistols` | Ankh of Reincarnation restores pistols (turn off if the server crashes often) | `1` |
| `war3x_ankhautosnipers` | Ankh restores auto-snipers | `1` |
| `war3x_ankhgrenades` | Ankh restores grenades (turn off if the server crashes often) | `1` |

## Saving experience

| Cvar | Description | Default |
|------|-------------|---------|
| `war3x_save_xp` | Save experience between visits (long-term). `0` = experience resets each visit | `1` |
| `war3x_save_xp_sql` | `1` = save in MySQL, `0` = save in AMX Mod X's vault (`data/vault.ini`) | `0` |
| `war3x_save_by_ip` | `1` = identify players by IP, `0` = by Steam ID | `0` |
| `war3x_sql_host` | MySQL host. On Linux use `127.0.0.1` or the server's IP, not `localhost` | `"127.0.0.1"` |
| `war3x_sql_user` | MySQL user | `"root"` |
| `war3x_sql_pass` | MySQL password | `""` |
| `war3x_sql_db` | MySQL database | `"amx"` |
| `war3x_sql_table` | MySQL table (created automatically) | `"war3x"` |

To use MySQL, set `war3x_save_xp_sql 1`, fill in the `war3x_sql_*` cvars, and enable `mysql` in `addons/amxmodx/configs/modules.ini`.

{: .warning }
War3x uses AMX Mod X's legacy DBI functions. With **AMX Mod X 1.10**, the stock mysql module crashes the server as soon as a War3x login succeeds (a bug in AMX Mod X's `dbi_connect`). A fix has been submitted to AMX Mod X; until it is released, use a mysql module built with the fix, or save experience in the vault (`war3x_save_xp_sql 0`).

## Voting and admin

| Cvar | Description | Default |
|------|-------------|---------|
| `war3x_vote_allow` | Let players without admin flags vote War3x on or off | `0` |
| `war3x_vote_ratio` | Share of votes needed for a vote to pass | `0.6` |
| `war3x_setxp_flag` | The one admin flag needed for `war3x_setxp` and `war3x_setlevel` (see `users.ini`) | `"d"` (ban) |

## Restrictions

Restrictions turn off races, skills, ultimates or items. Each cvar takes a string of letters; `""` restricts nothing.

| Cvar | Restricts |
|------|-----------|
| `war3x_restrict_races` | Races |
| `war3x_restrict_skills` | Skills |
| `war3x_restrict_ultimates` | Ultimates |
| `war3x_restrict_items` | Items |

For example, `war3x_restrict_skills "fn"` restricts Invisibility and Evasion.

| Letter | Race | Skill | Ultimate | Item |
|--------|------|-------|----------|------|
| a | Undead Scourge | Unholy Aura | Death Coil | Ankh of Reincarnation |
| b | Human Alliance | Vampiric Aura | Impale | Boots of Speed |
| c | Orcish Horde | Anti-Magic Shell | Sleep | Claws of Attack |
| d | Night Elf Sentinels | Frost Armor | Holy Light | Cloak of Shadows |
| e | | War Training | Flame Strike | Sobi Mask |
| f | | Invisibility | Thunder Clap | Amulet of Spell Shield |
| g | | Bash | Healing Wave | Ring of Protection +5 |
| h | | Inner Fire | Chain Lightning | Tome of Experience |
| i | | Regeneration | Windwalk | |
| j | | Bloodlust | Rejuvenation | |
| k | | Pulverize | Entangling Roots | |
| l | | Reincarnation | Shadow Strike | |
| m | | Nature's Blessing | | |
| n | | Evasion | | |
| o | | Moon Glaive | | |
| p | | Trueshot Aura | | |

## Map lists

- **`disabled_maps.cfg`**: one map name per line. War3x is turned off on these maps.
- **`short_term_maps.cfg`**: one map name per line. These maps use short-term experience: levels come much faster and nothing is saved (see the table in [Plugin Information](plugin_information.md#leveling)).

## Map-specific settings

To change settings for one map, create `map_specific/<mapname>.cfg` with the cvars to override. For example, `map_specific/de_aztec.cfg`:

```
war3x_restrict_items "af"
```

restricts the Ankh and the Amulet on de_aztec only. Values in these files override `war3x.cfg`, and you can add other server settings to them too, such as gravity.
