---
title: Dual Boot Preliminary and Post-Installation Setup Guide
authors:
  - "@nicknamenamenick"
  - "@atimeofday"
  - "@damiankorcz"
  - "@aarron-lee"
tags:
  - Installation
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=2743", "fetched_at": "2024-09-03 16:43:23.309649+00:00"}-->
<!-- ANCHOR_END: METADATA -->

!!! note

    Make sure to read the [**Installation Guide**](./index.md) for your device first before proceeding.

1. Installing Bazzite with a shared EFI partition (Recommended with Live ISO)
2. Installing Bazzite on a separate drive (Recommended with legacy ISO)
3. Manual partitioning on the same drive (Advanced)

=== "Shared EFI partition (Live ISO)"

    Resize the Windows partition to have enough space for Bazzite at the right side of the partition table.
    Then simply use the automatic partitioning option.

=== "Separate Drive"

    {# DELETEME: Whenever Live ISOs fully replace the legacy one #}

    **This method is ideal for desktops and HTPCs, and would be inconvenient for handhelds unless planned to keep stationary.**

    Install Bazzite on a separate internal or external drive.

    1. Install the other operating system on a drive (like Windows)
    2. Install Bazzite on a **second** drive
    3. Set Bazzite as the **default** in your boot order (optional)

    You can also install Windows to an external drive with Windows-to-Go using [Rufus](https://rufus.ie/en/) to dual boot if you do not have an internal drive available.

=== "Same Drive Method"

    {# DELETEME: Whenever Live ISOs fully replace the legacy one #}

    !!! important

        This must be done **before installing Bazzite**.

    **This method is recommended for handheld PCs or mobile setups.**

    If you do not have multiple drives or are using a device that will **not** be stationary, then you will have to manually partition on the same drive.

    #### Note about dual booting with **Windows** specifically:

    Dual booting Bazzite with Windows on the same drive works better with **Windows already installed before Bazzite**.

    #### Bazzite Partition

    Create space for Bazzite with the Disk Management application in Windows.

    <kbd>Win</kbd> + <kbd>R</kbd> to open Windows Run and enter:

    ```
    diskmgmt.msc
    ```

    Then, right-click your Windows partition and select "Shrink Volume" from the drop-down menu. Afterwards, select how much storage you want to allocate for Bazzite.

    !!! important

        It is **strongly recommended for to setup a separate EFI partition via manual partitioning**.  The separate EFI partition will help prevent Windows Updates from affecting your Bazzite installation later down the line.

    ## Manual Partitioning to the Same Drive for Dual Boot Setups

    !!! warning "Bazzite only supports the BTRFS filesystem for `/`"

    If you need a tutorial video for manual partitioning, watch this [tutorial at timestamp 9:10](https://www.youtube.com/watch?v=JxPsKhJGTrs&t=550s).


    1.  Select Installation Destination
    2.  Select `Advanced Custom(Blivet-GUI)` under Storage Configuration.
    3.  Create partitions and devices:

    ```
        Manual Partitioning Scheme:

        mount point: /boot/efi
        format:      EFI system partition
        size:        300MB

        mount point: /boot
        format:      ext4
        size:        1GB

        mount point:
        format: btrfs
        size: [max]

        mount point: /
        format:      btrfs (subvolume)

        mount point: /var
        format:      btrfs (subvolume)

        mount point: /var/home
        format:      btrfs (subvolume)
    ```

<hr/>

### Note about dual booting other Fedora Atomic Desktop images on the **same** drive:

If you want to dual boot another **Fedora Atomic Desktop image** (like [Bluefin](https://projectbluefin.io/)) installed alongside Bazzite, then you would have to make an additional EFI partition and switch between them through the BIOS boot menu.

## Dual Boot Post-Configuration Setup

Show both your Windows and Bazzite installations in the GRUB menu to select from at boot by entering this **command into the terminal**:

```
ujust regenerate-grub
```

### Bazzite as Primary Boot

If the `OS Boot Manager` has set `Windows Boot Manager` to be the first boot priority, then this may result in booting directly into Windows after the install instead of Bazzite. You may have to fix this in your BIOS settings.

Take note that the GRUB menu might not show up. In such case, spam the <kbd>↓</kbd> key when booting up.

<hr>

### Boot into Windows from Steam

Adds a script in Steam to boot into Windows

```
ujust setup-boot-windows-steam
```

## Expanding storage size in a Windows dual-boot scenario

!!! note

    This is for future reference after dual-booting for a while.

**Watch this video tutorial on how to expand the storage**:

https://www.youtube.com/watch?v=uy8mi1pAj8E
