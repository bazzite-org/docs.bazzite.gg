---
authors:
  - "@nicknamenamenick"
tags:
  -  Software
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=2639", "fetched_at": "2024-09-03 16:43:07.277727+00:00"}-->
<!-- ANCHOR_END: METADATA -->

## What is Homebrew?

![Homebrew|332x500, 15%](../img/Homebrew.png)

!!! note
    
    Any package that requires root privileges will either need a rootful Distrobox container or has to be layered with `rpm-ostree`.

Homebrew is a package manager that installs packages to their own prefix, and is used strictly for command-line interface (CLI) and terminal user interface (TUI) applications. Note that graphical applications via the `--cask` flag are Mac specific and do not work on Linux. 

Install packages in a host terminal with this **command**:

```
brew install <package>
```

### Project Website

https://brew.sh/

<hr>

[ **← Back to Installing and Managing Software on Bazzite**](./index.md)
