# nightshell

**Terminal theme setter** for the "nightsense theme family". Namely:

- [carbonized](https://github.com/nightsense/carbonized)
- [forgotten](https://github.com/nightsense/forgotten)
- [nemo](https://github.com/nightsense/nemo)
- [office](https://github.com/nightsense/office)
- [plumber](https://github.com/nightsense/plumber)
- [seagrey](https://github.com/nightsense/seagrey)
- [strawberry](https://github.com/nightsense/strawberry)
- [vrunchbang](https://github.com/nightsense/vrunchbang)
- [wonka](https://github.com/nightsense/wonka)

nightshell is compatible with the **Linux console** and various **terminal emulators**, including gnome-terminal, roxterm, st, terminator, tilda, tilix, urxvt, xfce4-terminal, and xterm. Terminal **vim** and **neovim** are supported, and everything should work in **screen** and **tmux**.

> If colours aren't displaying properly, the issue is probably related to 256-colour support. Be sure your terminal (and multiplexer, if applicable) supports 256 colours and is properly configured.


## step 1 - installation

**Install nightshell** by cloning this repository to `~/.nightshell`:

```
git clone https://github.com/nightsense/nightshell ~/.nightshell
```

> Or [download this repository manually](https://github.com/nightsense/nightshell/archive/master.zip) and unzipping the contents to directory `~/.nightshell`.

When updates are made to this repository, **upgrade nightshell** by navigating to `~/.nightshell` and running `git pull`.

With nightshell installed, you can **list available themes** by running `ls ~/.nightshell | grep -v README`.

## step 2 - shell configuration

Note: complete this step only if you want to use a theme for general terminal operation. (If you just want the theme for terminal vim, this step isn't necessary; skip to step 3.)

### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
[ -n "$PS1" ] && sh ~/.nightshell/THEME
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

> On [macOS](http://hayne.net/MacDev/Notes/unixFAQ.html#shellStartup), where `~/.bashrc` is not sourced automatically, you can add this line to `~/.bash_profile` instead.

### fish

Add the following to `~/.config/fish/config.fish`...

```
if status --is-interactive; sh ~/.nightshell/THEME; end
```

...replacing `THEME` with the desired colourscheme (e.g. `sh ~/.nightshell/carbonized-light`).

## step 3 - terminal vim

Once you've installed this repository (step 1), your nightsense-designed vim theme should work in terminal vim (provided the terminal application is compatible). (The vim theme file will automatically run the appropriate script in `~/.nightshell/`.)

If **different themes** are used in the terminal and vim, however, the vim theme will persist in the terminal after vim is closed. In order to restore the terminal theme upon exiting vim, you can wrap the `vim` command in a shell function:

### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`...

```
vim(){ sh -c "vim $*"; sh ~/.nightshell/THEME; clear; }
```

...replacing `THEME` with the colourscheme (e.g. `sh ~/.nightshell/carbonized-light`) to restore upon exiting vim.

### fish

Add the following to `~/.config/fish/config.fish`...

```
function vim; sh -c "vim $argv"; sh ~/.nightshell/THEME; clear; end
```

...replacing `THEME` with the colourscheme (e.g. `sh ~/.nightshell/carbonized-light`) to restore upon exiting vim.

## troubleshooting

If colours aren't displaying correctly...

- ...in **neovim**, ensure your configuration does not contain `set termguicolors`
- ...in **tmux**, try launching tmux with `tmux -2`
