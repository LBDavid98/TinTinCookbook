# TinTin++ Cookbook Implementation Plan

## Objective
Develop a comprehensive reference so an AI agent can script TinTin++ to automate exploring, questing, combat, and data workflows in a latency-prone text RPG with rich chat and crafting systems.

## Plan Overview
1. **Catalog native commands**: For each topic listed in the help files create `<command>.md` with a brief intro and multiple syntax examples. Use `rg` to collect examples from `help_files` and the `3stepper`, `byron`, and `inix` repositories, filtering duplicates. Start with the `#action` / `#act` trigger command.
2. **Mapping**: Document best practices for `#map`, pathfinding, and speedwalking while handling variable latency and random events.
3. **MIP interface**: Explain how to capture and parse server-sent data that bypasses the main display using the MUD Interface Protocol.
4. **Exploration**: Cover automated movement, random event handling, and recovery from failed moves.
5. **Combat and quest automation**: Cover triggers, loops, and state tracking to keep characters in continuous combat and manage quests or guild experience.
6. **Data collection and analysis**: Show how to log data, run scripts, and execute SQL queries for telemetry and decision making.
7. **User interface enhancements**: Describe methods for layout, chat windows, prompts, color usage, and accessibility features.
8. **Comparative study**: Summarize advanced features from `3stepper`, `byron`, and `inix`, noting where their approaches diverge or complement each other.
9. **Iteration**: As documentation sections are completed, update this plan to track progress and outstanding work.

## Help File Punchlist
- action (documented)

- cat
- coordinates
- echo
- foreach
- history
- line
- mapping
- nop
- regexp
- script
- ssl
- textin
- alias
- characters
- cr
- edit
- format
- if
- list
- math
- parse
- repeat
- send
- statements
- ticker
- all
- chat
- cursor
- editing
- function
- ignore
- lists
- mathematics
- path
- replace
- session
- substitute
- time
- bell
- class
- daemon
- else
- gag
- index
- local
- message
- pathdir
- return
- sessionname
- substitutions
- triggers
- break
- colors
- debug
- elseif
- greeting
- info
- log
- metric_system
- pcre
- run
- showme
- suspend
- variable
- buffer
- commands
- default
- end
- grep
- introduction
- loop
- mouse
- port
- scan
- snoop
- switch
- while
- button
- config
- delay
- escape_codes
- help
- keypad
- macro
- msdp
- prompt
- screen
- speedwalk
- system
- write
- case
- continue
- draw
- event
- highlight
- kill
- map
- mslp
- read
- screen_reader
- split
- tab
- zap
