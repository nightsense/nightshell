# nightshell

**Terminal theme setter** for nightsense-designed themes. Namely:

- [carbonized](https://github.com/nightsense/carbonized) (`carbonized-light` • `carbonized-dark`)
- [willy](https://github.com/nightsense/willy) (`willy-light` • `willy-dark`)

nightshell is compatible with various terminal applications, including gnome-terminal, roxterm, st, terminator, tilda, tilix, urxvt, xfce4-terminal, and xterm.


## usage

### step 1 - installation

Install nightshell by cloning this repository to `~/.nightshell`:

```
git clone https://github.com/nightsense/nightshell ~/.nightshell
```

When updates are made to this repository, you can upgrade nightshell by navigating to `~/.nightshell` and running `git pull`.

> Alternatively, you can install nightshell by [downloading this repository manually](https://github.com/nightsense/nightshell/archive/master.zip) and unzipping the contents to directory `~/.nightshell`.

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

Once you've installed this repository (step 1), your nightsense-designed vim theme will work properly in terminal vim (provided the terminal application is compatible).

However, if **different themes** are used in the terminal and vim, the vim theme will persist in the terminal after vim is closed. In order to restore the terminal theme upon exiting vim, you can wrap the `vim` command in a shell function.

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
