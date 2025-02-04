# Ecdysis

_(noun)_ The process of shedding an outer layer.

This is a work in progress.

This plugin pipes the contents of your active buffer into [dis.py](https://docs.python.org/3/library/dis.html). It prints the resulting CPython bytecode in a scratch buffer.

<img width="1000" alt="fizzbuzz" src="https://github.com/user-attachments/assets/b9270e9f-00af-445d-9425-4ece146ed73d" />

## Lazy.nvim
```lua
{
  "leslykinzel/ecdysis.nvim",
  config = function()
    require("ecdysis").setup()
  end,
}
```
