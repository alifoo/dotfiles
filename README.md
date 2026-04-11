3. Use GNU Stow to symlink your configs:

First, ensure you have stow installed. On macOS:
```sh
brew install stow
```
On Ubuntu/Linux:
```sh
sudo apt-get install stow
```

Navigate to your dotfiles directory:
```sh
cd ~/dotfiles
```

Then, stow each application you want to manage:
```sh
stow nvim
stow i3
stow i3status
stow polybar
stow alacritty
stow aerospace
stow tmux
```

This assumes your directory structure is organized with one folder per package, matching their eventual location under $HOME. For example:

```plaintext
~/dotfiles/
  nvim/.config/nvim/
  i3/.config/i3/
  i3status/.config/i3status/
  polybar/.config/polybar/
  alacritty/.config/alacritty/
  aerospace/.config/aerospace/
  tmux/.tmux.conf
```

Each subdirectory (e.g., `nvim`) mimics the structure of the files as they should appear in your home directory. To symlink a config, just run, for example:

```sh
stow nvim
```

That’s it! Your configuration files will be properly symlinked using Stow.
