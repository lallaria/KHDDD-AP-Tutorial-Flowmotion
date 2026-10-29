# KHDDD AP Flowmotion Tutorial Fix

Emergency fix for [KHDDD-AP](https://github.com/LuxMake/KHDDD-AP) players stuck in Sora's Traverse Town flowmotion tutorials (Flowmotion Basics in the First District, Flowmotion Combat in the Second District).
The AP connector strips flowmotion you haven't received yet, so those tutorials can't be finished.

While Sora is in Traverse Town and either tutorial is unfinished, this script grants full flowmotion.
Once both are done it does nothing, and the AP connector restores the flowmotion you've actually collected.
It works on Steam and Epic, and alongside any version of the KHDDD AP Companion mod.

## Install

1. Open the OpenKH Mod Manager with Kingdom Hearts Dream Drop Distance selected.
2. **Mods > Install a New Mod**, enter `lallaria/KHDDD-AP-Tutorial-Flowmotion`, and install.
3. Make sure the new mod is ticked, along with your KHDDD AP Companion mod.
4. Build:
   - Game closed: **Build and Run** as usual.
   - Game already running: **Build Only** (not Build and Run), then reload the Lua scripts in game with **F2**, then **F1**.

Reloading the scripts also restarts the AP connector, which reconnects to the AP client as usual.

## Remove

Once you're past the tutorials, untick the mod and build again. Leaving it on is harmless, since it only acts while one of those tutorials is unfinished.
