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


// Allying Palladium
mods.tconstruct.Alloy.addRecipe(<liquid:palladium_fluid> * 15, [<liquid:platinum> * 3, <liquid:starmetal> * 5, <liquid:pulsating_iron> * 7]);

// Allying Cyanite
mods.tconstruct.Alloy.addRecipe(<liquid:cyanite> * 200, [<liquid:signalum> * 25, <liquid:starmetal> * 25, <liquid:pulsating_iron> * 75, <liquid:cobalt> * 25]);

// Redstone Alloy (Earlier Game)
mods.tconstruct.Alloy.addRecipe(<liquid:redstone_alloy> * 200, [<liquid:redstone> * 100, <liquid:steel> * 75, <liquid:pulsating_iron> * 25]);

// Mundane Construct
RecipeBuilder.get("mage")
  .setShaped([
    [<conarm:armor_trim>.withTag({Material: "endstone"}), <thaumcraft:focus_2>, <conarm:armor_trim>.withTag({Material: "endstone"})],
    [<thaumcraft:seal:5>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}), <thaumcraft:seal:3>],
    [<psi:material>, <tconstruct:binding>.withTag({Material: "terrasteel"}), <bloodarsenal:base_item:2>]])
  .addTool(<ore:artisansGrimoire>, 18)
  .addTool(<ore:artisansLens>, 26)
  .addOutput(<contenttweaker:mundaneconstruct> * 16)
  .create();

// Plate...
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:plateIron>, null, null],
    [null, <ore:plateIron>, null],
    [null, null, <ore:plateIron>],
  .addOutput(<thaumcraft:plate:1> * 3)
  .create();

// Arcane Construct
RecipeBuilder.get("mage")
  .setShaped([
    [null, <conarm:armor_trim>.withTag({Material: "fairy"}), <appliedenergistics2:material:12>, <conarm:armor_trim>.withTag({Material: "fairy"}), null],
    [null, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <contenttweaker:mundaneconstruct>, <botanicadds:gaia_shard>, null],
    [<conarm:armor_trim>.withTag({Material: "fairy"}), <contenttweaker:mundaneconstruct>, <tconstruct:tough_binding>.withTag({Material: "palladium"}), <contenttweaker:mundaneconstruct>, <conarm:armor_trim>.withTag({Material: "fairy"})],
    [null, <thaumcraft:nugget:7>, <contenttweaker:mundaneconstruct>, <bloodmagic:sigil_phantom_bridge>.withTag({}), null],
    [null, <conarm:armor_trim>.withTag({Material: "fairy"}), <appliedenergistics2:material:12>, <conarm:armor_trim>.withTag({Material: "fairy"}), null]])
  .addTool(<ore:artisansGrimoire>, 350)
  .addTool(<ore:artisansQuill>, 350)
  .addTool(<ore:artisansSolderer>, 350)
  .addOutput(<contenttweaker:arcaneconstruct> * 4)
  .create();

// Aether Construct
RecipeBuilder.get("mage")
  .setShaped([
    [<tconstruct:large_plate>.withTag({Material: "starmetal"}), <botania:lens:21>.withTag({}), <tconstruct:large_plate>.withTag({Material: "starmetal"})],
    [<psi:material:2>, <thaumicaugmentation:augment_vis_battery>, <psi:material:2>],
    [<tconstruct:large_plate>.withTag({Material: "starmetal"}), <embers:aspectus_dawnstone>, <tconstruct:large_plate>.withTag({Material: "starmetal"})]])
  .addTool(<ore:artisansLens>, 1000)
  .addOutput(<contenttweaker:aetherconstruct> * 8)
  .setExtraOutputOne(<contenttweaker:aetherconstruct> * 3, 0.1)
  .setExtraOutputTwo(<contenttweaker:aetherconstruct> * 2, 0.2)
  .setExtraOutputThree(<contenttweaker:aetherconstruct>, 0.3)
  .create();

