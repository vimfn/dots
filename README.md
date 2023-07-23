## Setup ✨

![1674598678](https://user-images.githubusercontent.com/102473837/214434433-667b570e-19bc-477b-9ce5-31c0f8dfc232.png)



## Install steps 📎

<div align="left">

<h3>Hyprland Stuff</h3>

- Installation using paru (replace with ``yay`` if you prefer that)

```sh
## Hyprland Stuff
paru -S hyprland-git hyprpicker-git waybar-hyprland-git \
dunst nwg-look wf-recorder wlogout wlsunset
```

<h3>Dependencies</h3>

- Installation using paru

```sh
## Dependencies
paru -S colord ffmpegthumbnailer gnome-keyring grimblast-git gtk-engine-murrine \
imagemagick kvantum pamixer playerctl polkit-kde-agent qt5-quickcontrols        \
qt5-quickcontrols2 qt5-wayland qt6-wayland swaybg ttf-font-awesome tumbler     \
ttf-jetbrains-mono ttf-icomoon-feather xdg-desktop-portal-hyprland-git xdotool  \
xwaylandvideobridge-cursor-mode-2-git cliphist qt5-imageformats qt5ct
```

<h3>Apps & More</h3>

```sh
## CLI & Tools
paru -S btop cava neofetch noise-suppression-for-voice   \
rofi-lbonn-wayland-git rofi-emoji starship zsh viewnior ocs-url
```

```sh
## Browser & File Explorer
paru -S brave-bin file-roller noto-fonts noto-fonts-cjk  \
noto-fonts-emoji thunar thunar-archive-plugin
```

```sh
# VSCode
paru -S code code-features code-marketplace
```

```sh
# Theme Based
paru -S catppuccin-gtk-theme-macchiato catppuccin-gtk-theme-mocha papirus-icon-theme sddm-git swaylock-effects-git kvantum kvantum-theme-catppuccin-git
```

```sh
# Pipewire & OBS
paru -S obs-studio-rc ffmpeg-obs cef-minimal-obs-rc-bin   \
pipewire pipewire-alsa pipewire-audio pipewire-pulse      \
pipewire-jack wireplumber gst-plugin-pipewire pavucontrol
```


</div>

<div align="left">

<h3>DOTFILES</h3>

```sh
git clone https://github.com/arnvgh/dotfiles $HOME/Downloads/hyprland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/
```
</div> 

## Credits

- Linuxmobile's Hyprland [dotfiles](https://github.com/linuxmobile/hyprland-dots/) (As a base config)
- [r/unixporn](https://www.reddit.com/r/unixporn) (Inspirations)
