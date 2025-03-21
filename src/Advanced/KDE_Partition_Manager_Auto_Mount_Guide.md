---
authors:
  - "@nicknamenamenick"
  - "@HikariKnight"
  - "@asen23"
  - "@lethedata"
  - "@Zeglius"
tags:
  - Guide
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=3780", "fetched_at": "2024-09-03 16:43:09.824214+00:00"}-->
<!-- ANCHOR_END: METADATA -->

# KDE Partition Manager Auto-Mount Guide

![KDE|48x48](../img/KDE_Partition_Manager_icon.png)

**This is pre-installed on KDE images.**

{% include 'automounting_guide_depr.md' %}

## Instructions

![KDE Partition Manager|690x462, 75%](../img/KDE_Partition_Manager.png)
![Do not check the boxes!|690x197](../img/Do_not_check_the_boxes.png)

1.  Open KDE Partition Manager
2.  Locate the disk and partition you want to mount
3.  Right click on the partition and click "Edit Mount Point"
4.  Select "Identify by: UUID" (This will guarantee you mount THIS partition instead of a different one if the device nodes change for some reason)
5.  Select a mounting path (You would want to use `/var/mnt/games` or something similar for permanent mounts)
6.  **Untick all the boxes in the graphical application if they are checked**
7.  Click "More..." and add extra options depending on what filesystem is on the partition (read the "Filesystem Arguments" section)
8.  Click OK on both windows to save the mount points.
9.  A message will appear that the actions will edit `/etc/fstab` (Click "OK" to continue)
10. Mount the disk manually in KDE Partition Manager and enter your sudo password
11. Open the terminal to test the mounts by running the **command**:

    `sudo systemctl daemon-reload && sudo mount -a`

12. **If no errors appeared then it should be safe to reboot.**

If an error occurs, then research the error and undo what you did and try again.

Also a Display Name should be added to the drive too. Name it whatever you want it to be identified as.

### Required additional options depending on **filesystem**

Use the below generic options depending on your filesystem (these are just good defaults)
You can copy+paste these into the "More.." dialog and they will be valid

!!! note
    
    "Users can mount and unmount" is an **optional** setting.

### Filesystem arguments

!!! warning 

    If a drive is formatted, then do not remove it from `/etc/fstab`, so the "nofail" option is a must to avoid issues with booting.

![btrfs example|290x317](../img/btrfs_example.png)

**Example: btrfs requires these additional options.**

#### **BTRFS**:

```command
defaults,compress-force=zstd:3,noatime,lazytime,commit=120,space_cache=v2,nofail
```

#### **Ext4**:

```command
defaults,noatime,errors=remount-ro,nofail,rw,users,exec
```

#### **NTFS**:

```command
defaults,noatime,nofail,rw,users,exec
```

!!! note
    
    Bazzite does **not** support NTFS. Using the NTFS filesystem will lead to a lot of issues and should be avoided.

### Advanced Options (Not required for most setups)

!!! warning
    
    Change at your own risk!

#### Information about compression:

**3** is a good balance, older CPUs should use **1**.

#### Information about subvolumes:

use `subvol=name` as an option, KDE and GNOME Disks let you only mount 1 subvolume through the GUI, you can mount the root with `subvol=/` if a default subvolume is configured in the filesystem.

## Installing KDE Partition Manager on non-KDE images

If you would like to install this, then it can be layered to your system by entering in a terminal:

```
rpm-ostree install kde-partitionmanager
```

Reboot your system after it has finished installing the terminal.
