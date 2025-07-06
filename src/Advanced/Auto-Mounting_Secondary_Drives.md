---
authors:
  - "@nicknamenamenick"
  - "@HikariKnight"
  - "@asen23"
  - "@TheScreechingBagel"
  - "@Zeglius"
tags:
  - Guide
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=970", "fetched_at": "2024-09-03 16:43:14.005694+00:00"}-->
<!-- ANCHOR_END: METADATA -->

!!! info "MicroSD cards automatically mount without any manual intervention required on Bazzite."

## Setup an auto-mounting partition

1. Open Gnome Disks, should have an icon like this. ![GNOME|50x50, 50%](../img/GNOME_Disks_icon.png)

2. Wipe the partition you want to use, then use the leftover to create a new one.

   ![](../img/automount.1.png)

3. Give it a name and a filesystem.

!!! warning "We only support BTRFS/ext4 filesystems"

![](../img/automount.2_btrfs.1.png){data-gallery="step-2"}
![](../img/automount.2_btrfs.2.png){data-gallery="step-2"}
![](../img/automount.3.png){data-gallery="step-2"}

Now reboot, your partition should be mounted automatically. Should appear under `/run/media/system/PARTITION_NAME`.

![](../img/automount.4.png){data-gallery="step-3"}

## Manual mounting

![GNOME_Edit_Mount_Options|690x465, 75%](../img/GNOME_Edit_Mount_Options.png)

![GNOME_Mount_Options|549x500, 75%](../img/GNOME_Mount_Options_new.png)

Append `,user,exec` at the end if doesnt work properly

![](../img/GNOME_Mount_Options_new.2.png)

## Emergency Mode After Mounting?

This video tutorial shows how to recover from your mounting mistakes.

https://www.youtube.com/watch?v=-2wca_0CpXY
