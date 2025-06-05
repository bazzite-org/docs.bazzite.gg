---
title: Enabling Hibernation in Bazzite Desktop Images
authors:
  - "@antheas"
---

!!! warning

    This tutorial will disable zram which is a default of Bazzite and is an unsupported configuration.

## Make Swap Subvolume (e.g., due to Snapper)
```
sudo btrfs subvolume create /var/swap

sudo semanage fcontext -a -t var_t /var/swap

sudo restorecon /var/swap
```

## Create Swapfile

```
SIZE=26G

sudo btrfs filesystem mkswapfile --size $SIZE /var/swap/swapfile

sudo semanage fcontext -a -t swapfile_t /var/swap/swapfile

sudo restorecon /var/swap/swapfile
```

## Sanity Check Validation

```
sudo swapon /var/swap/swapfile
```

## Adding it to fstab

Backup your fstab file with:

```
sudo cp  /etc/fstab.bak
```

Then, edit fstab with this **command**:

```
sudo nano /etc/fstab
```

!!! attention

Make sure you edit manually **otherwise boot failures may occur**!

Then add the following **line of code** to fstab:

`/var/swap/swapfile none swap defaults,nofail 0 0`

In case of any error, you may restore from your backup with this:

```
sudo cp  /etc/fstab.bak /etc/fstab
```

## Disable zram

```
echo "" | sudo tee /etc/systemd/zram-generator.conf
```

## Reboot
Reboot your device to apply the changes made above.

## Reverting changes and restoring zram

Should you want to restore the default, copy the zram-generator.conf from `/usr/etc/systemd/zram-generator.conf`:

```
sudo cp /usr/etc/systemd/zram-generator.conf /etc/systemd/zram-generator.conf
```

And then restore your original fstab file as shown above.
