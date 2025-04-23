# Ecdysis

This plugin pipes the contents of your active buffer into [dis.py](https://docs.python.org/3/library/dis.html). It prints the resulting CPython bytecode in a scratch buffer.

<img width="1000" alt="fizzbuzz" src="https://github.com/user-attachments/assets/b9270e9f-00af-445d-9425-4ece146ed73d" />

You will need Python 3.5 at least. Behaviour will differ based on the exact version used.

## Lazy.nvim
```lua
{
  "leslykinzel/ecdysis.nvim",
  config = function()
    -- calling the setup function creates disassembly command
    require("ecdysis").setup()
  end,
}
```

## Usage

Open a python file and run this:

```
:EcdysisDisassembleCurrentBuffer
```

If your python code contains egregious syntax errors, not only will the disassembly fail, but the stack trace will be printed in the background of the terminal window. This is only visible if you use a transparent background in Neovim.
