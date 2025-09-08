---
authors:
  - "@nicknamenamenick"
tags:
  - Installation
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=2742", "fetched_at": "2024-09-03 16:43:23.922705+00:00"}-->
<!-- ANCHOR_END: METADATA -->

![Secure Boot|690x378, 50%](../../img/Secure_Boot.jpeg)

## Secure Boot Notes and Gotchas

!!! note

    Skip this section if Secure Boot is not enabled or unsupported with your hardware.

!!! important

    Certain keyboard layouts can interfere with the characters of the password.

- Entering the password will register invisible characters for security purposes, so you will not be able to see what you are typing!

- Updating your BIOS may re-enable Secure Boot and you may have to follow **"Method B"** after updating it to resolve the black screen on boot complaining about loading the kernel first.

- The Steam Deck does **not** come with secure boot enabled and does not ship with any keys enrolled by default, do not enable Secure Boot on your Steam Deck unless you absolutely know what you're doing.

### Error message if key is **not** enrolled properly:

![load the kernel first error|613x63](../../img/load_the_kernel_first_error.jpeg)

Follow **Method B** below to resolve this and move past the error message if you encounter it.

## **Method A**) During Installation Method (See Image Above)

!!! note

    This screen will also appear on the next boot if you enable Secure Boot if it was disabled during installation.

A blue screen will appear giving the option to enroll the signed keys after leaving the Bazzite installer.

`Enroll MOK` if you have secure boot enabled. If prompted to enter a password, then **enter**:

```command
universalblue
```

Otherwise `Continue boot` if you have Secure Boot disabled or if it is not supported with your hardware.

## **Method B**) After Installation Method

**Disable Secure Boot in the BIOS before proceeding**, and then re-enable it **after enrolling the key**.

If you have already installed Bazzite then **enter this command in a host terminal**:

```
ujust enroll-secure-boot-key
```

If prompted to enroll the required key, then **enter the password in the host terminal**:

```command
universalblue
```

**You can now turn Secure Boot back on in the BIOS.**
Use the following command to boot straight into your system's BIOS (if supported):

```command
ujust bios
```

## Secure Boot Instructions for Upstream Fedora Atomic Desktop Images

>[**Read more about rebasing from upstream Fedora Atomic Desktop images**](/General/Installation_Guide/alternate-install-guide.md)

Rebasing from Fedora Silverblue, Fedora Kinoite, etc. to Bazzite.

If you're rebasing from a Fedora Atomic Desktop image and use Secure Boot, then follow our [README](https://github.com/ublue-os/bazzite/blob/main/README.md#secure-boot).
