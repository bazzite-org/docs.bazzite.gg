---
title: "ZeroTier setup"
authors:
  - "@Zeglius"
---

!!! warning
    Setup requires **layering** and is [not recommended](/Installing_and_Managing_Software/rpm-ostree/#major-caveats-using-rpm-ostree).

## Installing

Select, copy and paste the following to the terminal (pasting is <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd>)

```sh
sudo tee >/dev/null /etc/yum.repos.d/zerotier.repo <<'EOF'
[zerotier]
name=ZeroTier, Inc. RPM Release Repository
baseurl=https://repo.zerotier.com/yum/$basearch/
enabled=1
gpgcheck=1
gpgkey=https://download.zerotier.com/contact@zerotier.com.gpg
EOF
```

Reboot, and run this at the terminal:

```sh
systemctl enable zerotier-one.service
```

## Uninstalling

Select, copy and paste the following to the terminal (pasting is <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd>)

```sh
sudo systemctl disable zerotier-one.service
sudo rpm-ostree uninstall zerotier-one
```

Reboot, and run this at the terminal:

```sh
sudo rm -fv /etc/yum.repos.d/zerotier.repo
```
