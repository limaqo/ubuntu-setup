#! /bin/sh

gdm3Resource=/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource

echo '<?xml version="1.0" encoding="UTF-8"?>
<gresources>
    <gresource prefix="/org/gnome/shell/theme">' > "${PWD}"/theme/gdm3.xml
for file in `gresource list "$gdm3Resource"`; do
    echo "        <file>${file#\/org\/gnome/shell\/theme\/}</file>" >> "${PWD}"/theme/gdm3.xml
done
    # commented out in case user wants to have background image
    #echo "        <file>$imgFile</file>" >> "${PWD}"/theme/gdm3.xml
echo '    </gresource>
</gresources>' >> "${PWD}"/theme/gdm3.xml

glib-compile-resources --sourcedir="${PWD}"/theme "${PWD}"/theme/gdm3.xml
# → gdm3.gresource
