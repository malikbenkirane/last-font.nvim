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
-- default font as a backup, `recall()` can return `nil`,
-- for example: 'JetBrain Mono:h12' as backup:
local font = require('last-font').recall() or 'JetBrains Mono:h12'
vim.opts.guifont=(font)
```

Use `:set guifont=*` to list all available fonts.
And, in case you want to dig deeper, see `:h 'guifont`.

The complete configuration with [Lazy.nvim](https://github.com/folke/lazy.nvim) would be:
```lua
return {
  'malikbenkirane/last-font.nvim',
  config = function () 
    -- change 'JetBrains Mono:h14' with your backup font of preference
    -- you can use `:set guifont=*` to list available fonts
    local font = require('last-font').recall() or 'JetBrains Mono:h14'
    vim.opt.guifont = font
  end
}
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
