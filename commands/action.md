# action / act

The `#action` command (abbreviated `#act`) creates triggers that execute TinTin++ commands when incoming text matches a pattern. Patterns use Perl-compatible regular expressions, so see the `regex` and `pcre` sections for full syntax support.

## Syntax
```
#action {pattern} {commands} {priority}
```

## Examples

- Auto-reply to tells:

```tintin
#action {%1 tells you '%2'} {tell %1 I'm afk.}
```

- Conditional response based on captured numbers:

```tintin
#action {%0 gives you %1 gold coins.} {#if {%1 > 5000} {thank %0}}
```

- Logging chat messages into a list:

```tintin
#action {%1 chats %2} {#list chats add {%0}}
```

- PCRE pattern with numerical capture:

```tintin
#act {%* says 'Who is number {[1-9][0-9]{0,2}}?} {say $number[%2] is number %2}
```

- Trigger that rings a bell when someone tells you:

```tintin
#action {Bubba tells you} {#bell}
```

- One-shot trigger using `#line`:

```tintin
#line oneshot {#action {^You receive %0 experience} {updatexp %0}}
```

## Notes

- Use `#line oneshot` or `#line multishot` to control trigger lifetime.
- Patterns are evaluated using PCRE, allowing groups, alternations, and anchors.
- The optional `priority` argument sets trigger evaluation order.
- Combine with `#regex` or `#pcre` for complex matching.
