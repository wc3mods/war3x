---
title: Plugin Information
nav_order: 2
---

# Plugin Information

## What is War3x?

Warcraft 3: Expansion (also known as war3x, wc3x or warcraft3x) is a Counter-Strike plugin that gives players the spells and abilities of the races from Blizzard's Warcraft III. It was created by Ryan with WillyumYum, with special thanks to SpaceDude, whose original Warcraft 3 plugin started it all.

## How to Play

After you pick a team you're asked to choose a **race**. Each race has its own racial ability, skills and ultimates. Killing enemies and completing objectives (planting, defusing, rescuing hostages) earns **experience**. Every level lets you train a **skill**, and at level 6 you can pick an **ultimate**: a powerful ability with a cooldown.

There's also an **item shop** with items that help you dominate the server. If the server saves experience, your characters are still there when you come back.

### Races

| Race | Details |
|------|---------|
| Undead Scourge | [war3x.net/plugin/races/undead](https://war3x.net/plugin/races/undead) |
| Human Alliance | [war3x.net/plugin/races/human](https://war3x.net/plugin/races/human) |
| Orcish Horde | [war3x.net/plugin/races/orc](https://war3x.net/plugin/races/orc) |
| Night Elf Sentinels | [war3x.net/plugin/races/nightelf](https://war3x.net/plugin/races/nightelf) |

Full [skill](https://war3x.net/plugin/skills) and [item](https://war3x.net/plugin/items) information is on war3x.net.

### Leveling

- **Racial ability**: every race has one from level 0. It grows stronger with each level and is at full power by level 9.
- **Trained skills**: each race has 3 skills with 3 levels each. You can't put every level into one skill: level 2 of a skill needs character level 3, and level 3 needs character level 5.
- **Ultimates**: at level 6 you choose one of the race's 3 ultimates. To cast it, bind a key to `ultimate`.
- **Maximum level** is 10.

Experience needed for each level:

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|-------|---|---|---|---|---|---|---|---|---|----|
| Long-term (saved) | 100 | 200 | 400 | 800 | 1,600 | 3,200 | 6,400 | 12,800 | 25,600 | 50,000 |
| Short-term | 25 | 75 | 125 | 175 | 250 | 350 | 475 | 625 | 800 | 1,000 |

Short-term experience isn't saved. It's used when the server doesn't save experience (`war3x_save_xp 0`) and on maps listed in `short_term_maps.cfg` (see [Configuration](configuration.md#map-lists)).

## Binding Keys

Open the console with the `` ` `` key and bind the War3x commands to keys you can reach, for example:

```
bind "mouse3" "ultimate"
bind "-" "shopmenu"
bind "=" "war3menu"
```

You can put these lines in your `config.cfg` so they stick.

## Commands

### Console commands

| Command | What it does |
|---------|--------------|
| `war3menu` | Opens the Warcraft 3 menu |
| `shopmenu` | Opens the item shop |
| `ultimate` | Casts your ultimate (in spectator mode, shows the target's skills) |
| `dropitem` | Drops your item on the ground |

### Chat commands

Type these in chat (`say` or `say_team`); the leading `/` is optional.

| Command (and aliases) | What it does |
|-----------------------|--------------|
| `changerace` (`selectrace`, `chooserace`) | Change your race |
| `selectskill` (`selectskills`) | Train a skill |
| `shopmenu` (`itemshop`, `buyitems`) | Open the item shop |
| `war3menu` (`wc3menu`, `war3xmenu`, `wc3xmenu`) | Open the Warcraft 3 menu |
| `skills` (`myskills`) | Show your skills |
| `level` (`showlevel`) | Show your race and level |
| `playerskills` | Show everyone's skills |
| `skillsinfo` (`skillinfo`, `skillhelp`, `skillshelp`) | Describe your race's skills |
| `itemsinfo` (`iteminfo`, `itemhelp`, `itemshelp`) | Describe the shop items |
| `war3help` (`wc3help`, `war3xhelp`, `wc3xhelp`) | Open the help |
| `options` (`playeroptions`, `war3options`, `wc3options`, …) | Player options |
| `war3vote` (`wc3vote`, `war3xvote`, `wc3xvote`) | Vote to turn War3x on or off (if the server allows it) |

### Admin commands

| Command | Access | What it does |
|---------|--------|--------------|
| `war3x` | rcon | Turns War3x on or off |
| `war3x_help` | rcon | Generates the in-game help files |
| `war3x_setxp <name> <race> <[+/-]value>` | `war3x_setxp_flag` | Sets (or with `+`/`-`, changes) a player's XP for a race |
| `war3x_setlevel <name> <race> <[+/-]value>` | `war3x_setxp_flag` | Sets or changes a player's level for a race |

Names and race names can be partial, for example `war3x_setlevel ryan orc 10`.

## Credits

Created by Ryan (head developer) and WillyumYum, with thanks to SpaceDude. Maintained today by the wc3mods community on [GitHub](https://github.com/wc3mods/war3x).
