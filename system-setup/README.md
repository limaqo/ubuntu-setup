# system-setup

### system update
`sudo apt update`
`sudo apt upgrade`

#### Ubuntu Software
open **Ubuntu Software**
update **snapd** and **Core 18**

##### Settings
"Displays" tab
    change desktop to match physical display setup
    set Primary Display
    adapt Refresh Rates

###### Grub
install **Grub Customizer** via **Ubuntu Software**
rename entries (via double click)
order entries as desired
save

###### Firefox
Preferences -> "General" tab -> "Startup" section
    Restore previous session (y)
    Always check if Firefox is your default browser (y)
Add-ons
    install uBlock Origin (Allow in private?)
visit www.startpage.com
    install Startpage add-on (Allow in private?)
    change Startpage.com to default search engine
visit startpage.com -> Settings
"Results Appearance" tab
    Open search result in a new window (n)

###### Text Editor aka gedit
Preferences -> "View" tab  
    - Display right margin at column (y): 120  
Preferences -> "Editor" tab  
    - Tab width: 4  
    - Insert spaces instead of tabs (y)  
    - Enable automatic indentation (n)  
sudo apt-get install gedit-plugins  
Preferences -> "Plugins" tab  
    - Draw Spaces (y)  
    
- Image Viewer
Preferences -> "Image View" tab -> "Image Enhancements" section
    Smooth images when zoomed out (n)
    Smooth images when zoomed in (n)
    
- Image Viewer
Preferences -> "Image View" tab -> "Image Enhancements" section
    Smooth images when zoomed out (n)
    Smooth images when zoomed in (n)
 
- VLC
open Ubuntu Software
there are 2 VLC versions:
    Source: ubuntu-focal-universe and snapcraft.io
visit https://www.videolan.org/vlc/download-ubuntu.html
    VideoLAN prefers snap
install VLC version from snapcraft.io
go to Settings (Ubuntu)
"Default Applications" tab
    choose VLC media player as default Video application



- GNOME Tweaks
install "GNOME Tweaks" via Ubuntu Software
visit https://extensions.gnome.org/
    install browser extension (GNOME Shell integration; Allow in private?)
search and install extensions
    Dash to Panel (by jderose9)
    Arc Menu (by LinxGem33)
    User Themes (by fmuellner)
go to Settings (Ubuntu)
"Appearance" tab
    Window colors: Dark
go to gedit preferences
"Font & Colors" tab
    temporarily choose Color Scheme different than "Tango", e.g. "Oblivion"
open Tweaks
"Appearance" tab -> Themes section
    Shell: Yaru-dark
"Top Bar" tab
    Weekday (y)
    Seconds (y)
    Week Numbers (y)
"Workspaces" tab
    Static Workspaces (y), Number of Workspaces: 1
    
- Dash to Panel
open settings via "Extensions" tab in "GNOME Tweaks"
"Position" tab
    Apply changes to all monitors (n)
    open settings of "Show Applications button"
        Animate Show Applications (n)
    all monitors:
        Show Applications button (n; button appears brighter when disabled)
    Monitor 2 & 3:
        Date menu (n)
        System menu (n)
    all monitors:
        Desktop button (n)
    Primary monitor:
        switch positions of "Date menu" and "System menu"
"Behavior" tab
    Show favorite applications on secondary panels (n)
    Isolate monitors (y)
    Ungroup applications (y)
    open settings of "Ungroup applications"
        Display running indicators on unfocused applications (n)
"Fine-Tune" tab
    Animate switching applications (n)
    Animate launching new windows (n)

- Arc Menu
open settings via "Extensions" tab in "GNOME Tweaks"
"General" tab
    Display Arc Menu on all monitors (y)
    Choose a Hotkey for Arc Menu: Left Super Key
"Button Appearance" tab
    Icon -> Browse Icons -> Distro Icons: Ubuntu Icon
    Icon Size: 38



- Terminal
Preferences -> Shortcuts
    "File" tab
        New Tab:      Ctrl+T
        New Window:   Disabled
        Close Tab:    Ctrl+W
        Close Window: Disabled
    "Tabs" tab
        Switch to Previous Tab: Ctrl+Left
        Switch to Next Tab:     Ctrl+Right
Preferences -> Profiles (Unnamed)
    "Colors" tab
        Use colors from system theme (n)
    
- Steam installer
install "Steam installer" via Ubuntu Software
run Steam and wait for installation

- Documents aka Nautilus
near Preferences -> "Toggle view" to switch from tiles to list view

- Hexchat
install Hexchat via Ubuntu Software
(Hexchat takes ~25s to start up?!
solution(?): https://askubuntu.com/questions/1184774/some-applications-on-ubuntu-19-10-very-slow-to-start)

- Meld
install "Meld" via Ubuntu Software

- QDirStat
sudo apt install qdirstat

- Materia theme (https://github.com/nana-4/materia-theme)
materia-gtk-theme

    
    
    
    
    
    
    
