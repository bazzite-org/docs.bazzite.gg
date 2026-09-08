---
title: Handheld Wiki
---

# Handheld Wiki

> This is a more general guide. For troubleshooting, see [Steam Gaming Mode Quirks](/Handheld_and_HTPC_edition/quirks.md).

## SteamOS-like Functionality

!!! info

    [Bazzite Deck 44](https://universal-blue.discourse.group/t/bazzites-biggest-update-deck-44-has-launched-happy-birthday-to-universal-blue/12373) uses [OpenGamepadUI](https://github.com/ShadowBlip/OpenGamepadUI) and [InputPlumber](https://github.com/shadowblip/InputPlumber) for proper handheld support. 
    
    In the past, this was done using Handheld Daemon. You may learn more about that [here](https://universal-blue.discourse.group/t/a-brighter-future-for-bazzite/11575).

Bazzite-Deck images ship with [Steam Gaming Mode](../Steam_Gaming_Mode.md) which is intended to mimic the experience of SteamOS. The goal is to have earlier support for most x86_64 handheld PCs before SteamOS and with the same benefits of the desktop version of Bazzite.

---

## Supported Handhelds

!!! info "This list is non-exhaustive and does not necessarily indicate that unlisted handhelds do not work with Bazzite."

_Click the name of each hardware to view post-installation setup, known working features, issues and workarounds._

- [**ASUS Handhelds**](./ASUS_ROG_Ally.md)
- [**Lenovo Handhelds**](./Lenovo_Legion_Go.md)
- [**GPD Handhelds**](./GPD_Handhelds.md)
- [**OneXPlayer Handhelds**](./OneXPlayer_Handhelds.md)
- [**Ayn Handhelds**](./Ayn_Handhelds.md)
- [**Ayaneo Handhelds**](./Ayaneo_Handhelds.md)
- [**Steam Deck**](./Steam_Deck.md)
- [**Other Handhelds**](./Other_Handhelds.md) 

---

## TDP Controls

![TDP|409x1004, 33%](/img/TDP.png) ![OGUI Power Profiles|1920x1200, 30%](/img/OGUI_Profile.jpg)

There are a few options for TDP Controls that work with Bazzite:

!!! info "If you open OpenGamepadUI and see the message `TDP managed by Steam`, this means your device's TDP is in fact managed by Steam."

!!! tip "If detailed TDP configurations cannot be found, try selecting the **Performance** profile → scroll down and enable TDP and GPU Clocks. This should enable detailed TDP configuration in Watts."

=== "Steam Client Quick Access Menu (QAM)"

    If your device's TDP can be controlled via SteamOS Manager, the option will be available here. If it does not appear, check OpenGamepadUI or use other means of adjusting the TDP of your device.
    
    !!! info "See how to open QAM [here](#how-do-i-open-the-qam)."
    
    - Select the **:material-lightning-bolt: Lightning Bolt Icon** and enable **Advanced** options
    - TDP can then be changed by using the dedicated TDP Dropdown.
    - Custom TDP may be set by selecting **Custom**, scrolling down and toggling **Custom TDP**, then changing the **TDP slider** that appears.
    
    > [These devices](https://github.com/ublue-os/bazzite/blob/main/system_files/desktop/shared/usr/libexec/hwsupport/steamos-manager-hardware) will use this method by default.
  
=== "OpenGamepadUI (OGUI)"

    This is the 2nd place where you may find TDP controls for your device. In this menu, TDP controls are provided by [PowerStation](https://github.com/ShadowBlip/PowerStation). If your device can be configured via the Steam QAM, performance configurations may or may not be available here. You may use any of the two to configure your device.

    !!! info "See how to open OGUI [here](#how-do-i-open-the-ogui-overlay)."

    > [These devices](https://github.com/ublue-os/bazzite/blob/main/system_files/desktop/shared/usr/libexec/hwsupport/powerstation-hardware) will use this method by default.
  
=== "Decky Plugins"

    You may also use Decky Plugins to configure TDP for your device if both Steam QAM and OGUI do not provide them. However, note that these plugins will interfere and conflict if you have multiple plugins turned on. 
    
    !!! tip "Make sure you only have one means of TDP Control(including OGUI/PowerStation) running!"
    
    - [SimpleDeckyTDP](https://github.com/aarron-lee/SimpleDeckyTDP) plugin supports TDP, GPU, Power Governor, amongst other settings.
      - A [graphical application](https://github.com/aarron-lee/SimpleDeckyTDP-Desktop) is available, but needs to be manually installed.
    - [PowerControl](https://github.com/mengmeet/PowerControl) supports TDP, GPU, and fan control on select devices.
    - [Panel de Control](https://github.com/Hooandee/panel-de-control) also allow for custom TDP, Fan Control and smart leanring for profile based on how you use your device.

---

### How do I open the OGUI Overlay?

![Overlay|690x431, 75%](/img/OGUI_Overlay.jpg)

The button to open OGUI varies on a device-by-device basis. <small>_We tried our best to find similar looking graphics on here..._</small>

| Device | Graphic | Button Name | Action |
| :-: | :-: | :- | :- |
| ROG Ally series | :material-microsoft-dynamics-365:/:simple-nucleo: | Armory Crate Button | Long press |
| Xbox Ally series | :material-bookshelf:/<kbd>\|\|\\</kbd> | Library Button | Long press |
| MSI | :simple-wattpad: | Center M Button |  Long press |
| Ayaneo | **. . .** | RC Button | Press |
| OneXPlayer | :simple-atlasos: | Guide Button | Hold Guide and press QAM |
| Other Devices | :material-microsoft-xbox:/:material-sony-playstation:/:material-steam: + :material-gamepad-circle-right: | Guide + B | Single press |

!!! note "OGUI is currently selectively enabled for devices in an allowlist and is not currently intended to be used with HTPC setups. If you have a handheld on which OGUI is not appearing, please open an issue on Github!"

!!! tip ":material-microsoft-xbox:/:material-sony-playstation:/:material-steam: + :material-gamepad-circle-right: (Guide + B) is always a fallback that can be used"

> Instructions for enabling OGUI on unsupported devices are available [here](./Other_Handhelds/#enabling-ogui-on-unsupported-devices). Enable **at your own risk**.

---

### How do I open the QAM?

 The button to open QAM varies on a device-by-device basis. <small>_We tried our best to find similar looking graphics on here..._</small>

| Device | Graphic | Button Name | Action |
| :-: | :-: | :- | :- |
| ROG Ally series | :material-microsoft-dynamics-365:/:simple-nucleo: | Armory Crate Button | Single press |
| Xbox Ally series | :material-bookshelf:/<kbd>\|\|\\</kbd> | Library Button | Single press |
| Legion Go series | :material-tune-variant: | Legion Right Button | Single press |
| MSI | :simple-wattpad: | Center M Button | Single press |
| Ayaneo | _**//**_ | = Custom Function Key | Single press |
| OneXPlayer | `TURBO` | Turbo Button | Single press |
| GPD | :material-microsoft-xbox-controller-menu:/:octicons-home-24: | Menu Button / Home Button. | Long press :material-microsoft-xbox-controller-menu: if only :material-microsoft-xbox-controller-menu: is present, otherwise single press whichever is on the right side. |

Alternatively, The Quick Access Menu is also accessible from the keyboard with <kbd>Ctrl</kbd> + <kbd>2</kbd>.

---

## Controller Information

For most handheld hardware, besides the Steam Deck, emulation of a DualSense controller is used for full functionality. You may open the QAM or OGUI to access settings for controller emulation.

!!! info "See how to open QAM [here](#how-do-i-open-the-qam)."

!!! warning "Emulating an Xbox controller will cause reduced or missing functions."

!!! note "If you experience Gyro issues, try setting controller emulation target in OGUI to **deck-uhid**. Device RGB functions can be controlled via the **Huesync Decky Plugin**."

If your device has paddles, you will want to use the DualSense Edge or Steam Deck controller (**excluding the Ayn Loki**). It’s disabled by default because some games do not map it correctly.

Some games and emulators may need Steam Input to be **disabled** to work correctly with your controls.

---

### Desktop Controls

![desktop_controls_step_1|850x722, 75%](/img/handheld_desktop_control.png)

Desktop controller layout may not exist by default if Steam doesn't setup your handheld controller properly. This can be fixed in Steam's controller settings.

The virtual keyboard is provided by Steam's on-screen keyboard, which requires setup in Desktop Mode. There is **no default keybinding for Steam's on-screen keyboard**, so it will need remapping to any key of your preference, though :material-gamepad-circle-left: is generally recommended. 

!!! tip "You may set up OSK under **Steam → Settings → Controller → Desktop Layout**."

The desktop controller layout may not exist by default if Steam doesn't setup your handheld controller properly. This can be fixed in Steam's controller settings.

!!! info "A feature to control the desktop using a controller was added in KDE Plasma 6.7. This feature conflicts with Steam's emulation method, so make sure you disable it, or vice versa should you want to use Plasma's native controller support."

> See [here](/General/issues_and_resolutions/#gamepads-and-handheld-joysticks-dont-work-in-desktop-mode) for more details.

---

## Decky Setup

To install [Decky Loader](https://decky.xyz), open a host terminal and enter:

```bash
ujust setup-decky
```

You can access Decky Loader inside the QAM from within Steam Gaming Mode or Steam Big Picture Mode.

!!! info "See how to open QAM [here](#how-do-i-open-the-qam)."

### Decky Plugins

!!! info "Decky may break or be uninstalled after an update."

Install optional [Decky plugins](https://plugins.deckbrew.xyz/) for your handheld. If you experience any major issues with Decky, it is recommended to uninstall it before reporting Bazzite bugs.

---

## Unsupported Handhelds

!!! note

    Certain handhelds have been confirmed to boot Bazzite, but are plagued by missing driver support for Linux including missing audio drivers.

Unsupported handhelds _could work_ with Bazzite, but you may encounter unexpected and undocumented changes. If your handheld hardware is not listed, you may still give Bazzite a try with the Bazzite-Deck image.

Your mileage may vary with untested hardware. Bazzite does **not** automatically apply fixes, tweaks and setup on unsupported handhelds, so you may need to setup different functionalities manually. 

!!! note

    You may also submit PRs to get your device officially supported on Bazzite if you feel like it is in a good state with Linux support.

> Instructions for enabling OGUI on unsupported Handhelds are available [here](./Other_Handhelds/#enabling-ogui-on-unsupported-devices).

---

## e-GPU Caveats:

- The same [GPU hardware requirements](/Gaming/Hardware_compatibility_for_gaming.md#steam-gaming-mode-requirements) that apply for Steam Gaming Mode will also apply for e-GPUs.
  - Nvidia GPUs are **unsupported**, though Bazzite provides an experimental `-deck-nvidia` image.

> You may read and follow this [**General Linux e-GPU Guide + Script**](https://github.com/ewagner12/all-ways-egpu) at your own risk.

---
