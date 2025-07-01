---
authors:
  - "@nicknamenamenick"
  - "@termdisc"
tags:
  - Guide
---

<!-- ANCHOR: METADATA -->
<!--{"url_discourse": "https://universal-blue.discourse.group/docs?topic=2656", "fetched_at": "2024-09-03 16:43:09.533219+00:00"}-->
<!-- ANCHOR_END: METADATA -->

## **Steam Setup**

Steam can run Windows games on Linux. It utilizes a wide range of projects and patches all packed into a piece of software built-in to Steam called [Proton](https://github.com/ValveSoftware/Proton) for Windows compatibility.

### Forcing A Specific Proton / Steam Play Tool Version

!!! warning 
    
    Games that use Denuvo Anti-Tamper DRM consider changing Proton versions as activiating the game on different hardware which may cause you to get locked out of the game if you change the Proton version more than 5 times within a 24 hour period.

- Games with a Linux port will be used by default on Desktop images.
- Valve selects the default runner on _Handheld/HTPC_ images.
- Some games run better with a specific version of Proton or forcing the Linux runtime.
  - Run that specific version by going into the game's **Properties** > **Compatibility** > **Force the use of a specific Steam Play compatibility tool**
##### Image Example
![Cog Icon > Properties|690x284, 75%](../img/Steam_Setup_Cog.png)
![Compatibility tab|690x492, 75%](../img/Steam_Setup_Compat_Tab.png)

## **Non-Steam Games**

**It is recommended to use [Lutris](https://lutris.net/games?q=&ordering=-popularity&paginate_by=100) for _most_ non-steam games**.  There are edge cases with specific launchers and games that have a better working alternative than Lutris, but Lutris is the most supported option for PC games outside of Steam on Bazzite outside of special scenarios.

### Lutris

Lutris offers two methods to play Windows games on Bazzite.  Community-driven scripts or manually adding the executable.  It is **highly recommended to use the manual method** as some scripts are poorly maintained.

#### Lutris Installer Scripts

![Example of Lutris installers|623x500, 75%](../img/Lutris_Setup_Installers.png)

Lutris is game management software that doubles as a WINE front-end for Windows games. Several games and launchers can be installed by searching for the title and using one of the installer scripts for it.

#### Manually adding a Windows game to Lutris

![Add Locally Installed Game|632x496, 75%](../img/Lutris_Setup_Add_Local_Game.png)

![Lutris manually adding games example 1|690x213](../img/Lutris_Setup_Add_Local_Game_1.png)

However if your game is not listed or doesn't work with the provided script, then manually add the executable. It will need a [**prefix directory**](/Gaming/Managing_and_modding_games.md#non-steam-games-prefix-management) created somewhere, but by default it will use the `~/Games` directory for each game.


#### Lutris Shortcuts

![Lutris_Right_Click_Menu|421x447, 75%](../img/Lutris_Setup_Shortcut.png)

Right clicking a game on Lutris gives the option to add it as a non-Steam game (useful for Steam Gaming Mode), create a desktop shortcut, or an application menu shortcut.

### Epic Games, GOG, and Amazon Games Launcher

[**Heroic Games Launcher**](https://flathub.org/apps/com.heroicgameslauncher.hgl) is recommended for games that were purchased from Epic Games Launcher, GOG, and Amazon Games Launcher.

### Game Pass and Microsoft Store Games (Xbox Cloud Gaming)

!!! note
    
    A Game Pass Ultimate subscription is required to use [Xbox Cloud Gaming](https://www.xbox.com/en-us/play) except for select games like Fortnite.

Games installed from the Microsoft Store do **not** run unless you use a Xbox Cloud Gaming client like [**Greenlight**](https://github.com/unknownskl/greenlight). Fortnite can also be played via this method **without** a Game Pass subscription.

<hr>

[**<-- Back to Gaming Guide**](./index.md)
