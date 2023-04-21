<div align="center">

# Slack.nvim

A Neovim colorscheme ported from <a href="https://brand.slackhq.com/color">Slack Aubergine colorscheme</a>.

</div>

## Screenshots

<!-- |                                                                           |                                                                           |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| <img src="screenshots/screen1.png" alt="dark" style="border-radius:10%"/> | <img src="screenshots/screen2.png" alt="dark" style="border-radius:10%"/> |
| <img src="screenshots/screen3.png" alt="dark" style="border-radius:10%"/> | <img src="screenshots/screen4.png" alt="dark" style="border-radius:10%"/> | -->

## Installation

- Using `vim-plug`:

```vim
Plug 'rktjmp/lush.nvim'
Plug 'ntk148v/slack.nvim'
```

- Using `packer`:

```lua
use { "ntk148v/slack.nvim", requires={ "rktjmp/lush.nvim" } }
```

- Using `lazy.nvim`:

```lua
{ "ntk148v/slack.nvim", dependencies={ "rktjmp/lush.nvim" } }
```

## Usage

```vim
colorscheme slack.nvim
```

```lua
vim.cmd("colorscheme slack.nvim")
```

## Contribution

This colorscheme is always in development and testing. Users are welcome to use it however for programming daily. In case a user spots any bugs or error especially related to the supported plugins, treesitter or built-in LSP highlight support, then they can contribute by opening an issue or by making a pull request. More plugin highlight support is also welcome.

## Credits

This colorscheme is built with [lush.nvim](http://git.io/lush.nvim); for more information on Lush and a helper script to setup your repo clone.
