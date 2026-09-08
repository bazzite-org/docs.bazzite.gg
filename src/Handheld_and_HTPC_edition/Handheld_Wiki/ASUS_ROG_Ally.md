---
title: ASUS Handhelds
---

# ASUS Handhelds

!!! disclaimer

    This wiki may contain outdated information.

## ASUS ROG Ally / ASUS ROG Ally X

![ally|603x500, 100%](../../img/ally.png)

### General Notes

- Holding the Armoury Crate button (on the side) allows switching to Mouse Mode

### Optional Tweaks

- Adjust RGB with Steam Gaming Mode with Plugins
  - Controller emulation may need to be set to DualShock for RGB adjustment to work.

### Known Issues

- Changing A/C power sometimes leads to a stuck TDP.
  - This happens when removing the charger while in standby.
  - Attaching and removing the charger while not in standby is a workaround.
- Audio is Soft
  - There are two audio devices that appear on the Rog Ally:
    - **Family 17h/19h/1ah HD Audio Controller**
    - **ROG Ally**
  - Both affect each other's audio volume, so they must be at the same volume level.
- Mic sounds garbled
  - Set the mic/input volume to 10%-15% in settings may resolve this issue
  - The input profile in Discord Settings may also need to be set to **Noice Cancellation**.
- The "Auto UMA" setting in UEFI/BIOS may cause crashes in some games.
  - Set the VRAM in bios to **4GB** or **8GB**.
- LED indicator is on max brightness by default and cannot be changed on any other operating system outside of Windows.
  - This is tied to the firmware unfortunately.
  - This issue may also be present during charging and sleeping.
- The Ally does **not** support button holding for the Steam or QAM buttons.
  - Steam Input's chords may not work by default.
  - Swapping the Start/Select button(s) can be used as a workaround.
- Suspend may be broken if SMT is disabled
- Fingerprint sensor driver may not work.
- Storage may show duplicate drives.
  - This is a visual bug, do **not** attempt to format this drive!
- Turning on the wake animation when resuming from sleep may cause the device to act erratically.
  - Steam's top and bottom panels may be missing when this bug triggers.


#### CPU Boost?

Disabled by default to prevent excessive power draw to the device.

More information can be found [**here**](https://github.com/aarron-lee/SimpleDeckyTDP/blob/main/README.md#are-there-cpu-boost-controls) about this.
