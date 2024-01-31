# eri-lazyvim-starter

## Requirements
* [NeoVim](https://neovim.io/) >= 0.9.0
* [Git](https://git-scm.com/) >= 2.19.0 (for partial clones support)
* [Nerd Font](https://www.nerdfonts.com/font-downloads) >= 3.0
* Telescope CMD: [Ripgrep](https://github.com/BurntSushi/ripgrep), [Fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)

## Install LazyVim with `eri-lazyvim-starter`
* Clone starter:  
  ```
  git clone https://github.com/trgianghuynh1808/eri-lazyvim-starter.git
  ```
* Move `nvim` folder in the cloned repo  to `~/.config/`  
  ```
  mv eri-lazyvim-starter/nvim ~/.config
  ```
* Go to `nvim` config folder and then start nvim  
  ```
  cd ~/.config/nvim && nvim
  ```
## Usage
* After installing all plugins, we can check `KeyMap` section below for more instructions or Press `space` key to open the menu system.

## KeyMap
* [Basic keymap](https://www.lazyvim.org/keymaps)
* Customize keymap:
  * Replace multiple: `<leader>rn`
  * Switch tab: `<tab>`
  * Comment block code, use Visual mode: `gc` for likewise comment and `gb` for blockwise comment
    
## Plugins in Starter
* [Coding Plugins](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/coding.lua):
  * Replace multiple: [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)
  * Comment code: [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
  * Github copilot: [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
  * Prevent spam Vim key: [craftzdog/cowboy](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/craftzdog/discipline.lua)
* [Theme](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/colorscheme.lua)
  * Tokyo-night: [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
* [LSP server](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/lsp.lua)
  * Mason: [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
* [Treesister](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/treesitter.lua)
  * Nvim Treesitter: [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [UI Plugins](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/ui.lua)
  * Buffer Tab: [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
  * Dashboard UI: [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)  
    P/s: can use [patorjk](https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20) to generate ASCI Code and update logo
    
## References:
* LazyVim Dcoument: [https://www.lazyvim.org/](https://www.lazyvim.org/)


  
  
