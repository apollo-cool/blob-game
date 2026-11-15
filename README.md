
 [![Made with Godot](https://img.shields.io/badge/Made%20with-Godot-478CBF?style=social&logo=godot%20engine)](https://godotengine.org)

# Blobbing It

![Blobbing It banner](screenshots/banner.png)

> **Blob it now.** A small, free pixel-art platformer starring a little green blob.
> Run, jump, bounce, and fall your way through four short levels — right in your browser. No download needed.

[![Play on itch.io](https://img.shields.io/badge/Play_on_itch.io-FF2449?style=for-the-badge&logo=itchdotio&logoColor=white)](https://cactifystudios.itch.io/blobbing-it)
[![Godot 4.7](https://img.shields.io/badge/Godot-4.7-478CBF?style=for-the-badge&logo=godotengine&logoColor=white)](https://godotengine.org)
[![HTML5](https://img.shields.io/badge/Platform-HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://cactifystudios.itch.io/blobbing-it)
[![Free](https://img.shields.io/badge/Price-Free-2EA44F?style=for-the-badge)](https://cactifystudios.itch.io/blobbing-it)

**[▶ Play Blobbing It free on itch.io](https://cactifystudios.itch.io/blobbing-it)**

---

## About

**Blobbing It** is a 2D single-player platformer by **Cactify Studios**, built with
[Godot](https://godotengine.org) and published on itch.io. You play a bright-green
blob with two big eyes, exploring dark, neon-lit cave levels built from glowing
cyan platforms, gem-studded walls, and red bounce pads.

The goal in every level is the same: **reach the green flag**. Small red flags
act as checkpoints — fall into the void and you pop back to the last one you
passed. There are no enemies to fight, no timer, and no lives to lose. Just
you, the jumps, and four levels that each twist the formula a little.

- 🟢 **4 handcrafted levels**, picked from a level-select screen — play them in any order
- 🎮 **Keyboard-only gameplay** — move, jump, and hold keys to keep going
- 🚩 **Checkpoints** that save your place when you fall
- 🔴 **Bounce pads** that launch you across gaps (and one level built entirely around them)
- ⬇️ **A dropper level** where the only way is down
- 💬 **In-world signs** that teach, warn, and joke with you as you play
- 🎵 **Background music** throughout

## Demo video

Watch the 41-second gameplay demo — real captured playthrough footage of all
four levels, with narration:

🎬 **[Blobbing_It_Demo.mp4](Blobbing_It_Demo.mp4)** (1920×1080, 41s)

## Screenshots

| Title | Level select |
|---|---|
| ![Title screen](screenshots/title.png) | ![Level select](screenshots/level-select.png) |

| Level 1 | Level 2 |
|---|---|
| ![Level 1](screenshots/level-1.png) | ![Level 2](screenshots/level-2.png) |

| Level 3 | Level 4 |
|---|---|
| ![Level 3](screenshots/level-3.png) | ![Level 4](screenshots/level-4.png) |

_All screenshots are real captures from the shipped web build._

## How to play

1. Open the **[itch.io page](https://cactifystudios.itch.io/blobbing-it)** in any modern browser.
2. Click **Run game**, then **PLAY** on the title screen.
3. Pick a level (**1–4**) with the mouse.
4. Reach the **green flag** to finish the level. Finishing returns you to the level-select screen.

No install, no account, no save file — the game runs entirely in the browser at 960×540.

## Controls

| Key | Action |
|---|---|
| **A** / **←** | Move left |
| **D** / **→** | Move right |
| **W** / **↑** / **Space** | Jump |
| **Mouse** | Title screen, PLAY button, and level-select buttons |

**Tips**

- **Hold the key down.** A single tap only moves the blob a short step — sustained
  presses are how you walk, climb, and escape a cluster of bounce pads.
- The jump is high — about one platform-story — so short hops and full jumps
  both matter.
- **S / ↓**, **Enter**, and **Esc** do nothing in the current build: there is no
  crouch, no drop-through, and no pause menu. To leave a level early, reload
  the page (or finish the level to return to level select).

## Levels

### Level 1 — Welcome!

The tutorial. Signs teach the basics: **WELCOME!**, **STICK TO THE TOP**,
**AVOID THE BOUNCEPADS**, **DON'T FALL**. Learn to walk, jump, and thread past
the red bounce-pad domes on the first platform, grab the red-flag checkpoint,
and reach the goal — **YOU MADE IT!**

### Level 2 — Reach your maximum height!

A climb. The sign says it all: **REACH YOUR MAXIMUM HEIGHT!** Chain jumps up
the platforms, past a long row of gem tiles, to the green flag at the top.

### Level 3 — Bounce your way through…

The bounce-pad level. A long row of red pads launches the blob forward
automatically while you steer — and the signs along the way have opinions:
**BOUNCE YOUR WAY THROUGH…**, **ARE YOU SURE ITS -**, **WARNING**, and the
infamous dead-end joke, _I GUESS YOU "CHOSED" THIS WAY... GOODBYE._ Don't trust
every flat path. The real route climbs the gem stairs to the flag — and the
game's last word on the matter is **BUT YOU DESERVE…**

### Level 4 — Dropper level!

**DROPPER LEVEL! FALL TO THE BOTTOM.** A vertical shaft lined with gem-column
walls and staggered platforms. Walk off edges, steer with **A** / **D** in
mid-air, and land each platform on the way down. Miss one and you're back at
the top.

## Build & tech notes

- **Engine:** Godot **4.7.2** (stable, official) — single-threaded Web export.
- **Format:** HTML5 / WebGL, 960×540, keyboard input, background music.
- **Project structure (from the shipped build):** scenes for the title screen,
  level selector, four levels, the player, level buttons, and bounce pads;
  scripts for the player (movement + animations), levels, level selection,
  title screen, death screen, and enemies.
- **Not encountered during play:** the build also contains enemy, lava, and
  death-screen assets, but no enemies, lava, or death screen appeared in the
  four levels as played — the cyan gems set into the walls likewise behaved as
  decoration (touching them did not collect anything). Treat those assets as
  unused or reserved for future levels unless a later build shows otherwise.
- **Current-build quirks, verified in play:** finishing a level returns
  straight to level select with no "level complete" splash; there is no pause,
  quit, or in-level exit; bounce pads in Level 1 did not visibly bounce the
  blob, while the Level 3 pads launch it repeatedly.

## Credits

- **Game:** [Cactify Studios](https://cactifystudios.itch.io/) — _"a game
  development studio that aims at making the greatest games ever!"_
- **Engine:** [Godot Engine](https://godotengine.org) (MIT licensed)
- **Fonts:** Pixel fonts from [Kenney](https://kenney.nl) (CC0) and Upheaval.
- **Play it here:** <https://cactifystudios.itch.io/blobbing-it>

## License

No license is stated on the itch.io page. All game content belongs to its
respective owners — please don't redistribute the game files without the
author's permission. _(Maintainers: add a license file here when one is chosen.)_

---

_Blob it now._ 🟢
