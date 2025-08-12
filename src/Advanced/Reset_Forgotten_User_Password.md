---
authors:
  - "@nicknamenamenick"
  - "@noelmiller"
tags:
  -  Troubleshooting
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=161", "fetched_at": "2024-09-03 16:43:11.636024+00:00"}-->
<!-- ANCHOR_END: METADATA -->

!!! important
    
    This method is only if you forgot your current user password! Changing your current password should be done through the desktop environment.

!!! warning
    
    Follow this guide **at your own discretion** because you can break your system attempting any of this.

![Edit the command for the latest boot entry|690x351](../img/Edit_the_command_for_the_latest_boot_entry.png)

1. Reboot your device.
2. Press <kbd>Esc</kbd> on the keyboard to reach the GRUB boot menu.
   a. If you press <kbd>Esc</kbd> too many times, you may end up at a `grub>` prompt.
   b. Return to the boot menu by typing `exit` and pressing <kbd>Enter</kbd>
3. Edit the last deployment by presssing <kbd>E</kbd> on your keyboard.

![Boot with init=/bin/bash|689x359](../img/Boot_with_init_bin_bash.jpeg)

Edit the GRUB prompt and append `init=/bin/bash` to the line beginning with `linux`.

![Reboot|689x359](../img/Reset_Password_Reboot.jpeg)

Continue boot process with <kbd>Ctrl</kbd>+<kbd>X</kbd>

Once you are in the GRUB command line:

1. Temporarily mount SELinux

    `mount -t selinuxfs selinuxfs /sys/fs/selinux`

2.  Load SELinux policy

    `/sbin/load_policy`

3. Enter your new password (i.e. `passwd bazzite`)

    `passwd [INSERT USERNAME HERE]`

4. Sync

    `sync`

5. Reboot

    `/sbin/reboot -ff`


![Commands|690x334](../img/Reset_Password_Commands.png)

6. Again, reach the GRUB boot menu
7. Edit the GRUB prompt and append `autorelabel=1` to the line beginning with `linux`.
Continue boot process with <kbd>Ctrl</kbd>+<kbd>X</kbd>
8. You will see logs regarding SELinux relabeling files
9. Once it is complete, your system is ready and your password has been successfully changed.



