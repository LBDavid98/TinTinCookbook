# Byron Repository Feature Overview

This document summarizes the capabilities of the TinTin++ scripts in the [3kdb](https://github.com/jmitchell33/3kdb) repository.
The listing is organized by directory to highlight the purpose of each module.

## Top-Level
- **`3k.tin`** – entry script that displays a character selection menu and loads character-specific profiles.

## Character Profiles (`chars/`)
Each character directory (e.g., `acalyn`, `akixa`, `byron`, `fail`, `getrdone`, `jesse`, `kim`, `nix`, `vivi`, etc.) contains a collection of scripts tailoring the interface to that persona:
- `<name>.tin` – main loader for the character.
- `actions.tin` – combat and utility actions.
- `aliases.tin` – shorthand command aliases.
- `config.tin` – configuration variables and settings.
- `heartbeat.tin` – per-round automation hooks.
- `miphp.tin` – HP bar and MIP integration.
- `tickers.tin` / `ticker.tin` – periodic tasks.
- Optional files such as `gags.tin`, `styles.tin`, `numpad.tin`, `pstats.tin`, `vars.tin`, and others provide specialized behaviors for individual characters.

## Shared Resources (`common/`)
General-purpose modules used by most characters:
- `index.tin` – loads common aliases, actions, event handlers, and settings.
- `actions.tin`, `aliases.tin`, `config.tin`, `defaults.tin`, `events.tin` – baseline behavior and configuration.
- `gags/gags.tin` – text filtering to reduce screen noise.
- `heartbeat.tin` – framework for round-based automation.
- `highmortal.tin` and `highmortal/highmortal.tin` – track High Mortal abilities.
- `itemlist.tin` – maintains lists of noteworthy items for auto-looting.
- `macros.tin` – keyboard shortcuts for navigation and commands.
- `miphp.tin` – common HP bar, idle timer, and heartbeat tickers.
- `mob_kill_action.tin` – user-defined actions when killing mobs.
- `party.tin` – assists and party management utilities.
- `room.tin` – room data collection and familiar tracking.
- `status.tin` – uptime, coin counting, and other status helpers.
- `strategy.tin` – strategy registry and display helpers.
- `themes.tin` – color theme definitions.
- `whitelist.tin` – party whitelist management.
- Mapping helpers in `common/map/` and quest helpers in `common/quests/`.

### Guild Modules (`common/guilds/<guild>/`)
For each guild (e.g., `mage`, `monk`, `necromancer`, `priest`, `psicorps`, `sii`, `knights-zorb`):
- `index.tin` loads guild-specific components.
- `actions.tin`, `aliases.tin`, `heartbeat.tin`, `hpbar.tin`, `miphp.tin`, `strategy.tin`, `tickers.tin`, and `vars.tin` provide guild-tuned automation.
- Additional files such as `gags.tin`, `data.tin`, `summoner.tin`, `track_defense.tin`, `horse.tin`, and `skill_tracker.tin` offer specialized functions.

## Modules (`modules/`)
Independent subsystems that can be loaded as needed:
- `colors/colors.tin` – displays available color codes.
- `corpsemanager/corpsemanager.tin` – tracks corpses in inventory and storage.
- `crafting/` – automation for crafting activities: auto-stashing, assembling components, mining, smelting, forging, and crafting data (`assemble.tin`, `blacksmith.tin`, `crafting.tin`, `data.tin`, `miner.tin`, `smelter.tin`).
- `deadman/deadman.tin` – idle timer that triggers defined actions after a set period.
- `defense_tracker/defense_tracker.tin` – collects and reports defensive block statistics.
- `dmgtracker/` – comprehensive damage tracking with variants for different guilds, dodge tracking, and data storage.
- `helpers/helpers.tin` – aggregates helper scripts for formatting, utility functions, player and crafting data, and satchel parsing.
- `map/` – mapping utilities (`map.tin`, `maphelper.tin`, `mapper.tin`, `mapterrain.tin`) for map management and terrain symbols.
- `mip/` – Mud Interface Protocol integration (`mip.tin`, `stats.tin`, `chatlog.tin`, `capture.tin`, `room.tin`).
- `professions/` – profession-specific automation for golem master, reforger, and transmuter roles.
- `worlddrops/worlddrops.tin` – notifies rare global item drops.

