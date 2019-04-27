Chapter 1 Notes
===============

### Page 7

Translating the JS into pseudo-Haskell to make it more comprehensible:

     do response <- fetch "../out/main.wasm"
        bytes <- arrayBuffer response
        results <- WebAssembly.instantiate bytes
        return results.instance.exports.add_one(41)

### Page 10

Example:

    (if (i32.eq (call $getHeatlh) (i32.const 0))
      (then (call $doDeath))
      (else (call $stillAlive))
    )

Control flow instructions summary:

- `end`: Ends block, loop, if, or function.
- `block`
- `if`, `else`
- `loop`
- `br`, `br_if`: Branch to given label in a containing instruction or block.
- `br_table`: Jumps to function index in a table.
- `return`: Returns a value from the instruction.
- `nop`

Not clear whether "jumps to a function index" is a jump or a call.

### Page 11

> Think of it as though the code you're writing is restricted to using
> a single variable that is a byte array.

Bwahaha! Kids these days.

Communication between Wasm and JS appears to be via only a shared
memory byte array.

### Page 14-15

Trying to figure out how to put comments in the WAT (S-expr) files so
cjs can remember what the difference between add1 and add2 is. These
"WAT" files appear to be [folded instructions] of a more
standard-looking linear form. The [Text Format] section of that site
seems to give full details.

[Comments]:
- `;;`: Starts a comment to EOL.
- `(;` and `;)`: nesting block comments.



<!-------------------------------------------------------------------->
[folded syntax]: https://webassembly.github.io/spec/core/text/instructions.html#folded-instructions
[Text Format]: https://webassembly.github.io/spec/core/text/index.html
[comments]: https://webassembly.github.io/spec/core/text/lexical.html#comments