// Chaotic Construct
RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <botania_tweaks:compressed_tiny_potato_8>, null, null],
    [null, <draconicevolution:wyvern_core>, <thaumadditions:adaminite_ingot>, <draconicevolution:wyvern_core>, null],
    [<psi:psi_decorative:2>, <thaumadditions:adaminite_ingot>, <minecraft:nether_star>, <thaumadditions:adaminite_ingot>, <psi:psi_decorative:2>],
    [<botania:storage:4>, <draconicevolution:wyvern_core>, <thaumadditions:adaminite_ingot>, <draconicevolution:wyvern_core>, <botania:storage:4>],
    [null, <taiga:palladium_block>, <artisanworktables:artisans_pan_elementium>, <taiga:palladium_block>, null]])
  .setFluid(<liquid:liquid_death> * 16000)
  .setSecondaryIngredients([<contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<contenttweaker:chaoticconstruct> * 4)
  .create();

// Cheats
RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <contenttweaker:arcaneconstruct>, null, null],
    [null, <contenttweaker:arcaneconstruct>, <thaumadditions:adaminite_ingot>, <contenttweaker:arcaneconstruct>, null],
    [<contenttweaker:arcaneconstruct>, <thaumadditions:mithrillium_ingot>, <contenttweaker:chaoticconstruct>, <thaumadditions:mithrillium_ingot>, <contenttweaker:arcaneconstruct>],
    [<thaumadditions:mithrillium_ingot>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <thaumadditions:mithrillium_ingot>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addOutput(<thaumcraft:curio>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:chaoticconstruct>, <botania:manaresource:5>, null, <botania:manaresource:5>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>, <botania:manaresource:5>, <contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addOutput(<botania:pool:1>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>],
    [<contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>],
    [<contenttweaker:arcaneconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <thaumcraft:curio>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:arcaneconstruct>],
    [<contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>],
    [<contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<appliedenergistics2:creative_energy_cell>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, null, null, null],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, null, null],
    [null, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>],
    [null, null, <contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>, null],
    [null, null, <contenttweaker:arcaneconstruct>, null, <contenttweaker:arcaneconstruct>]])
  .setSecondaryIngredients([<bloodarsenal:sigil_augmented_holding>, <bloodmagic:sigil_air>, <bloodarsenal:sigil_swimming>.withTag({}), <bloodarsenal:sigil_ender>.withTag({}), <bloodarsenal:sigil_augmented_holding>, <bloodarsenal:sigil_lightning>, <bloodarsenal:sigil_divinity>.withTag({}), <bloodarsenal:sigil_sentience>, <bloodmagic:sigil_divination>])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<bloodmagic:sacrificial_dagger:1>.withTag({sacrifice: 0 as byte}))
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"})],
    [<contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>, <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>],
    [<tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <tconstruct:large_plate>.withTag({Material: "obsidiorite"})],
    [<tconstruct:large_plate>.withTag({Material: "obsidiorite"}), <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <tconstruct:large_plate>.withTag({Material: "obsidiorite"})],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<tconstruct:materials:50>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<tconstruct:large_plate>.withTag({Material: "sponge"}), <tconstruct:large_plate>.withTag({Material: "sponge"}), <contenttweaker:chaoticconstruct>, <tconstruct:large_plate>.withTag({Material: "sponge"}), <tconstruct:large_plate>.withTag({Material: "sponge"})],
    [<tconstruct:large_plate>.withTag({Material: "sponge"}), <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <tconstruct:large_plate>.withTag({Material: "sponge"})],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>],
    [<tconstruct:large_plate>.withTag({Material: "sponge"}), <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <tconstruct:large_plate>.withTag({Material: "sponge"})],
    [<tconstruct:large_plate>.withTag({Material: "sponge"}), <tconstruct:large_plate>.withTag({Material: "sponge"}), <contenttweaker:chaoticconstruct>, <tconstruct:large_plate>.withTag({Material: "sponge"}), <tconstruct:large_plate>.withTag({Material: "sponge"})]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<thaumcraft:creative_flux_sponge>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <thaumcraft:curio>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:arcaneconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:arcaneconstruct>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<embers:creative_ember_source>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>, <contenttweaker:arcaneconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <thaumcraft:creative_flux_sponge>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <thaumicaugmentation:rift_jar>.withTag({seed: 1337, size: 100}), <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1000)
  .addTool(<artisanworktables:artisans_file_platinum>, 1000)
  .addOutput(<thaumicwonders:creative_essentia_jar>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<thaumcraft:curio>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <thaumcraft:curio>],
    [<contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <botania_tweaks:compressed_tiny_potato_8>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <thaumcraft:creative_flux_sponge>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>],
    [<contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <botania_tweaks:compressed_tiny_potato_8>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>],
    [<thaumcraft:curio>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <contenttweaker:chaoticconstruct>, <thaumcraft:curio>]])
  .setSecondaryIngredients([<contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>, <botania_tweaks:compressed_tiny_potato_8>, <contenttweaker:chaoticconstruct>])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 1)
  .addTool(<artisanworktables:artisans_file_platinum>, 1)
  .addOutput(<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}))
  .create();

// Patch Vis Pods
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "aer"}), "aer 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "terra"}), "terra 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "ignis"}), "ignis 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "aqua"}), "aqua 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "ordo"}), "ordo 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "perditio"}), "perditio 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "vacuos"}), "vacuos 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "lux"}), "lux 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "motus"}), "motus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "gelum"}), "gelum 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "vitreus"}), "vitreus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "metallum"}), "metallum 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "victus"}), "victus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "mortuus"}), "mortuus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "potentia"}), "potentia 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "permutatio"}), "permutatio 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "praecantatio"}), "praecantatio 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "auram"}), "auram 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "alkimia"}), "alkimia 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "vitium"}), "vitium 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "tenebrae"}), "tenebrae 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "alienis"}), "alienis 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "volatus"}), "volatus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "herba"}), "herba 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "instrumentum"}), "instrumentum 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "fabrico"}), "fabrico 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "machina"}), "machina 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "vinculum"}), "vinculum 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "spiritus"}), "spiritus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "cognito"}), "cognito 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "sensus"}), "sensus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "aversio"}), "aversio 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "praemunio"}), "praemunio 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "desiderium"}), "desiderium 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "examimis"}), "examimis 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "bestia"}), "bestia 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "humanus"}), "humanus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "fluctus"}), "fluctus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "sonus"}), "sonus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "exitium"}), "exitium 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "caeles"}), "caeles 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "draco"}), "draco 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "infernum"}), "infernum 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "ventus"}), "ventus 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "visum"}), "visum 1");
mods.thaumcraft.Aspects.set(<thaumadditions:vis_pod>.withTag({Aspect: "imperium"}), "imperium 1");