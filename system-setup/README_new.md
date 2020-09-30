# system-setup

y### generic system update
* open "Konsole" (`Ctrl`+`Alt`+`T`)
* `sudo apt update`
* `sudo apt upgrade`

y### Adjust Time for Dual Boot
set Kubuntu to maintain RTC in "Local time" instead of "Universal time":
* check output of `timedatectl`
* `timedatectl set-local-rtc 1 --adjust-system-clock`
* check output of `timedatectl`

y### System Settings
* "Hardware" section → "Driver Manager" tab
  * "Additional Drivers" tab → Using NVIDIA driver metapackage from nvidia-driver-<newest> (y)
    * Apply changes
    * reboot
    * `nvidia-smi`
* "Hardware" section → "Display and Monitor" tab
  * change desktop to match physical display setup
  * set Primary Display
  * adapt Refresh Rates
  
### Behavior
System Settings → "Workspace" section → "Window Management" tab → "Task Switcher" tab
  change "Breeze" to "Grid"

### System Settings
* __DO NOT__ change the global theme as this might change settings beyond the "Appearance" tab, e.g. the task switcher
  * if the global theme was changed, the default "Application Launcher" icon can be found at
    * /usr/share/plasma/desktoptheme/kubuntu/icons/start.svgz
* System Settings → "Appearance" section
  * "Application Style" tab → "Application Style" tab → Configure GNOME/GTK Application Style
    * GTK2 theme: Breeze-Dark
    * GTK3 theme: Breeze-Dark
  * "Colors" tab → Colors: Breeze Dark
  * "Icons" tab → Icons: "Breeze Dark"
* System Settings → "Workspace" section
  * "Workspace Behavior" tab → "General Behavior" tab
    * Animation speed: Instant
  * "Shortcuts" tab → "Global Shortcuts" tab → "KWin" tab
    * Maximize Window:                       Meta+Up   (Reassign); Global Alternate: Meta+Num+5
    * Minimize Window:                       Meta+Down (Reassign); Global Alternate: Meta+Num+0
    * Quick Tile Window to the Bottom:       ---
    * Quick Tile Window to the Bottom Left:  Meta+Num+1
    * Quick Tile Window to the Bottom Right: Meta+Num+3
    * Quick Tile Window to the Left:         Global Alternate: Meta+Num+4
    * Quick Tile Window to the Right:        Global Alternate: Meta+Num+6
    * Quick Tile Window to the Top:          ---
    * Quick Tile Window to the Top Left:     Meta+Num+7
    * Quick Tile Window to the Top Right:    Meta+Num+9

    
    
(overwrite alternate New Tab shortcut)
    
### Hotkeys
* System Settings → "Workspace" section → "Shortcuts" tab → "Global Shortcuts" tab → "Application Launchers" tab
  * "Spectacle" tab → Capture Rectangular Region: Meta+Shift+S



Plasma Style: Breeze Dark
    Air
    Breeze
  d Breeze Dark
    Breeze Light
  k Kubuntu
    Oxygen
Application Style: Breeze
 dk Breeze
    Fusion
    MX Windows 9x
    Oxygen
      GNOME/GTK Application Style: see screenshots
  Window Decorations: Breeze
 dk Breeze
    Plastik
Colors: Breeze Dark
  l Breeze
  k Breeze Dark
    Breeze High Contrast
    Breeze Light
    Oxygen
    Oxygen Cold
Fonts: ---
Icons: Breeze Dark
    Adwaita
  k Breeze
  d Breeze Dark
    Humanity
    Humanity-Dark
    LoginIcons
    Ubuntu-Mono-Dark
    Ubuntu-Mono-Light
  Emoticons: ---
Cursors: Breeze
 dk Breeze
    Breeze Light

Firefox GTK3
Gedit GTK3
GParted GTK3
GIMP GTK3
Thunderbird GTK3


  
y### Spectacle (Screenshot Utility)
* "Capture Mode" section
  * Area: Rectangular Region
* Configure → "General" tab 
  * Press screenshot key to, Return focus to Spectacle (y)
  * After taking a screenshot, Copy image to clipboard (y)
  * After taking a screenshot, Autosave the image to the default location (y)
  * General, Show magnifier (y)

y### Grub
* install "Grub Customizer" via "Discover"
* rename entries (via double click)
* order entries as desired
* save

y### Firefox
* Preferences → "General" tab → "Startup" section
  * Restore previous session (y)
  * Always check if Firefox is your default browser (y)
* about:config
  * smooth scrolling:
    * mousewheel.min_line_scroll_amount: 50
    * general.smoothScroll.mouseWheel.durationMaxMS: 500
    * general.smoothScroll.mouseWheel.durationMinMS: 300
  * tearing fix:
    * layers.acceleration.force-enabled: true
