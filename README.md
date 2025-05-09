# Ecdysis

This is a tool I made to explore the inner workings of the python interpreter.

### What does this do?

This plugin pipes the contents of your active buffer into [dis.py](https://docs.python.org/3/library/dis.html). It prints the resulting CPython bytecode in a scratch buffer.

<img width="1000" alt="fizzbuzz" src="https://github.com/user-attachments/assets/b9270e9f-00af-445d-9425-4ece146ed73d" />

Calling the built in `setup()` function creates the auto-command `:EcdysisDisassembleCurrentBuffer`.

You will need Python 3.5 at least. Behaviour will differ based on the exact version used.

### Lazy.nvim

```lua
{
  "leslykinzel/ecdysis.nvim",
  config = function()
    require("ecdysis").setup()
  end,
}
```

### Packer.nvim

```lua
use {
  'leslykinzel/ecdysis.nvim',
  config = function()
    require('ecdysis').setup()
  end
}
```

### Usage

Open a python file and run this:

```
:EcdysisDisassembleCurrentBuffer
```

If your python code contains egregious syntax errors (e.g. using undeclared functions), not only will the disassembly fail, but the stack trace will be printed in the background of the terminal window. This is only visible if you use a transparent background in Neovim.
