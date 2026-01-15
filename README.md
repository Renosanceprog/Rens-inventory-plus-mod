# Inventory+ Addon for Minecraft Bedrock

**Current Version:** v1.0.0

**Inventory+** is a specialized utility for **Redstoners and Technical Players** on Minecraft Bedrock. 

While it comes pre-loaded with essential redstone kits for circuit building, its true power lies in the **Custom Persistence System**. You can instantly snapshot your entire personal inventory—hotbar into a custom "Kit" and reload it at will.

Whether you are resetting a test environment or switching between build phases, this addon uses the **Script API** to preserve item NBT data (enchantments, durability, custom names) perfectly—something basic command block systems cannot do.

---

## 🚀 Features

* **Instant Save/Load:** Save your current inventory setup with a single action.
* **NBT Preservation:** Keeps all enchantments, durability, and lore intact.
* **Multi-Dimension Support:** Works safely in the Overworld, Nether, and End.
* **Multi-Player Friendly:** Each player gets their own unique storage file (`kit_PlayerName`).
* **Clean UI:** Uses custom items and sounds for a polished experience.

---

## 🛠️ Installation & Requirements
### Dependencies
This addon requires the `@minecraft/server` module (version `1.13.0` or higher). This is handled automatically by the `manifest.json`.

---

## 🎮 How to Use

### 1. Inventory+ access
1.  **Drop the Inventory+ access item** (Press `Q` on PC or drag it out of the hotbar on mobile).
2.  You will be given 4 presets: Circuit, Component, Farm, and Filler
3.  **Drop the chosen option**.
4.  Your inventory will be filled with the preset kit along with the Inventory+ access on the bottom-right corner of your inventory.
   
### 2. Saving a custom inventory Kit
1.  Organize your inventory exactly how you want it (Hotbar and inventory).
2.  Hold the **Save Kit** item.
3.  **Drop the item**.
4.  You will hear a "Level Up" sound, confirming your kit is saved to the disk.

### 3. Loading a custom inventory Kit
1.  Hold the **Load Kit** item.
2.  **Drop the item**.
3.  Your current inventory will be cleared and replaced instantly with your saved kit.

---

## ⚙️ Technical Overview (Under the Hood)

For developers curious about the implementation:

1.  **Event Listeners:**
    * The addon uses `button_checker.mcfunction` to detect specific item entities when they are dropped.
    * It triggers a `/scriptevent` command (`invplus:save_trigger`) for the custom inventory feature, while it uses native mcfunctions for the preset kits.

2.  **The "Buffer" System:**
    * Since the Script API cannot directly serialize player inventories to disk, the script spawns two temporary **Barrels** at the bottom of the world (Y=-64 in Overworld, Y=0 in Nether/End).
    * It maps the player's 36 slots into these barrels.

3.  **Persistence:**
    * The system uses the `structure save` command to write the Barrels (and their contents) to a `.mcstructure` file on the device's disk.
    * When loading, it places the structure back, transfers items to the player, and cleans up the temporary blocks.

---

## 📜 Changelog

See [CHANGELOG.md](CHANGELOG.md) for a full history of updates.

---

**Created by Renosance**
*a long time minecraft player who had enough of inventory switching*
