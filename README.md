# nightshell

Scripts for setting the **terminal theme** to any of the following:

- [carbonized](https://github.com/nightsense/carbonized) (`carbonized-light` • `carbonized-dark`)

nightshell can be used with various terminal applications, including **GNOME Terminal**, **urxvt**, and **xterm**.

If vim is configured to use the same theme, **terminal vim** will display the colours properly.

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
if status --is-interactive
  sh ~/.nightshell/THEME
end
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

### step 3 - vim configuration

To use a nightsense theme in **terminal vim**, add the following to `~/.vimrc`...

```
colorscheme THEME
let base16colorspace=256
```

...replacing `THEME` with the desired colourscheme (e.g. `colorscheme carbonized-light`).
