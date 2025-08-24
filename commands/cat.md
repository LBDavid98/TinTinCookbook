# cat

The `#cat` command concatenates an argument to the end of a variable.

## Syntax
```tintin
#cat {variable} {argument}
```

## Examples

- Append text to a variable:

```tintin
#variable {greeting} {Hello}
#cat {greeting} {, world!}
#show $greeting
```

- Merge two tables:

```tintin
#variable {bli} {{a}{1}{b}{2}}
#variable {blo} {{c}{3}{d}{4}}
#cat {blo} {$bli}
```

## Notes

- Works with strings, lists, and tables.
