# eri-lazyvim-starter

## Demo

[![Watch the video](https://img.youtube.com/vi/e-IAmBHclGE/hqdefault.jpg)](https://www.youtube.com/watch?v=e-IAmBHclGE)

## Requirements

- [NeoVim](https://neovim.io/) >= 0.9.0
- [Git](https://git-scm.com/) >= 2.19.0 (for partial clones support)
- [Nerd Font](https://www.nerdfonts.com/font-downloads) >= 3.0
- Telescope CMD: [Ripgrep](https://github.com/BurntSushi/ripgrep), [Fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)

## Install LazyVim with Starter

- Clone starter:
  ```
  git clone https://github.com/trgianghuynh1808/eri-lazyvim-starter.git
  ```
- Move `nvim` folder in the cloned repo to `~/.config/`
  ```
  mv eri-lazyvim-starter/nvim ~/.config
  ```
- Go to `nvim` config folder and then start nvim
  ```
  cd ~/.config/nvim && nvim
  ```

## Usage

- After installing all plugins, we can check `KeyMap` section below for more instructions or Press `space` key to open the menu system.

## KeyMap

- [Basic keymap](https://www.lazyvim.org/keymaps)
- Customize keymap:
  - Exit insert mode: `jk`
  - Replace multiple: `<leader>rn`
  - Switch tab: `<tab>`
  - Comment block code, use Visual mode: `gc` for likewise comment and `gb` for blockwise comment
  - Accept Github Copilot suggest: `<C-j>`
  - Execute DB Query specific line: `<leader-de>`
  - Open Lazygit: `<leader>gg`

## Plugins in Starter

- [Coding Plugins](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/coding.lua):
  - Replace multiple: [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)
  - Comment code: [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
  - Github copilot: [github/copilot.vim](https://github.com/github/copilot.vim)
  - Prevent spam Vim key: [craftzdog/cowboy](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/craftzdog/discipline.lua)
  - Multiple Visual: [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [Theme](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/colorscheme.lua)
  - Tokyo-night: [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [LSP server](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/lsp.lua)
  - Mason: [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [Treesister](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/treesitter.lua)
  - Nvim Treesitter: [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [UI Plugins](https://github.com/trgianghuynh1808/eri-lazyvim-starter/blob/master/nvim/lua/plugins/ui.lua)
  - Buffer Tab: [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
  - Dashboard UI: [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
    P/s: can use [patorjk](https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20) to generate ASCI Code and update logo
- DB Plugins:
  - DB Server: [vim-dadbod](https://github.com/tpope/vim-dadbod)
  - DB UI [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)
  - DB Completion [vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion)
- Git Plugin: [lazygit](https://github.com/kdheepak/lazygit.nvim)
- Hard Time (improve typing habit): [hardtime](https://github.com/m4xshen/hardtime.nvim)
- Smear Cursor (animiation for cursor): [smear-cursor](https://github.com/sphamba/smear-cursor.nvim)
- Toggle Relative Number: [sitiom/nvim-numbertoggle](https://github.com/sitiom/nvim-numbertoggle)

## References:

- LazyVim Dcoument: [https://www.lazyvim.org/](https://www.lazyvim.org/)
