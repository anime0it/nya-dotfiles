#/bin/bash
#update/install
sudo pacman -Syu unzip xorg bspwm sxhkd picom polybar alacritty rofi nitrogen ly zsh zsh-completions lxappearance noto-fonts ttf-jetbrains-mono ttf-font-awesome 
unzip themes.zip
#install rofi themes
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
# add to launcher file theme='style-3'
cd ../
#copy
mkdir ~/.config
sudo cp -r themes/Cloudy-Grey-Dark /usr/share/themes
sudo cp -r themes/Bibata-Modern-Ice /usr/share/icons
cp -r conf/bspwm ~/.config
cp -r conf/alacritty ~/.config
cp -r conf/sxhkd ~/.config
cp -r conf/picom ~/.config
cp -r conf/polybar ~/.config
cp -r conf/rofi ~/.config

#remove temp file
rm -r conf/bspwm 
rm -r conf/alacritty 
rm -r conf/sxhkd 
rm -r conf/picom 
rm -r conf/polybar 
rm -r conf/rofi

#yay
git clone https://aur.archlinux.org/yay.git 
cd yay 
makepkg -si
cd ../
rm -r yay
#apply service and shell
systemctl enable ly
chsh -s /usr/bin/zsh


