import { world, system } from "@minecraft/server";

// --- LISTENER: Waiting for /scriptevent command ---
system.afterEvents.scriptEventReceive.subscribe((event) => {
    const eventId = event.id; // e.g., "invplus:save_trigger"
    const player = event.sourceEntity;

    // 1. Safety Check: Ensure a player sent this command
    if (!player || player.typeId !== "minecraft:player") return;

    // 2. Route the signal
    if (eventId === "invplus:save_trigger") {
        saveKit(player);
    } 
    else if (eventId === "invplus:load_trigger") {
        loadKit(player);
    }
});

// --- HELPER: Get Dynamic Coordinates based on Dimension ---
function getSafeSwapPos(player) {
    const loc = player.location;
    const dimId = player.dimension.id; // Get "minecraft:overworld", "minecraft:nether", etc.

    // Default to y=0 (safe for Nether/End)
    let swapY = 0; 

    // If we are in the Overworld, go down to bedrock layer at -64
    if (dimId === "minecraft:overworld") {
        swapY = -64;
    }

    return { 
        x: Math.floor(loc.x), 
        y: swapY, 
        z: Math.floor(loc.z) 
    };
}

// --- SAVE FUNCTION ---
function saveKit(player) {
    const dimension = player.dimension;
    const structureName = `kit_${player.name.replace(/\s/g, "_")}`;

    // 1. Calculate Dynamic Positions
    const posA = getSafeSwapPos(player);
    const posB = { x: posA.x + 1, y: posA.y, z: posA.z }; // Barrel B is right next to Barrel A

    // 2. Spawn Barrels 
    // We use dynamic posA.y instead of hardcoded -64
    dimension.runCommand(`setblock ${posA.x} ${posA.y} ${posA.z} barrel`);
    dimension.runCommand(`setblock ${posB.x} ${posB.y} ${posB.z} barrel`);

    const playerInv = player.getComponent("inventory").container;
    
    // We use a try-catch block here so if something fails (e.g. block not found),
    // we still clean up the barrels at the end.
    try {
        const containerA = dimension.getBlock(posA).getComponent("inventory").container;
        const containerB = dimension.getBlock(posB).getComponent("inventory").container;

        containerA.clearAll();
        containerB.clearAll();

        let itemsSaved = 0;

        // 3. Loop and Sort items
        for (let i = 0; i < 36; i++) {
            const item = playerInv.getItem(i);
            if (item) {
                if (i < 27) {
                    containerA.setItem(i, item);
                } else {
                    containerB.setItem(i - 27, item);
                }
                itemsSaved++;
            }
        }

        // 4. Save Structure (From dynamic posA to dynamic posB)
        dimension.runCommand(`structure save "${structureName}" ${posA.x} ${posA.y} ${posA.z} ${posB.x} ${posB.y} ${posB.z} false disk`);
        player.sendMessage(`§aSuccess! Saved ${itemsSaved} items.`);
        player.playSound("random.levelup");

    } catch (e) {
        player.sendMessage(`§cError: ${e}`);
    }

    // 5. Cleanup (Restore bedrock)
    dimension.runCommand(`setblock ${posA.x} ${posA.y} ${posA.z} bedrock`);
    dimension.runCommand(`setblock ${posB.x} ${posB.y} ${posB.z} bedrock`);
}

// --- LOAD FUNCTION ---
function loadKit(player) {
    const dimension = player.dimension;
    const structureName = `kit_${player.name.replace(/\s/g, "_")}`;

    // 1. Calculate Dynamic Positions
    const posA = getSafeSwapPos(player);
    const posB = { x: posA.x + 1, y: posA.y, z: posA.z };

    try {
        // 2. Load Structure
        dimension.runCommand(`structure load "${structureName}" ${posA.x} ${posA.y} ${posA.z}`);
        
        const playerInv = player.getComponent("inventory").container;
        const containerA = dimension.getBlock(posA).getComponent("inventory").container;
        const containerB = dimension.getBlock(posB).getComponent("inventory").container;

        // 3. Transfer Items
        playerInv.clearAll();
        let itemsLoaded = 0;

        for (let i = 0; i < 36; i++) {
            let item;
            if (i < 27) item = containerA.getItem(i);
            else item = containerB.getItem(i - 27);

            if (item) {
                playerInv.setItem(i, item);
                itemsLoaded++;
            }
        }
        player.sendMessage(`§eLoaded ${itemsLoaded} items.`);
        player.playSound("random.pop");

    } catch (e) {
        player.sendMessage("§cNo saved kit found!");
    }

    // 4. Cleanup
    dimension.runCommand(`setblock ${posA.x} ${posA.y} ${posA.z} bedrock`);
    dimension.runCommand(`setblock ${posB.x} ${posB.y} ${posB.z} bedrock`);
}