---
authors:
  - "@nicknamenamenick"
tags:
  -  Updates
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=2644", "fetched_at": "2024-09-03 16:43:14.300522+00:00"}-->
<!-- ANCHOR_END: METADATA -->

![GRUB Menu|690x402](../../img/GRUB_Menu.png)

## How do I rollback a system update?

A rollback to the previous system deployment can be done by **entering this command in a host terminal**:

```command
rpm-ostree rollback
```

Rollback can also be done in the GRUB menu (the menu you see before booting into Bazzite on Desktop images) by choosing the previous boot entry before booting to the desktop. It shows your current (`:0`) and your previous (`:1`) deployments. Your personal files will **not** be affected by this, and you can still update to the newest builds after rolling back.

> If you need to rollback to an earlier image, then use the [`bazzite-rollback-helper`](./bazzite_rollback_helper.md) to do so.

### Unhide The GRUB Menu (If you opted to hide the GRUB menu)

Unhide GRUB on Bazzite-Deck images with this **command**:

```
ujust configure-grub
```

Select the "**unhide**" opiton to have GRUB appear on boot.

!!! note
    
    Controls may vary with different handhelds or HTPC setups to navigate the menu and an external physical keyboard may be required.

## How do I save my **current** deployment?

You can pin your **current** deployment with this **command**:

```command
sudo ostree admin pin 0
```

In a host terminal for a backup save state of your **current** deployment to rollback to if a new system update causes issues.

## How do I save my **previous** deployment?

You can pin your **previous** deployment with this **command**:

```command
sudo ostree admin pin 1
```

In a host terminal for a backup save state of your **previous** deployment to rollback if the current deployment has issues.

## How do I unpin a deployment if I saved it?

Unpin saved **current** deployment:

```command
sudo ostree admin pin --unpin 0
```

Unpin saved **previous** deployment:

```command
sudo ostree admin pin --unpin 1
```

View all deployment index numbers:

```command
rpm-ostree status -v
```

Unpin **saved** deployment:

```command
sudo ostree admin pin --unpin <index number>
```

## Application Update Downgrades

Read about the pre-installed Warehouse application to downgrade applications in this [documentation](/Installing_and_Managing_Software/Flatpak.md#warehouse).

<hr>

[**<-- Back to Updates, Rollback, and Rebasing Guide**](./index.md)
