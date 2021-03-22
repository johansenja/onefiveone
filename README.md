# OneFiveOne

OneFiveOne is an example of a simple command line app written in [Gloss](https://github.com/johansenja/gloss),
which parses given Roman numerals, and returns them in their decimal form. Read the accompanying article [here]!

## Trying it out

Git clone, then `cd` into the directory and run `bundle install` then `gloss build`, then `ruby
app.rb`.

#### Example:

```
[~/code/onefiveone]$ ruby app.rb
Enter a Roman numeral:
CLI
Answer: 151

Enter a Roman numeral:
^CThanks for using CLI!
```

-----

### Requirements:

- I can type in some roman numerals, and get a decimal response back
- I can do this as many times as I like

### Test cases:

#### It can correctly parse:

- CLI as 151
- III as 3
- MCMXIV as 1914
- LIP as error
- IIIII as 5 (Poor style but OK)
- IIX as 8 (Poor style but OK)
