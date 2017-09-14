# nightshell

**Terminal theme setter** for the nightsense-designed themes. Namely:

- [carbonized](https://github.com/nightsense/carbonized) (`carbonized-light` • `carbonized-dark`)

nightshell is compatible with various terminal applications, including gnome-terminal, roxterm, st, terminator, tilda, tilix, urxvt, xfce4-terminal, and xterm.


## usage

### step 1 - installation

Install nightshell by cloning this repository to `~/.nightshell`:

```
git clone https://github.com/nightsense/nightshell ~/.nightshell
```

(Or if you prefer, [download the repository manually](https://github.com/nightsense/nightshell/archive/master.zip) and unzip the contents to directory `~/.nightshell`.)

Once installed, you can view a list of available themes by running `ls ~/.nightshell | grep -v README`.

### step 2 - shell configuration

#### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
[ -n "$PS1" ] && sh ~/.nightshell/THEME
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

> On macOS, where `~/.bashrc` is not sourced automatically, you can add this line to `~/.bash_profile` instead.

#### fish

Add the following to `~/.config/fish/config.fish`...

```
if status --is-interactive; sh ~/.nightshell/THEME; end
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

### step 3 - terminal vim

Once you've installed this repository (step 1), your nightsense-designed theme will work properly in terminal vim (provided the terminal application is compatible).

However, if **different themes** are used in the terminal and vim, the vim theme will persist in the terminal after vim is closed. In order to restore the terminal theme upon exiting vim, you can add a shell function that restores the terminal theme upon vim exit.

#### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
vim(){ sh -c "vim $*" && sh ~/.nightshell/carbonized-light && clear; }
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

#### fish

Add the following to `~/.config/fish/config.fish`...

```
function vim; sh -c "vim $argv"; sh ~/.nightshell/THEME; clear; end
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).
