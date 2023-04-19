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
git clone git@github.com:yiwwhl/chaos.git ~/.dotfiles

rcup -v -x LICENSE -x README.md
```


## preview

```md
.
├── LICENSE
├── p10k.zsh
├── README.md
├── tmux.conf
└── zshrc
```
