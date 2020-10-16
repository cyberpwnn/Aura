#loader contenttweaker

import mods.contenttweaker.Item;
import crafttweaker.game.IGame;

var ac = mods.contenttweaker.VanillaFactory.createItem("chaoticconstruct");
ac.maxStackSize = 64;
ac.rarity = "rare";
ac.register();
game.setLocalization("item.contenttweaker.chaoticconstruct.name", "Chaotic Construct");