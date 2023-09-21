# Neovim Config

To setup, run the following steps in terminal:

1. `git clone https://github.com/kerrylu/nvim.git`
2. `mv nvim.config ~/.config/nvim`
3. `cd ~/.config/nvim`
4. `./setup.sh`
6. `nvim .`
7. When nvim opens up, run `:PackerSync` twice.

To setup tokyonight gnome-shell:

1. `sudo cp -r ~/.config/nvim/Tokyonight-Dark-BL /usr/share/themes`
2. `sudo apt install gnome-tweaks`
3. `sudo apt install gnome-shell-extensions`
4. `sudo reboot`
5.  go to Applications -> Open 'Extensions' -> Turn on 'user-themes'
6.  run `gnome-tweaks` in terminal
7.  Go to the appearance tab and change eligible themes to Tokyonight Dark-BL

To setup tokyonight gnome-terminal:

1. `dconf load /org/gnome/terminal/ < ~/.config/nvim/tokyonight-gnome-terminal.txt`
2. Go to Terminal -> 'Preferences' at the top of the desktop to change which tokyonight version the gnome-terminal uses
