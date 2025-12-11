# 📗 Last Font
**Last Font** saves the name of the last (successful) `vim.opts.guifont` change
to your filesystem and allows you to recall it whenever you desire. As such,
you can automatically set your font between sessions based on what you last
used!

## Why?
I'm *extremely* indecisive when choosing my fonts.

## Installation
Ye olde plugin manager.
```lua
-- packer
use({ 'malikbenkirane/last-font.nvim' })
```

or
```lua
-- lazy
return { 'malikbenkirane/last-font.nvim' }

## Configuration
None. It'll call `setup` itself when loaded.

## Usage
Dead simple. I use the snippet below in my `init.lua` to automatically use the last theme. There's also an Ex command; `:LastFont`.
```lua
-- default theme as a backup, `recall()` can return `nil`.
local theme = require('last-font').recall() or 'default'
vim.opts.guifont=(font)
```
## Issues
Please open an issue for any problems you encounter, or suggestions for improving the code quality. This is my first plugin, so I'm still learning and looking to improve 😁

## 🙏 Acknowledgment

This plugin was heavily inspired by — and adapted from — **[raddari/last-color.nvim](https://github.com/raddari/last-color.nvim)** by **[raddari](https://github.com/raddari)**.

The original design and structure were preserved, with adjustments made to repurpose it for **font selection and management** rather than colorschemes.

Autocommand triggers and certain internal logic were also modified to better fit this use case.

Many thanks to the original author for the excellent foundation.  
If you find this plugin useful, please consider supporting their work as well.

**Original Project:** [github.com/raddari/last-color.nvim](https://github.com/raddari/last-color.nvim)
