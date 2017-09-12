# nightshell

**nightshell** is a collection of scripts for setting the shell colourscheme to any nightsense-designed theme, namely:

- [carbonized](https://github.com/nightsense/carbonized) (`carbonized-light` • `carbonized-dark`)

## usage

### step 1 - installation

Install nightshell by cloning this repository:

```
git clone https://github.com/nightsense/nightshell ~/.nightshell
```

(Or you could always [download the repository](https://github.com/nightsense/nightshell/archive/master.zip) manually and unzip the contents to directory `~/.nightshell`.)

Once installed, you can view a list of available themes by running `ls ~/.nightshell/themes`.

### step 2 - shell configuration

#### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
sh ~/.nightshell/THEME
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

> On macOS, you can add this line to `~/.bash_profile`.

#### fish

Add the following to `~/.config/fish/config.fish`...

```
sh ~/.nightshell/themes/THEME
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/themes/carbonized-light`).

### step 3 - vim configuration

To use a nightsense theme in **terminal vim**, add the following to `~/.vimrc`:

```
colorscheme THEME
let base16colorspace=256
```

...replacing `THEME` with the desired colourscheme (e.g. `colorscheme carbonized-light`).
