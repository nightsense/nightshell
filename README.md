# nightshell

**Terminal theme setter** for the "nightsense theme family". Namely:

- [carbonized](https://github.com/nightsense/carbonized)
- [forgotten](https://github.com/nightsense/forgotten)
- [office](https://github.com/nightsense/office)
- [plumber](https://github.com/nightsense/plumber)
- [seagrey](https://github.com/nightsense/seagrey)
- [strawberry](https://github.com/nightsense/strawberry)
- [vrunchbang](https://github.com/nightsense/vrunchbang)
- [wonka](https://github.com/nightsense/wonka)

nightshell is compatible with the **Linux console** and various **terminal emulators**, including gnome-terminal, roxterm, st, terminator, tilda, tilix, urxvt, xfce4-terminal, and xterm.

nightshell supports **terminal vim/neovim**.


## usage

### step 1 - installation

Install nightshell by cloning this repository to `~/.nightshell`:

```
git clone https://github.com/nightsense/nightshell ~/.nightshell
```

When updates are made to this repository, upgrade nightshell by navigating to `~/.nightshell` and running `git pull`.

> Or install by [downloading this repository manually](https://github.com/nightsense/nightshell/archive/master.zip) and unzipping the contents to directory `~/.nightshell`.

With nightshell installed, a list of available themes can be generated with `ls ~/.nightshell | grep -v README`.

### step 2 - shell configuration

#### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
[ -n "$PS1" ] && sh ~/.nightshell/THEME
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

> On [macOS](http://hayne.net/MacDev/Notes/unixFAQ.html#shellStartup), where `~/.bashrc` is not sourced automatically, you can add this line to `~/.bash_profile` instead.

#### fish

Add the following to `~/.config/fish/config.fish`...

```
if status --is-interactive; sh ~/.nightshell/THEME; end
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

### step 3 - terminal vim

Once you've installed this repository (step 1), your nightsense-designed vim theme should work in terminal vim (provided the terminal application is compatible).

If **different themes** are used in the terminal and vim, however, the vim theme will persist in the terminal after vim is closed. In order to restore the terminal theme upon exiting vim, you can wrap the `vim` command in a shell function:

#### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
vim(){ sh -c "vim $*"; sh ~/.nightshell/THEME; clear; }
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

#### fish

Add the following to `~/.config/fish/config.fish`...

```
function vim; sh -c "vim $argv"; sh ~/.nightshell/THEME; clear; end
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

## troubleshooting

- if colours are off in **neovim**, ensure your configuration does not contain `set termguicolors`
- if colours are off in **tmux**, try launching tmux with `tmux -2`
