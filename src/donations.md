---
title: Credits and Donating
---

{% macro contributor(real_name, github, description, sponsor) -%}
    <div style="
    display: inline-flex;
    flex-direction: row;
    gap: 0.5rem;
    align-items: top;
    background-color: #00000066;
    border-radius: 24px;
    padding: 0.3rem;
    padding-right: 0.4rem;
    min-width: 200px;
    width: 100%;
    max-width: 335px;
    line-height: 1.1rem;"
    >
        {% if github %}
            <img
            src="https://github.com/{{ github }}.png?size=60" class="no-lightbox"
            loading="lazy"
            style="max-height:60px;
                border-radius: 24px;"
            >
        {% endif %}
        <div>
            {% if github %}
                <a href="https://github.com/{{ github }}">{{ real_name }}</a>
            {% else %}
                <span>{{ real_name }}</span>
            {% endif %}
            {% if sponsor %}
                <small>
                  <a
                    href="{{ sponsor }}"
                    style="
                      background-color: var(--md-primary-fg-color);
                      color: var(--md-primary-bg-color);
                      border: none;
                      padding: 1px 3px;
                      border-radius: 24px;"
                  >Sponsor</a>
                </small>
            {% endif %}
            <div><small>{{ description or "" }}</small></div>
        </div>
    </div>
{%- endmacro %}

## Bazzite Maintainers & Core Contributors

Love Bazzite and want to help sustain it's development?  Consider **sponsoring** the maintainers and contributors of the project.

<div style="display: flex; flex-wrap: wrap; gap: 0.4rem;">
{{ contributor("Kyle Gospodnetich", "KyleGospo", "Chronic Shit Disturber<br/><small>Founder & Lead Maintainer</small>", "https://github.com/sponsors/KyleGospo") }}
{{ contributor("Antheas Kapenekakis", "antheas", "Bazzite Maintainer, Handheld Daemon creator", "https://github.com/sponsors/antheas") }}
{{ contributor("HikariKnight", "HikariKnight", "Virtualization Support & Scripting", "https://github.com/sponsors/HikariKnight") }}
{{ contributor("Noel Miller", "noelmiller", "Installer Enhancements & Custom Image Tooling", "https://github.com/sponsors/noelmiller") }}
{{ contributor("RJ Trujillo", "EyeCantCU", "Tooling for CI/CD Pipelines & Initial Alternate Desktop Environment Support") }}
{{ contributor("Tulip Blossom", "tulilirockz", "OCI Image Virtuoso & Image Maintenance", "https://github.com/sponsors/tulilirockz") }}
{{ contributor("Brian Ketelsen", "bketelsen", "Tooling Expert") }}
{{ contributor("CheckYourFax", "CheckYourFax", "Community Support & Issue Wrangling") }}
{{ contributor("Zeglius", "Zeglius", "Scripting, Documentation Maintenance, Live ISOs Maintainer", "https://github.com/sponsors/Zeglius") }}
{{ contributor("Aarron Lee", "aarron-lee", "Scripting & Command-Line Utilities") }}
{{ contributor("Jan", "Jan200101", "Kernel Patches") }}
{{ contributor("Matthew Schwartz", "matte-schwartz", "Steam Gaming Mode Testing & Consulting") }}
{{ contributor("Bouhaa", "BoukeHaarsma23", "Steam Gaming Mode Testing & Consulting") }}
{{ contributor("Jason Nagin", "JasonN3", "Creator of Build Container Installer") }}
{{ contributor("Amélia", "ameliasvg", "Branding Manager") }}
{{ contributor("Sean Srock", "SuperRiderTH", "Animator") }}
{{ contributor("wolfyreload", "wolfyreload", "Visual Guides") }}
{{ contributor("Kurt Himebauch", "xXJSONDeruloXx", "ujust Extraordinaire") }}
{{ contributor("Atapi", "Sterophonick", "Driver Backports") }}
{{ contributor("XYNY", "xynydev", "Infographics & Alternate Custom Tooling") }}
{{ contributor("Crono", "EPOCHvoyager", "Minor Scripting, Pedantry Devotee") }}
{{ contributor("m2", "m2Giles", "Bug Fixes & Enhancements") }}
{{ contributor("FiftyDinar", "fiftydinar", "Bug Fixes & Enhancements") }}
{{ contributor("Marco Rodolfi", "RodoMa92", "Bug Fixes & Enhancements") }}
{{ contributor("RoyalOughtness", "RoyalOughtness", "Security Consulting", "https://github.com/sponsors/RoyalOughtness") }}
{{ contributor("Valerie", "valerie-tar-gz", "Technical Support & Social Media") }}
{{ contributor("termdisc", "termdisc", "Technical Support") }}
{{ contributor("Justin Garrison", "rothgar", "Developer Relations") }}
{{ contributor("Ian Off", "atimeofday", "QA Testing") }}
{{ contributor("Gareth Widlansky", "gerblesh", "Image Maintenance") }}
{{ contributor("Alex Banna", "abanna", "Prototyping") }}
{{ contributor("CharlieBros ", "CharlieBros", "Initial Language Translations") }}
{{ contributor("Tony", "cyrv6737", "Pilot") }}
{{ contributor("Benjamin Sherman", "bsherman", "Server Guy <sup>(uCore Lead Maintainer)</sup>") }}
{{ contributor("Niklas Haiden", "NiHaiden", "Galaxy Guy <sup>(Aurora Lead Maintainer)</sup>") }}
{{ contributor("Jorge Castro", "castrojo", "Dinosaur Guy <sup>(Bluefin Lead Maintainer)</sup>", "https://github.com/sponsors/castrojo") }}
</div>

