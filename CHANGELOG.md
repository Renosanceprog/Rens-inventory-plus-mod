# Changelog

All notable changes to the **Inventory+** project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-16
### Released
**The "Gold" Release.** Fully functional inventory persistence system ready for survival gameplay.

### Added
- **Script API Integration:** Implemented `@minecraft/server` (v1.13.0) for robust inventory manipulation.
- **Save/Load System:**
    - Added `main.js` script to handle inventory serialization.
    - Implemented a "Double Barrel" buffer system to support full 36-slot storage.
    - Added dynamic coordinate calculation to support saving in Overworld (Y=-64) and Nether/End (Y=0).
- **Event Driven Architecture:**
    - Added `/scriptevent` triggers (`invplus:save_trigger` and `invplus:load_trigger`) to separate game design from logic.
- **Assets:**
    - Added custom icons for Save/Load items.
    - Added sound effects (`random.levelup` for save, `random.pop` for load) for user feedback.

### Changed
- Refactored `button_checker.mcfunction` to act as a signal transmitter rather than handling logic directly.
- Migrated item detection from basic `testfor` loops to efficient `execute as @e` listeners.

### Fixed
- Fixed a crash where the script would attempt to access containers in unloaded chunks (added safety checks).
- Fixed an issue where the `scriptevent` listener received `undefined` IDs (updated from `.messageId` to `.id`).

---

## [0.2.0] - 2025-12-XX
### Alpha
**The "Addon" Conversion.** Migrated the project from a world save to a Behavior Pack format.

### Added
- Initial `manifest.json` setup.
- Basic folder structure (`functions/`, `scripts/`, `items/`).
- `button_checker.mcfunction` for detecting dropped items.

### Known Issues
- Save system is non-functional; Script API logic is not yet implemented.
- Items are detected but do not trigger persistence.

---

## [0.1.0] - 2025-10-XX
### Prototype
**Proof of Concept.** Initial implementation using in-game Command Blocks.

### Added
- Basic logic using Command Blocks to detect items.
- Concept for "Save" and "Load" mechanics.