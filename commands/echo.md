# echo

The `#echo` command prints formatted text to the local screen without sending it to the MUD.

## Syntax
```tintin
#echo {format} {argument1} {argument2} {etc}
```

## Examples

- Display the current date:

```tintin
#echo {The current date is %t.} {%Y-%m-%d %H:%M:%S}
```

- Format two strings with padding:

```tintin
#echo {[%38s][%-38s]} {Hello World} {Hello World}
```

- Print on a specific row:

```tintin
#echo {{this is %s on the top row} {1}} {printed}
```

- Triggered echo from an event:

```tintin
#event {RECEIVED OUTPUT} {#echo <058>%+80h BLOCK}
```

## Notes

- Does not trigger actions.
- Split the format argument into two braces to set the row number.