>[**View the full list of Bazzite contributors in the Gitub repository**](https://github.com/ublue-os/bazzite/graphs/contributors) ([**Contribute**](/CONTRIBUTE.md))

[**Universal Blue contributors**](https://github.com/ublue-os) also directly impact development of Bazzite! Special thanks to Universal Blue's [**Contributor Emeritus**](https://github.com/ublue-os/main/blob/main/emeritus.md) who helped grow Universal Blue and Bazzite from the very beginning!

## Fedora Project

Bazzite would not exist without [**Fedora Linux**](https://fedoraproject.org/) since it is built directly on top of the [**Atomic variants**](https://fedoraproject.org/atomic-desktops/).

The Fedora Project does not take monetary donations, but values hardware donations and contributions to the project.

- [**Donating Hardware**](https://fedoraproject.org/wiki/Donations)
- [**Contributing**](https://fedoraproject.org/wiki/Contribute)

## Projects Included in Bazzite

We also encourage you to donate to the projects that are used in Bazzite which helps us keep open source sustainable!

<sub>(*If we missed software that is part of Bazzite and can be donated to, then [**please let us know**](https://github.com/KyleGospo/docs.bazzite.gg/issues) or [**PR a fix**](https://github.com/KyleGospo/docs.bazzite.gg/blob/main/src/donations.md)!*)</sub>

- [**Atuin**](https://github.com/sponsors/atuinsh)
- [**Bazaar**](https://github.com/sponsors/kolunmi)
- [**BORE Scheduler**](https://ko-fi.com/firelzrd)
- [**Blur My Shell**](https://github.com/sponsors/aunetx)
- [**Clapper**](https://liberapay.com/Clapper)
- [**Davincibox**](https://ko-fi.com/akzel94)
- [**Deja Dup**](https://liberapay.com/DejaDup)
- [**Extensions Manager**](https://github.com/sponsors/mjakeman)
- [**eza**](https://github.com/sponsors/cafkafk)
- [**fastfetch**](https://github.com/sponsors/LinusDierheimer)
- **fd: [David Peter](https://github.com/sponsors/sharkdp) and [Tavian Barnes](https://github.com/sponsors/tavianator)**
- **Flatpak**: *Currently migrating fiscal hosts*
- [**fzf**](https://github.com/sponsors/junegunn)
- [**freedesktop.org**](https://www.freedesktop.org/wiki/#donations)
- [**Gear Lever**](https://ko-fi.com/mijorus)
- [**GNOME**](https://www.gnome.org/donate/)
- [**GNOME themes for Firefox and Thunderbird**](https://www.patreon.com/rafaelmardojai)
- [**Hanabi**](https://ko-fi.com/jeffshee)
- [**Handheld Daemon**](https://github.com/sponsors/antheas)
- [**Homebrew**](https://github.com/Homebrew/brew#donations)
- [**Just Perfection**](https://buymeacoffee.com/justperfection)
- [**KDE**](https://kde.org/donate/)
- [**Logo Menu**](https://github.com/sponsors/Aryan20)
- [**Mozilla**](https://foundation.mozilla.org/en/?form=donate&gad_source=1)
- [**Pika Backup**](https://opencollective.com/pika-backup)
- [**Terra**](https://github.com/sponsors/FyraLabs)
- [**Thunderbird**](https://www.thunderbird.net/en-US/donate/)
- [**Warehouse**](https://ko-fi.com/heliguy)
- [**Waydroid**](https://opencollective.com/waydroid/donate)
- [**xone**](https://www.paypal.com/donate?hosted_button_id=BWUECKFDNY446)
- [**yq**](https://github.com/sponsors/mikefarah)

## Particular Recognition

- [**evlaV**](https://gitlab.com/evlaV) - For making Valve's code available publicly for SteamOS.
- [**Steam Deck Homebrew**](https://deckbrew.xyz) - For choosing to support distributions other than SteamOS despite the extra work, and a special thanks to [**PartyWumpus**](https://github.com/PartyWumpus) for getting Decky Loader working with SELinux for us.
- [**FOSS Torrents**](https://fosstorrents.com/distributions/bazzite/) - For providing torrents for Bazzite.
- [**Podman**](https://podman.io/) - For providing the container technology that Bazzite heavily uses.
- [**kernel-sync**](https://copr.fedorainfracloud.org/coprs/sentry/kernel-fsync/) - For containing patches that are now used in the [Bazzite Kernel](https://github.com/bazzite-org/kernel-bazzite).
- [**Valve**](https://www.valvesoftware.com/), [**Collabora**](https://www.collabora.com/), [**Igalia**](https://www.igalia.com/), & [**Arch Linux**](https://archlinux.org/) - For being the reason that [**SteamOS**](https://store.steampowered.com/steamos/) exists which is Bazzite's largest influence.


## Collaborated Projects

Desktop Linux projects that share resources with us.

- [**ChimeraOS**](https://chimeraos.org/) ([**Support**](https://opencollective.com/chimeraos/donate))
- [**Ultramarine Linux**](https://ultramarine-linux.org/) ([**Support**](https://github.com/sponsors/FyraLabs))
- [**Nobara Project**](https://nobaraproject.org/download-nobara/) ([**Support**](https://www.patreon.com/gloriouseggroll))
- [**Jovian NixOS**](https://jovian-experiments.github.io/Jovian-NixOS/) ([**Contribute**](https://jovian-experiments.github.io/Jovian-NixOS/contributing.html))
- [**OpenSUSE Aeon**](https://aeondesktop.github.io/) / [**OpenSUSE Kalpa**](https://en.opensuse.org/Portal:Kalpa) ([**Contribute**](https://en.opensuse.org/Portal:How_to_participate))
- [**Winblues**](https://blues.win/) ([**Support Upstream Projects**](https://blues.win/95/thanks/))
- [**secureblue**](https://secureblue.dev/) ([**Support**](https://secureblue.dev/donate))
- [**CachyOS**](https://cachyos.org/) ([**Support**](https://www.patreon.com/CachyOS))

## Maintainers and Contributors of Other Universal Blue Projects

Check out the other Universal Blue end-user custom Fedora images especially if you want an experience similar to Bazzite without a focus in PC gaming. The contributors and maintainers involved with the other Universal Blue projects will usually fix bugs in their images that will eventually be fixed in Bazzite around the same time if the same issues occur in both.

- [**Aurora**](https://getaurora.dev/): Your stable, privacy-respecting and ultimate productivity OS.
- [**Bluefin**](https://projectbluefin.io/): The next generation Linux workstation, designed for reliability, performance, and sustainability.
- [**uCore**](https://projectucore.io): An OCI base image of [**Fedora CoreOS**](https://fedoraproject.org/coreos/) with batteries included.