* Customize (right under Preferences)
  * Toolbars (at the bottom left of the screen) → Bookmarks Toolbar (y)
* Add-ons
  * install uBlock Origin (Allow in private?)
* visit www.startpage.com
  * install Startpage add-on (Allow in private?)
  * change Startpage.com to default search engine
* visit startpage.com → Settings
* "Results Appearance" section
  * Open search result in a new window (n)
* "Privacy and Safety" section
  * Only connect to servers that are: EU servers
  
y### Kate (Text Editor)
* if launching Kate from terminal gives error:
```
Hspell: can't open /usr/share/hspell/hebrew.wgz.sizes.
sonnet.plugins.hspell: HSpellDict::HSpellDict: Init failed
```
then 
`sudo apt install hspell`
* "Editor Component" → "Appearance" tab
  * Whitespaces: All
* "Editor Component" → "Editing" → "General" tab
  * Show static word wrap marker (y)
  * Wrap words at: 120

y### Dolphin (File Explorer)
Hotkeys:
Ctrl+L: toggle location bar
F4: toggle terminal
Ctrl+H: toggle hidden files
* Configure Keyboard Shortcuts
  * Create Folder: Ctrl+Shift+N (overwrite alternate New Tab shortcut)
  * Activate Next Tab: Ctrl+Right
  * Activate Previous Tab: Ctrl+Left
* Show Previews (n)
* top left of window → Details view mode (y)
* bottom center of window (Slider) → Size: 22 pixels
* Configure Dolphin → "Behavior" tab → Show selection marker (n)

y### Konsole (Terminal)
* Settings → Configure Keyboard Shortcuts
  * New Tab:       Ctrl+T
  * Close Session: Ctrl+W
  * Previous Tab:  Ctrl+Left
  * Next Tab:      Ctrl+Right
* Settings → Configure Konsole → "Tab Bar" tab
  * Position: Above terminal area
* `kate ~/.inputrc` (probably empty document)
  * add 1st line: `"\e[A":history-search-backward`
  * add 2nd line: `"\e[B":history-search-forward`
* restart console to activate changes
* what colors are what: `find . -maxdepth 1 -exec stat --printf='%F\t%n\n' '{}' \; | sort`

y### Panels (aka Taskbar)
* right click on panel (aka taskbar) → Edit Panel (this is a "(Kubuntu) Default Panel")
  * Application Launcher
  * Pager → Remove
  * Task Manager
  * System Tray
  * Digital Clock
  * Show Desktop → Remove
* add panels to secondary screens (aka monitors):
  * right on desktop → Add Panel → Empty Panel
  * right click on new empty panel → Edit Panel
    * Screen Edge (drag and drop to target screen)
    * Add Widgets → Task Manager (double click to confirm)
* right click close to the Task Manager widgets → Configure Task Manager
  * "Behavior" tab:
    * Show only tasks from the current screen
    * this has to be repeated for every screen
* Configure (Digital Clock)
  * "Appearance" tab:
    * Show date (y)
    * Show seconds (y)
    * Date format: Custom "dd.MM.yyyy"
  * "Calendar" tab
    * Show week numbers (y)

y### Steam installer
* install "Steam installer" via Ubuntu Software
* run Steam and wait for installation
* Settings → "In-Game" tab
  * In-game FPS counter: Top-right
* Settings → "Steam Play" tab
  * Enable Steam Play for all other titles (y)
  * Run other titles with: Proton 5.0-9 ("Steam Linux Runtime - Soldier" did not work back then)
* Divinity Original Sin 2
  * https://www.reddit.com/r/DivinityOriginalSin/comments/alrg6u/divinity_original_sin_2_de_on_linux_with/
    * Browse local files
    * right click in Dolphin crashes
    * F4 opens terminal
    * `mv bin bin~`
    * `ln -s DefEd/bin bin`
    * `cd bin`
    * `mv SupportTool.exe SupportTool.exe~`
    * `ln -s EoCApp.exe SupportTool.exe`
  * launch the game
  
* Saves have no Screenshot
* Microsoft .NET framework is always tried to be installed at startup
* cast cursor lags behind when quick mouse movements

### Meld
* install "Meld" via Ubuntu Software

### QDirStat
* sudo apt install qdirstat

### Timeshift
* source code with README.md: https://github.com/teejee2008/timeshift
* install Timeshift via Ubuntu Software
* open Timeshift and complete the setup:
  * RSYNC → partition → snapshot levels → home folders(?)
* create a snapshot

* 139,7 available -> xxx ?

### KolourPaint
install KolourPaint from Discover





