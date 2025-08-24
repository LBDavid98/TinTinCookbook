# coordinates

TinTin++ uses multiple coordinate styles for screen positions, map locations, and ranges.

## Examples

- Row/column (y,x) for screen positions:

```tintin
#showme {HP: 100} {1,1}
```

- Map coordinates (x,y,z):

```tintin
#map jump 10 5 0
```

- Square region defined by two corners:

```tintin
#draw Blue box 1 1 3 20 {Hello world!}
```

- Pane sizes (top, bottom, left, right):

```tintin
#split 1 1 0 -80
```

- Range bounds (upper and lower):

```tintin
#buffer {get} {lines} {1} {10}
```

## Notes

- y,x notation starts at 1,1 in the upper-left.
- Negative values count from the bottom or right edges.
