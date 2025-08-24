# TinTin++ CookBook

## Your Mission

You are to help me collect solid syntax examples for as many use cases as possible to support a great experience playing my favorite text RPG. To that end we need to focus on mapping, automation of exploring and combat initiation. Maintaining constant xp and guild experience by staying in combat is a top priority when I play.  Data collection and analysis is also important to me. Ensuring a high quality user interface makes the game more enjoyable as well. 

## Your resources

Contained within this repository are all of the help files from TinTin++ and 3 advanced repositories. 3Stepper has some innovative features and is functional but someitmes buggy requiring re-initialization at times to restore functionality. Byron's repo is probably the most advanced and is maintained by a group of professional programmers. Byron plays a different game though and not all of the features he has are relavant to me and some of mine aren't present. For example he doesn't like automated mapping and exploring. Inix is a nice in the middle, its bloated with stuff I don't need (APIs) but is well regarded. 

Additionally I logged a run through all of the help files in game and put them in the helpfiles folder. 

## Background: TinTIn++ Programming Language

TinTin++'s scripting language most resembles PHP, but it also incorporates command structures similar to C and shell scripting. This combination makes it a flexible, integrated, and dynamic language for automating MUD (Multi-User Dungeon) tasks. However, the syntax is
not always consistent with PHP standards and reference to help files or syntax examples is recommended particularly when working with native TinTin++ elements like #map and how they handle #list elements. 
Core language influences
PHP: The syntax for TinTin++'s core scripting language is described as "PHP-like". This means it was designed for dynamic use and has a high signal-to-noise ratio, making simple tasks easy to script.
C and C-like languages: Its control flow statements, including if, else, switch, while, loop, foreach, continue, break, and return, use braces for nesting, allowing for a structured, C-like style of programming. The original TINTIN client was even written in C.
Unix shell scripting: TinTin++ can be used as a general-purpose tool to automate other console programs, including a Linux shell. Its features are very useful for shell scripting, and it can interact with the system shell directly and indirectly. 
Key syntactic features

'#' for commands: All TinTin++ scripting commands begin with a '#', which prevents them from being sent to the server. For example, #alias defines a command shortcut, and #help displays client-side help.

printf-like formatting: It uses a #format command that works similarly to C's sprintf to format strings and store them in variables.
Perl-compatible regular expressions (PCRE): The language's powerful text-matching capabilities for triggers, substitutions, and other functions are based on PCRE.

Dynamic and integrated: Unlike separate scripting languages that are bound to a client, TinTin++'s language is typeless and fully integrated into the MUD client. This makes it highly effective for dynamic programming, including creating and modifying triggers on the fly. 

## Our Process

You can find the outline of the cookbook in the COOKBOOK_PLAN.MD. If we complete an element together update the plan to reflect that.

For each entry in the help files we need to create a <command_name>.md file in sections. The file should introduce the command simply, then provide as many unique syntax examples as is needed to demonstrate the full use of the command. I recommend GREPing the entire project and then trying to filter down excluding patterns that have already been documented. 

Next we'll compile a comparative feature list across all three implementations and I'll direct comparative studies of how each implemented those systems. 

Finally, we'll explore design patterns and possible implementations.
