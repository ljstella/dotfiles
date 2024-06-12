# Init

## Contents

* Starship.toml - config for [Starship](https://starship.rs), stored in `~/.config/`
* .wezterm.lua - config for [Wezterm](https://wezfurlong.org/wezterm/index.html), stored in `~`
* check-git-remote - bash script for determining where a git repo is hosted. starship.toml expects it to be in path (mine's in `~/.local/bin/`)

## Notes
Several things here rely on a [Nerd Font](https://www.nerdfonts.com/). I'm using a [hand-patched](https://tech.serhatteker.com/post/2023-04/patch-berkeley-mono-font-with-nerd-fonts/) version of [Berkeley Mono](https://berkeleygraphics.com/typefaces/berkeley-mono/), but you can use any you want. Just ensure you update the font in the `.wezterm.lua` config.

## Screenshot
![Screenshot of my `starship explain` output](/Screenshot.png)
