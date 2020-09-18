# yaru-setup

## old

### info
* `update-alternatives --config gdm3-theme.gresource`
  * output: `/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource`

### extract
* `cd ~/ws/ubuntu-setup/yaru-setup`
* `./extract.sh`
* → edit theme/gdm3.css

### pack
* `sudo apt install libglib2.0-dev`
* `./pack.sh`
* → theme/gdm3.gresource

### install
* `cd /usr/share/gnome-shell/theme/Yaru`
* `sudo mv gnome-shell-theme.gresource gnome-shell-theme.gresource~`
* `sudo mv ~/ws/ubuntu-setup/yaru-setup/theme/gdm3.gresource gnome-shell-theme.gresource`
* `sudo service gdm restart`

## new

### ff

* Use Git to edit the Yaru theme for your Ubuntu linux desktop (https://www.youtube.com/watch?v=KZPKJX0eKkY)
* https://github.com/ubuntu/yaru/blob/master/CONTRIBUTING.md
  * `sudo apt install libgtk-3-dev git meson sassc`

* cd ~
* mkdir ws
* cd ws
* git clone https://github.com/limaqo/yaru.git
* cd yaru
* git checkout -b limaqo_edit

* change "Purples" and "Oranges"
  * gedit gtk/src/default/gtk-3.20/_palette.scss
  * gedit gnome-shell/src/gnome-shell-sass/_palette.scss
* change meson options: "gnome-shell-gresource" (true)
  * gedit meson_options.txt
* initialize build system (only required once)
  * meson build
* build
  * cd build
  * ninja

* `/usr/share/themes/Yaru-dark/gtk-3.0/gtk.gresource   // <- ~/ws/yaru/build/gtk/src/Yaru-dark-gtk-3.0.gresource`
* `/usr/share/themes/Yaru-dark/gtk-3.0/gtk.gresource~  // org`
* `/usr/share/themes/Yaru-dark/gtk-3.20/gtk.gresource  // <- ~/ws/yaru/build/gtk/src/Yaru-dark-gtk-3.20.gresource`
* `/usr/share/themes/Yaru-dark/gtk-3.20/gtk.gresource~ // org`
* `/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource  // <- ~/ws/yaru/build/gnome-shell/src/gnome-shell-theme.gresource`
* `/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource~ // org`
* `(/usr/share/Yaru/gnome-shell/* // maybe alternative?)`
