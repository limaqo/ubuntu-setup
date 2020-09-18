#! /bin/sh

gdm3Resource=/usr/share/gnome-shell/theme/Yaru/gnome-shell-theme.gresource

for resource in `gresource list "$gdm3Resource"`; do

    resource="${resource#\/org\/gnome\/shell\/}"
    # e.g. /org/gnome/shell/theme/toggle-off-hc.svg → theme/toggle-off-hc.svg

    resource="${resource%/*}"
    # e.g. theme/toggle-off-hc.svg →  theme

    if [ ! -d "${PWD}"/"${resource}" ]; then
        mkdir -p "${PWD}"/"${resource}"
    fi
done

for resource in `gresource list "$gdm3Resource"`; do
    gresource extract "$gdm3Resource" "$resource" > "${PWD}"/"${resource#\/org\/gnome\/shell\/}"
done
