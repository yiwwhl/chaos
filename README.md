# Chaos

> Records of my computer configurations, powered by [rcm](https://github.com/thoughtbot/rcm)

## rcm commands

- mkrc -v

  use `mkrc -v [dot file path]` to quickly manage the dot file

- lsrc

  this command is used to list the currently managed dot files

- rcdn -v

  this command is used to unbind the soft connection of all your dot files

- rcup -v

  this command is used to apply the soft link of all dot files

## usage

```
git clone --depth 1 git@github.com:yiwwhl/chaos.git ~/.dotfiles

rcup -v
```

## preview

```md
.
├── gitconfig
├── LICENSE
├── p10k.zsh
├── rcrc
├── README.md
├── tag-lazyvim
│ └── config
│ └── nvim
│ ├── init.lua
│ ├── lazy-lock.json
│ ├── LICENSE
│ ├── lua
│ │ ├── config
│ │ │ ├── autocmds.lua
│ │ │ ├── keymaps.lua
│ │ │ ├── lazy.lua
│ │ │ └── options.lua
│ │ └── plugins
│ │ ├── editor.lua
│ │ ├── lsp.lua
│ │ ├── toggleterm.lua
│ │ └── ui.lua
│ ├── README.md
│ └── stylua.toml
├── tmux.conf
└── zshrc
```
