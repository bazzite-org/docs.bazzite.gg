---
title: Steam Gaming Mode Quirks and Workarounds
authors:
  - "@nicknamenamenick"
  - "@HikariKnight"
  - "@AkazaRenn"
  - "@snipem"
tags:
  -  Troubleshooting
---

# Common Issues and Workarounds for Steam Gaming Mode

## How do I use my microSD card that I used on my Steam Deck running SteamOS?

Open a host terminal and enter this **command**:

```command
ujust switch-to-ext4
```

## How do I specify the correct monitor for Gaming Mode to use? (HTPC only)

In Desktop Mode, open a host terminal and run this **command**:

```command
mkdir ~/.config/environment.d
nano ~/.config/environment.d/10-gamescope-session.conf
```

Then add this to the file:

`OUTPUT_CONNECTOR=DP-1`
Change `DP-1` to the correct output.
You can find your display outputs on **KDE Plasma** using the command

```
kscreen-doctor -o
```

You can find your display outputs in **GNOME** using this command

```
gnome-randr
```

Save with <kbd>CTRL</kbd> + <kbd>X</kbd> then pressing <kbd>Y</kbd> followed by <kbd>ENTER</kbd>

## Audio output not working (Default Device)

This issue happens usually with HDMI TV audio.  Go into Desktop Mode and into the system settings to adjust the sound settings. Disable devices that do not match the sound output that you're using. An example of this is disabling all the things that aren't HDMI for your TV audio.

## Change physical keyboard layout for Steam Gaming Mode

Steam Gaming Mode has no official way to change the physical keyboard layout and will always default to the US layout.  If you want to change the layout, then you can set the environment variable `XKB_DEFAULT_LAYOUT=no` replacing `no` with the correct layout for you.
Add this environment variable to `~/.config/environment.d/10-gamescope-session.conf` Basically, make sure hidden files is turned on and move into the **Home** directory, then go into the .config directory and enter the environment.d directory.  Inside that directory, the file that should be edited with a text editor should be saved as "10-gamescope-session.conf" for it to work properly.

<sub>(Please note, if both the "10-gamescope-session.conf" file and/or "environment.d" folder does not exist already, then create it.)</sub>

This works in Desktop Mode including running Nested Gamescope and also works for Nested Desktop, but it has its own quirks: <kbd>altgr</kbd> + <kbd>2</kbd> to write "<kbd>@</kbd>" on the Norwegian layout will still not work, but the basic keyboard layout will always work.  The `altgr` key is luckily not needed for normal typing on the Norwegian layout, however <kbd>altgr</kbd> has been reported to work on the French layout, but your mileage may vary.

## How do I disable certain "Steam Deck" features that conflict with my setup?

**Scenarios where this is desirable**:

*>* **Example 1**: Keyboard and mouse is not working for this title.

*>* **Example 2**: The game’s launcher for adjusting video settings or adding mods does not launch.

*>* **Example 3**: Certain features/options are not available that should be.

Open the game's properties on Steam and **enter this launch option**:

```command
SteamDeck=0 %command%
```

## Why do specific Decky Loader plugins not function on Bazzite?

Some plugins are built specifically for SteamOS or the Steam Deck, and won’t necessarily work on Bazzite or non-Deck hardware.

