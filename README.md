**This repository has been superseded by [vimspectr](https://github.com/nightsense/vimspectr).**

.

.

.

# nightshell

**Terminal theme setter** for the "nightsense theme family". Namely:

theme | screenshots
:----:|:----------:
[carbonized](https://github.com/nightsense/carbonized) | <img src="/img/screenshot-carbonized-dark.png" alt="screenshot of the carbonized-dark vim theme" width="72" /><img src="/img/screenshot-carbonized-light.png" alt="screenshot of the carbonized-light vim theme" width="72" />
[forgotten](https://github.com/nightsense/forgotten)   |<img src="/img/screenshot-forgotten-dark.png" alt="screenshot of the forgotten-dark vim theme" width="72" /><img src="/img/screenshot-forgotten-light.png" alt="screenshot of the forgotten-light vim theme" width="72" />
[nemo](https://github.com/nightsense/nemo)             |<img src="/img/screenshot-nemo-dark.png" alt="screenshot of the nemo-dark vim theme" width="72" /><img src="/img/screenshot-nemo-light.png" alt="screenshot of the nemo-light vim theme" width="72" />
[office](https://github.com/nightsense/office)         |<img src="/img/screenshot-office-dark.png" alt="screenshot of the office-dark vim theme" width="72" /><img src="/img/screenshot-office-light.png" alt="screenshot of the office-light vim theme" width="72" />
[plumber](https://github.com/nightsense/plumber)       |<img src="/img/screenshot-plumber-dark.png" alt="screenshot of the plumber-dark vim theme" width="72" /><img src="/img/screenshot-plumber-light.png" alt="screenshot of the plumber-light vim theme" width="72" />
[seagrey](https://github.com/nightsense/seagrey)       |<img src="/img/screenshot-seagrey-dark.png" alt="screenshot of the seagrey-dark vim theme" width="72" /><img src="/img/screenshot-seagrey-light.png" alt="screenshot of the seagrey-light vim theme" width="72" />
[simplifysimplify](https://github.com/nightsense/simplifysimplify)       |<img src="/img/screenshot-simplifysimplify-dark.png" alt="screenshot of the simplifysimplify-dark vim theme" width="72" /><img src="/img/screenshot-simplifysimplify-light.png" alt="screenshot of the simplifysimplify-light vim theme" width="72" />
[strawberry](https://github.com/nightsense/strawberry) |<img src="/img/screenshot-strawberry-dark.png" alt="screenshot of the strawberry-dark vim theme" width="72" /><img src="/img/screenshot-strawberry-light.png" alt="screenshot of the strawberry-light vim theme" width="72" />
[vrunchbang](https://github.com/nightsense/vrunchbang) |<img src="/img/screenshot-vrunchbang-dark.png" alt="screenshot of the vrunchbang-dark vim theme" width="72" /><img src="/img/screenshot-vrunchbang-light.png" alt="screenshot of the vrunchbang-light vim theme" width="72" />
[wonka](https://github.com/nightsense/wonka)           |<img src="/img/screenshot-wonka-dark.png" alt="screenshot of the wonka-dark vim theme" width="72" /><img src="/img/screenshot-wonka-light.png" alt="screenshot of the wonka-light vim theme" width="72" />

Each theme above comes in two variants, dark and light. nightshell, which is simply a collection of scripts (one per theme+variant), is the easiest way to activate one of these themes in the terminal. Instead of a theme configuration file, the theme is activated on startup by having one's shell configuration (e.g. `bashrc`) source the appropriate nightshell script.

nightshell is compatible with the **Linux console** and various **terminal emulators**, including gnome-terminal, roxterm, st, terminator, tilda, tilix, urxvt, xfce4-terminal, and xterm. Terminal **vim** and **neovim** are supported, as are **screen** and **tmux**.

> If colours aren't displaying properly, the issue is probably related to 256-colour support. Be sure your terminal (and multiplexer, if applicable) supports 256 colours and is properly configured.


## step 1 - installation

**Install nightshell** by cloning this repository to `~/.nightshell`:

```
git clone --depth 1 https://github.com/nightsense/nightshell ~/.nightshell
```

When updates are made to this repository, **upgrade nightshell** by navigating to `~/.nightshell` and running `git pull`.

With nightshell installed, you can **list available themes** by running `ls ~/.nightshell | grep -`.

## step 2 - shell configuration

This step configures the shell to load the terminal theme on startup.

> Note: this step isn't necessary for theming terminal vim.

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

## optional step - dircolors

`dircolors` is essentially a colourscheme for the `ls` command, defining which colours are used for distinguishing filetypes.  To use nightshell's custom version of `dircolors`:

### bash/zsh

Add the following to `~/.bashrc` or `~/.zshrc`:

```
eval `dircolors ~/.nightshell/dircolors`
```

### fish

Add the following to `~/.config/fish/config.fish`:

```
eval (dircolors -c ~/.nightshell/dircolors)
```

<br>

> ### nightshell dircolors logic
>
> - **directories** are **bold**, reflecting their "expanded" role as a "file that contains files"
>   - **normal directories** use the normal text colour
>   - **"sticky" directories** are **pink**, like sticky bubble gum
>   - **"other-writable" directories** are **orange**, as though warmed by the heat of writing activity
>   - directories that are **both** "sticky" and "other-writable" are **orange and underlined**: the orange is writing-warmth, while the underline is a "stick"
> - **links** are underlined, like hyperlinks on the internet
>   - this applies to both **multi-hardlinked files** and **symlinks**
>   - links use the normal text colour except for **orphan links** (symlinks that point to non-existent files), which are **red** (the colour of warning)
> - **device driver files** are **highlighted** with the normal text colour; since this colour is grey (or greyish), these highlighted blocks of texts resemble the grey, boxy form taken by many technological devices
> - **IPC files** are **blue-highlighted**, since they enable information to flow between processes like water
> - **setuid files** (u+s) are **purple-highlighted**: p**u**rple = **u**ser
> - **setgid files** (g+s) are **green-highlighted**: **g**reen = **g**roup
> - files that use **capabilities** are **red-highlighted**: red = red-blooded = capable
> - **executable files** are **green**, since green = "go ahead, proceed with action"
> - **archive files** are **purple**, since purple is the colour of famous dyes made from sea snails, which are happily packed into shells (until someone decides to make dye out of them)
> - **multimedia files** are **blue**, since blue conveys calm, enduring stability (like the sea and sky), just like the great works of art (images, music, video) we can rely on

## optional step - fish shell theme

The custom nightshell **fish** theme can be activated by adding the following to `~/.config/fish/config.fish`:

```
source ~/.nightshell/fish
```

## optional step - base16-shell integration

If you already use [Base16 Shell](https://github.com/chriskempson/base16-shell), you can make it aware of nightshell themes with the following command:

```
bash -c 'for f in ~/.nightshell/*-*; do
  ln -s $f $(echo $f.sh | sed "s#nightshell/#config/base16-shell/scripts/base16-nightshell-#")
done'
```

To undo the above command:

```
bash -c 'for f in $(find ~/.config/base16-shell/scripts -name "*nightshell*"); do rm $f; done'
```

## terminal vim

Once you've installed this repository (step 1), your nightsense-designed vim theme should work in terminal vim (provided the terminal application is compatible). The vim theme file will automatically run the appropriate script in `~/.nightshell/`.

If **different themes** are used in the terminal and vim, however, the vim theme will persist in the terminal after vim is closed. In order to **restore** a different nightshell terminal theme upon exiting vim, you can wrap the `vim` command in a shell function:

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
