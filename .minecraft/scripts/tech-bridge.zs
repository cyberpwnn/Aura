import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import mods.artisanworktables.builder.RecipeBuilder;

val yelloriumDust = <bigreactors:dustyellorium>;
val cyaniteDust = <bigreactors:dustcyanite>;
val blutoniumIngot = <bigreactors:ingotblutonium>;
val starmetalDust = <astralsorcery:itemcraftingcomponent:2>;
val yelloriumIngot = <bigreactors:ingotyellorium>;
val cyaniteIngot = <bigreactors:ingotcyanite>;
val blutoniumDust = <bigreactors:dustblutonium>;
val starmetalIngot = <astralsorcery:itemcraftingcomponent:1>;
val uraniumIngot = <immersiveengineering:metal:5>;
val uraniumDust = <immersiveengineering:metal:14>;
val yelloriumBlock = <bigreactors:blockyellorium>;
val uraniumBlock = <immersiveengineering:storage:5>;

val potentia = <aspect:potentia>;
val instrumentum = <aspect:instrumentum>;
val perditio = <aspect:perditio>;
val alienis = <aspect:alienis>;

val cyaniteManaCost = 7500;
val infinityPowderInstability = 32;

val researchYellorium = "METALPURIFICATION";
val researchYelloriumConversion = "FOCUSEXCHANGE";
val researchInfinityPowder = "BASEELDRITCH";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Remove Cyanite Reprocessing Recipes
recipes.remove(<bigreactors:ingotblutonium>);
recipes.remove(<bigreactors:ingotcyanite>);

// Allow converting between yellorium & uranium
SalisMundus.addSingleConversion(yelloriumBlock, uraniumBlock, researchYelloriumConversion);
SalisMundus.addSingleConversion(uraniumBlock, yelloriumBlock, researchYelloriumConversion);

// TC Alchemy: Starmetal -> Uranium (4 Potentia, 2 Perditio)
mods.thaumcraft.Crucible.registerRecipe("uranium-dust", researchYellorium, uraniumDust, starmetalDust, [potentia * 4, perditio * 2]);
mods.thaumcraft.Crucible.registerRecipe("uranium-ingot", researchYellorium, uraniumIngot, starmetalIngot, [potentia * 4, perditio * 2]);

// BOT Mana Infusion: Cyanite -> Blutonium
mods.botania.ManaInfusion.addInfusion(blutoniumDust, cyaniteDust, cyaniteManaCost);
mods.botania.ManaInfusion.addInfusion(blutoniumIngot, cyaniteIngot, cyaniteManaCost);

// Infinity Dust
mods.thaumcraft.Infusion.registerRecipe("infinitypowder", researchInfinityPowder, <enderio:block_infinity:1>, infinityPowderInstability, [instrumentum * 82, alienis * 56], <appliedenergistics2:sky_stone_block>, [<astralsorcery:itemusabledust>, <botania:manaresource:1>, <bloodmagic:component:4>, <embers:crystal_ember>]);

// Arcane Construct
RecipeBuilder.get("mage")
  .setShaped([
    [<thaumcraft:ingot:1>, <thaumadditions:seal_symbol>.withTag({Aspect: "machina"}), <botanicadds:rune_energy>, <thaumadditions:seal_symbol>.withTag({Aspect: "instrumentum"}), <thaumcraft:ingot:1>],
    [<taiga:abyssum_dust>, <embers:flame_barrier>, <enderio:item_alloy_ball:8>, <embers:flame_barrier>, <taiga:nihilite_dust>],
    [<bloodmagic:sigil_transposition>, <botania:manaresource:14>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}), <botania:manaresource:14>, <bloodarsenal:sigil_lightning>],
    [<appliedenergistics2:material:10>, <naturesaura:sky_ingot>, <tconstruct:binding>.withTag({Material: "psigem"}), <naturesaura:sky_ingot>, <appliedenergistics2:material:10>],
    [<thaumcraft:ingot:1>, <enderio:item_basic_capacitor:2>, <embers:glimmer_shard>.withTag({light: 800}), <enderio:item_basic_capacitor:2>, <thaumcraft:ingot:1>]])
  .setFluid(<liquid:soularium> * 5570)
  .addTool(<artisanworktables:artisans_grimoire_elementium>, 350)
  .addTool(<artisanworktables:artisans_quill_gold>, 350)
  .addTool(<artisanworktables:artisans_solderer_diamond>, 350)
  .addOutput(<contenttweaker:arcaneconstruct> * 8)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct> * 8, 0.2)
  .setExtraOutputTwo(<contenttweaker:arcaneconstruct> * 4, 0.4)
  .setExtraOutputThree(<contenttweaker:arcaneconstruct> * 2, 0.6)
  .create();