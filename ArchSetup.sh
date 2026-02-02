set -e

cd ~

sudo -v

sudo sed -i '/#\[multilib\]/,/Include/s/^#//' /etc/pacman.conf
sudo pacman -Syu zsh steam cava base-devel git gnome-keyring hyprlock hypridle hyprpaper impala spotify-launcher swww swaync unzip nautilus vscode rofi fastfetch btop discord flatpak nwg-look otf-geist-mono-nerd --noconfirm
sudo pacman -S xdg-desktop-portal xdg-desktop-portal-gtk  xdg-desktop-portal-hyprland --noconfirm

git clone https://aur.archlinux.org/yay.git

cd yay
makepkg -si --noconfirm
cd ..

yay -S waybar-cava github-desktop --noconfirm

if [[ -n "$WAYLAND_DISPLAY" || -n "$DISPLAY" ]]; then
  github-desktop >/dev/null 2>&1 &
fi

mkdir -p ~/Documents
cd ~/Documents

git clone https://github.com/alfreditann/ArchSetup.git

cd ArchSetup/out_sourcing

mkdir -p ~/.config/hypr
cp hyprland.conf hyprlock.conf hypridle.conf ~/.config/hypr/

mkdir -p ~/.config/kitty
cp terminal/kitty.conf ~/.config/kitty/
~/Documents/ArchSetup/scripts/launch.sh
cd ~


sudo pacman -Suy --noconfirm\
  ttf-dejavu \
  ttf-liberation \
  noto-fonts \
  noto-fonts-emoji \
  ttf-opensans ttf-font-awesome

fc-cache -rv

 
swww-daemon >/dev/null 2>&1 &
swww img ~/Documents/ArchSetup/wallpaper/wallpaper4.png


