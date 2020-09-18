# yaru-setup

* `update-alternatives --config gdm3-theme.gresource`
  * output: `/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource`

cd ~/Documents
mkdir gdm3Edit
cd gdm3Edit

chmod +x extract.sh
./extract.sh
--> "theme" folder

edit gdm3.css

chmod +x compile.sh
sudo apt install libglib2.0-dev
./compile
cd /usr/share/gnome-shell/theme/Yaru
sudo mv gnome-shell-theme.gresource gnome-shell-theme.gresource~
sudo mv ~/Documents/gdm3Edit/theme/gdm3.gresource gnome-shell-theme.gresource
sudo systemctl restart gdm
