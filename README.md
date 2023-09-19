# Neovim Config

To setup, run the following steps in terminal:

1. `git clone https://github.com/milesvant/nvim.config.git`
2. `mv nvim.config ~/.config/nvim`
3. `cd ~/.config/nvim`
4. `./setup.sh`
5. When nvim opens up, run `:PackerSync` twice.

To setup tokyonight elsewhere:

1. `git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git`
2. `cp -r Tokyo-Night-GTK-Theme/themes ~/.themes`
3. `sudo apt install gnome-tweaks`
4. `sudo apt install gnome-shell-extensions`
5. `sudo reboot`
6.  go to Applications -> Open 'Extensions' -> Turn on 'user-themes'
7.  run `gnome-tweaks` in terminal
8.  Go to the appearance tab and change eligible themes to tokyonight (dark-bl)
