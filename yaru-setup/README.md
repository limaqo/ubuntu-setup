# yaru-setup

* `update-alternatives --config gdm3-theme.gresource`
  * output: `/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource`

* `cd ~/ws/ubuntu-setup/yaru-setup`
* `./extract.sh`
* → edit theme/gdm3.css

* `sudo apt install libglib2.0-dev`
* `./pack.sh`
* → theme/gdm3.gresource

* `cd /usr/share/gnome-shell/theme/Yaru`
* `sudo mv gnome-shell-theme.gresource gnome-shell-theme.gresource~`
* `sudo mv ~/ws/ubuntu-setup/yaru-setup/theme/gdm3.gresource gnome-shell-theme.gresource`
* `sudo service gdm restart`
