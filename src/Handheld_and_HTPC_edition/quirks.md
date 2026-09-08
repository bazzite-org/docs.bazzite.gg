---
title: Steam Gaming Mode Quirks and Workarounds
---

# Steam Gaming Mode Quirks and Workarounds

> For a more general guide, see [Handheld Wiki](/Handheld_and_HTPC_edition/Handheld_Wiki).

## Index

- [Boot and Startup Issues](#1-boot-and-startup-issues)
- [Display and Video Output](#2-display-and-video-output)
- [Audio Issues](#3-audio-issues)
- [Input, Keyboard, and Controllers](#4-input-keyboard-and-controllers)
- [Performance, Power, and Hardware](#5-performance-power-and-hardware)
- [Decky Loader, OGUI, and Add‑ons](#6-decky-loader-ogui-and-addons)
- [Storage and Filesystem](#7-storage-and-file-system)
- [Miscellaneous](#8-miscellaneous)

---

## 1. Boot and Startup Issues

### Black Screen When Booting into Gaming Mode

If you: 

- Encounter a black screen after the Bazzite spinner, 
- Does not have Internet connection,
- find that it is obvious that Steam is trying and failing to update due to the lack of/ slow Internet;

You may follow the instructions [here](#unable-to-progress-past-controller-screen) to boot into Desktop Mode.

---

### Stuck at Bazzite Logo

!!! info "The instructions below are also applicable for [Steam and Gaming Mode are broken](/Handheld_and_HTPC_edition/quirks/#steam-and-steam-gaming-mode-are-broken)."

=== "Desktop Mode Method"

    Open Bazzite Portal → Troubleshoot → Reset Steam installation, then reboot.

=== "TTY Method (_if you cannot enter Desktop Mode_)"

    Access a TTY session with <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd>, login with your Bazzite username and password, then enter this command:
    
    !!! info "The default username and passwords are both `bazzite` if you have not set it during installation."
    
    ```bash
    ujust fix-reset-steam
    ```
    You can then reboot with this command:
    
    ```bash
    systemctl reboot
    ```

=== "Backup Method"

    !!! warning

        Try rebooting your device first before proceeding with the next steps! You may lose your games, saves, and other content if this is done incorrectly.

    Press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd> to enter the TTY and login using your Bazzite username and password, then run the following command.
    
    !!! info "The default username and password are both `bazzite` if you haven't set them during setup."
    
    ```bash
    mv ~/.local/share/Steam ~/.local/share/Steam.bak
    ```

    2.  This command will rename the `Steam` to `Steam.bak`. After restarting Steam, Steam will automatically recreate the `Steam` folder.
    3.   You can move your games from the renamed `Steam.bak` directory to the new `Steam` directory if you had any installed previously on your internal storage.
    4.  You may use <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F2</kbd> to exit the TTY.

> You may also follow the video guide below:
https://www.youtube.com/watch?v=gE1ff72g2Gk

---

### Stuck on 'Update calculating: Time Remaining'

![Update time remaining](../img/update_calculating_time_remaining.jpg)

Reboot the device.

---

### Steam and Steam Gaming Mode Are Broken

In scenarios where Steam Gaming Mode refuses to start due to an issue with the Steam client:

Follow the instructions [here](#stuck-at-bazzite-logo).

---

### Unable to Progress Past Controller Screen

!!! info "The instructions below are also applicable for [Black Screen When Booting into Gaming Mode](#black-screen-when-booting-into-gaming-mode)."

![If your controller supports Bluetooth, select Next to pair to your Steam Machine.](../img/connect_controller.jpg)

1. Open a TTY session with an **external physical keyboard** using this **keyboard combination**:
    <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd>
2. Login to your user.
3. Enter this command:
```bash
steamosctl switch-to-desktop-mode
```
4. Log into Steam in Desktop mode, and reboot the device.

---

## 2. Display and Video Output

### Flickering and Instability on Some Displays

This is due to an issue in how AMD graphics cards change power states. This issue has been reported upstream to be fixed.

You may use the following workarounds to remediate this issue.

1. Turn on VRR in Steam Gaming Mode at all times.
2. Set the refresh rate in Desktop Mode to 60hz and set **Adaptive Sync** to **Never** or **Always**.

Alternatively, you may use LACT to set your card to max power and save it as your default profile until the issue is resolved.

> If you'd like to help report this bug, you may do so [here](https://gitlab.freedesktop.org/drm/amd/-/work_items/5649).

---

### Rainbow Display

![My-Eyes|690x430](../img/hdr-woes.png)

Toggle HDR on and off in the Quick Access Menu.

??? note "You may need to additionally enable the **"Force Composite"** option found in the Developer Options."

    This can be enabled by:

    1. Steam Settings → System → **Enable Developer Mode**
    2. Steam Settings → Developer → Check **Force Composite**

---

### VRR Not Working on VRR-Compatible Displays

!!! info "Support for HDMI 2.1 FRL, VRR, and DSC on AMD Graphics cards are added in Linux Kernel version 7.2. [Update to the newest version of Bazzite](/Installing_and_Managing_Software/Updates_Rollbacks_and_Rebasing/updating_guide) to use this feature!"

Enable it in **Bazzite Portal → Tweak Systems → Enable HDMI 2.1 for AMD Graphics Cards**. 

!!! note "This may cause flickering and instability on some displays."

> You may read more about it [here](https://www.phoronix.com/news/HDMI-2.1-OSS-Rejected).

---

### Nvidia GPU Exclusive Issues with Steam Gaming Mode

- "Enable GPU accelerated rendering in web views (requires restart)" must be enabled in the Steam settings for better performance in the UI.
  - Enabling this option will most likely cause game-breaking graphical artifacts.
- HDR can cause game-breaking graphical artifacts.

---

### Specifying Correct Monitor for Gaming Mode (HTPC only)

In Desktop Mode, open a host terminal and run the following **command** to find your Display Output Name:

=== "KDE"

    ```bash
    kscreen-doctor -o
    ```

=== "GNOME"

    ```bash
    gnome-randr
    ```
    !!! note

        It has been reported that some systems may not properly report the Display Output Name when using `gnome-randr`. You may run the command below to list the names of all connected outputs without any details, and compare them with the previous command output to find your actual Display Output Name.
    
        ```bash
        grep -r '^connected' /sys/class/drm/*/status | grep -Po 'card.?-\K([^/]*)'
        ```

After finding the correct Display Output Name, you may now create a file to tell Steam Gaming Mode to use your display.

=== "Using the GUI"
    
    In Desktop Mode or Nested Desktop, 
    
    1. Create the directory `~/.config/environment.d` if it does not exist already.
    
    2. Create the file under the aforementioned directory named `10-gamescope-session.conf` if it does not exist already.

    3. Add the following line to the file:
        `OUTPUT_CONNECTOR=DP-1`
    !!! info "Make sure you change `DP-1` to your Display Output!"
    
    4. Save the file, restart, and verify that your device is outputing on the correct display.
    
=== "Using the command line"
    
    Run the following commands to create the file:
    
    !!! info "Make sure you change `DP-1` to your Display Output!"
    
    ```bash
    mkdir -p ~/.config/environment.d
    echo "OUTPUT_CONNECTOR=DP-1" >> ~/.config/environment.d/10-gamescope-session.conf
    ```

---

## 3. Audio Issues

### Audio Output Not Working (Default Device)

This issue happens usually with HDMI TV audio. Enter Desktop Mode and in **System Settings**, disable devices that do not match the sound output that you are using. 

!!! info "A typical fix is disabling everything except HDMI for your TV audio."

---

## 4. Input, Keyboard, and Controllers

### Change Physical Keyboard Layout for Steam Gaming Mode

Steam Gaming Mode has no official way to change the physical keyboard layout and defaults to the US layout. If you want to change the layout, then you may set it globally through an environment variable.

=== "Using the GUI"
    
    In Desktop Mode or Nested Desktop, 
    
    1. Create the directory `~/.config/environment.d` if it does not exist already.
    
    2. Create the file under the aforementioned directory named `10-gamescope-session.conf` if it does not exist already.

    3. Add the following line to the file, replacing `us` with the correct layout.
        ```console
        XKB_DEFAULT_LAYOUT=us
        ```
    4. Save the file, restart, and verify that you have the correct keyboard layout.
    
=== "Using the command line"
    
    Run the following commands to create the file, replacing `us` with the correct layout.:
    
    ```bash
    mkdir -p ~/.config/environment.d
    echo "XKB_DEFAULT_LAYOUT=us" >> ~/.config/environment.d/10-gamescope-session.conf
    ```
    
!!! info 

    The layout name is usually a [2-letter country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements),
    Alternatively, you may use one of the following commands to see a list without a description:

    -   `localectl list-x11-keymap-models`
    -   `localectl list-x11-keymap-layouts`
    -   `localectl list-x11-keymap-variants [layout]`
    -   `localectl list-x11-keymap-options`

!!! note 

    This fix will also work in Desktop Mode, including when running Nested Gamescope or when using Nested Desktop, but it has its own quirks: 
    
    -   <kbd>altgr</kbd> + <kbd>2</kbd> to write `@` on the Norwegian layout will still not work, though the basic keyboard layout does work. Fortunately, The <kbd>altgr</kbd> key is not needed for normal typing on the Norwegian layout. 
    -   The <kbd>altgr</kbd> key has been reported to work on the French layout
    -   Your mileage may vary on differing keyboard layouts.

---

### Use SteamDeckGyroDSU on Non-Steam Deck Hardware

You typically cannot use SteamDeckGyroDSU outside of the Steam Deck, though you may try disabling Steam Input and it _may_ work depending on your hardware and use case.

---

### Disabling Certain "Steam Deck" Features

**Scenarios where this is desirable**:

- Keyboard and mouse does not work for a certain game
- The game’s launcher for adjusting video settings or adding mods does not launch
- Certain features/graphics options are not available

Open the game's properties on Steam and [**add this launch option**](/Gaming/launch-options-env-variables/#where-to-set-launch-options):

```bash
sd0 %command%
```
> Read more about Launch Options and Environment Variables [here](/Gaming/launch-options-env-variables/)

---

## 5. Performance, Power, and Hardware

### Fan Control Functionality Missing

[Bazzite Deck 44](https://universal-blue.discourse.group/t/bazzites-biggest-update-deck-44-has-launched-happy-birthday-to-universal-blue/12373) brings along a major change in our handheld stack. With this new stack, some devices may no longer allow fan control, but a plugin for OGUI is in development to restore them. If you are affected, let us know on our GitHub and we will update you as this lands.

---

### TDP Controls Missing

> See [Handheld Wiki](/Handheld_and_HTPC_edition/Handheld_Wiki/#tdp-controls).

---

### Specifying Steam Gaming Mode GPU Usage

Open a TTY session with an **external physical keyboard** using this **keyboard combination**: <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F4</kbd>

!!! info "This feature is superceded by the new [CardWire](https://github.com/OpenGamingCollective/cardwire) GPU Manager in Bazzite-Deck 44."
   
```bash
export-gpu
```

---

### Wi-Fi Is Slow / Wi-Fi Lag Spikes

The Wi-Fi power saving feature in Linux may work poorly on some devices. If the problem is not present in Windows, you may try the solution below.

!!! info "This section is for devices running the `-deck` images. For desktop images, see [here](/General/issues_and_resolutions/#wi-fi-is-slow-wi-fi-lag-spikes)."

If you are using Steam Gaming Mode (i.e. not booting straight into a desktop environment like KDE or GNOME), try:

1. Steam Settings → System → Enable Developer Mode
2. Steam Settings → Developer → Uncheck **Enable Wi-Fi Power Management**
3. Reboot

---

## 6. Decky Loader, OGUI, and Add‑ons

### Decky Loader Plugins Not Functioning

Some plugins are built specifically for SteamOS or the Steam Deck, and won’t necessarily work on Bazzite or non-Steam-Deck hardware.

- For example, the [DeckMTP plugin](https://github.com/dafta/DeckMTP) only works on the Steam Deck models and will not work on other hardware.

---

### Missing Gamepad Menu

!!! tip "See [Handheld Wiki](/Handheld_and_HTPC_edition/Handheld_Wiki/#how-do-i-open-the-ogui-overlay) if you cannot find how to open the OGUI menu on supported devices."

!!! info "OpenGamepadUI is disabled by default for the Steam Deck and HTPCs."

Bazzite uses an allowlist to selectively enable OpenGamepadUI for handhelds that are known to require it to enable built-in joysticks and bumpers. Enabling OpenGamepadUI on devices that don't require them may lead to unexpected issues.

Nevertheless, you can toggle OpenGamepadUI using the following command:

```bash
ujust configure-opengamepadui
```

> You can check the allowlist [here](https://github.com/ublue-os/bazzite/blob/main/system_files/desktop/shared/usr/libexec/hwsupport/steamos-manager-hardware). Additionally, a list of non-Valve handhelds that need PowerStation for TDP control are available [here](https://github.com/ublue-os/bazzite/blob/main/system_files/desktop/shared/usr/libexec/hwsupport/powerstation-hardware).

---

### "Something went wrong while displaying this content" Error

This is most likely due to a broken Decky Loader plugin you have installed and can be fixed by uninstalling the broken plugin. 

!!! note "Specific CSS Loader themes may also cause this issue."

---

## 7. Storage and File System

### Using a MicroSD Card That Was Previously Used on a Steam Deck Running SteamOS

Open a host terminal and enter this **command**:

```bash
ujust switch-to-ext4
```

---

## 8. Miscellaneous

### "Return to Gaming Mode" Shortcut Missing

You can restore this shortcut by opening terminal and running:

```bash
ujust restore-gamemode-shortcut
```

---