For example, the [DeckMTP plugin](https://github.com/dafta/DeckMTP) only works on the Steam Deck models and will not work on other hardware.

## How do I use SteamDeckGyroDSU on hardware that isn't the Steam Deck?

You cannot use SteamDeckGyroDSU outside of the Steam Deck, but you can try disabling Steam Input and it _may_ work depending on your hardware and use case.

## How do I specify which GPU that Steam Gaming Mode should use?

Open a TTY session with an **external physical keyboard** using this **keyboard combination**:
   <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd>

```command
export-gpu
```

**Alternatively**, in Desktop Mode, enter in a host terminal:

```
/usr/bin/export-gpu
```

Select the GPU to use for Steam Gaming Mode.

## How do I enable UI scaling in Steam Gaming Mode? (If not available)

!!! warning

    Follow the instructions properly and do not mess with any other Valve internal settings since it can break your installation of Bazzite and Steam!

1. If not already installed, install Decky Loader with the [`ujust` command](/Installing_and_Managing_Software/ujust.md)
2. Go into Decky's settings
3. Under the "Developer" category, check "**Enable Valve Internal**"
4. Go into the Steam Gaming Mode settings
5. Under "System" make sure to check "**Enable Developer Mode**"
6. **Be extra careful from here**, since checking the wrong settings could potentially **render your setup unusable**
7. Go back into the Steam Gaming Mode settings
8. Under the "Valve Internal" section towards the back of the settings, check "**Show display scaling settings for Internal Display**" under "Display"
9. Now that you've enabled internal scaling you can safely turn off Developer mode.
10. Under "System", turn off "**Enable Developer Mode**"
11. In Decky, under "Developer", disable "**Enable Valve Internal**"

The Internal Display Scaling settings will be fully accessible under "Display" in your settings, even after turning off Developer mode and Valve Internal.

>[**Read the original source**](https://github.com/aarron-lee/gpd-win-tricks?tab=readme-ov-file#how-to-change-display-scaling-on-internal-display).


## I lost my "Return to Gaming Mode" shortcut

You can restore this shortcut by opening terminal and running:

 ```
 ujust restore-gamemode-shortcut
 ```

## Steam broke and Gaming Mode is broken too

In scenarios where Steam Gaming Mode refuses to start due to an issue with the Steam client.

### Desktop Mode

Open a host terminal and **enter**:

```
ujust fix-reset-steam
```

### TTY (if you cannot access Desktop Mode)
Access a TTY session with <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd> and login with your Bazzite username and password.

**Enter**:

```
ujust fix-reset-steam
```

## "Something went wrong while displaying this content" Error

This is most likely due to a broken Decky Loader plugin you have installed. Uninstall the broken plugin. Specific CSS Loader themes can also cause this issue.

## Why is VRR not working on my VRR-compatible display?

Most of the time this is because you're connecting the device via HDMI which does not support VRR on Linux. Here is the [source](https://www.phoronix.com/news/HDMI-2.1-OSS-Rejected) of that information.

## Rainbow display

![My-Eyes|690x430](../img/hdr-woes.png)

Toggle HDR on and off in the Quick Access Menu.

However, you may need to enable "Force Composite" found in the Developer Options, which also has to be enabled in the Steam settings beforehand.

## Stuck at the Bazzite logo
1.  Opening a TTY session with an **external physical keyboard** using this **keyboard combination and entering this command**:
    <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd>
2.  Login to your user.
3.  Enter this command:
```
ujust fix-reset-steam
```

Reboot the system.
### Alternative Method
!!! attention

    Try rebooting your device first before proceeding with the next steps! You may lose your games, saves, and other content if this is done incorrectly.

1.  Open a TTY session with an **external physical keyboard** using this **keyboard combination and entering this command**:
    <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd> and `mv ~/.local/share/Steam ~/.local/share/Steam1`
2.  This command will rename the `Steam` directory to `Steam1`, and it will force Steam to reinitialize and create a new directory
3.  You can move your games from the renamed `Steam1` directory to the new `Steam` directory if you had any installed previously on your internal storage
4.  Exit the TTY session by entering this **keyboard combination**: <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F2</kbd>

#### Video Tutorial
https://www.youtube.com/watch?v=gE1ff72g2Gk

## Nvidia Exclusive Issues

!!! note

    This only affects the `bazzite-deck-nvidia` images.

- "Enable GPU accelerated rendering in web views (requires restart)" must be enabled in the Steam settings for better performance in the UI.
  - Resolutions above 2560x1440 will cause game-breaking graphical artifacts using this setting.
- HDR can cause game-breaking graphical artifacts.

<hr>

**See also**: [Issues & Resolutions](/General/issues_and_resolutions.md) & [Current Gamescope Issues](https://github.com/ValveSoftware/gamescope/issues).
