import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.Infusion;

// Conduit Binder
recipes.remove(<enderio:item_material:22> * 8);
recipes.remove(<enderio:item_material:22>);
RecipeBuilder.get("mason")
  .setShapeless([<ore:sand>,<tconstruct:dried_clay>,<ore:gravel>])
  .addOutput(<enderio:item_material:22> * 16)
  .addTool(<ore:artisansTrowel>, 9)
  .addTool(<ore:artisansSifter>, 17)
  .setFluid(<liquid:plantoil> * 273)
  .setExtraOutputOne(<enderio:item_material:22> * 3, 0.33)
  .setExtraOutputTwo(<enderio:item_material:22> * 7, 0.15)
  .setExtraOutputThree(<enderio:item_material:22> * 9, 0.11)
  .setMinimumTier(1)
  .create();

recipes.remove(<enderio:item_basic_capacitor>);
RecipeBuilder.get("designer")
  .setShaped([
    [null, <minecraft:gold_nugget>, <enderio:item_material:20>],
    [<minecraft:gold_nugget>, <ore:ingotCopper>, <minecraft:gold_nugget>],
    [<enderio:item_material:20>, <minecraft:gold_nugget>, null]])
  .addTool(<ore:artisansSolderer>, 11)
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<enderio:item_basic_capacitor>)
  .setMinimumTier(1)
  .setExtraOutputOne(<minecraft:gold_nugget>, 0.2)
  .setExtraOutputTwo(<immersiveengineering:metal:20>, 0.2)
  .setExtraOutputThree(<enderio:item_material:20>, 0.1)
  .create();

recipes.remove(<enderio:item_basic_capacitor:1>);
RecipeBuilder.get("designer")
  .setShaped([
    [null, <enderio:item_alloy_ingot:1>, null],
    [<enderio:item_basic_capacitor>, <botania:manaresource:9>, <enderio:item_basic_capacitor>],
    [null, <enderio:item_alloy_ingot:1>, null]])
  .addTool(<ore:artisansSolderer>, 21)
  .addTool(<ore:artisansCutters>, 9)
  .setFluid(<liquid:glowstone> * 475)
  .addOutput(<enderio:item_basic_capacitor:1>)
  .setExtraOutputOne(<botania:manaresource:8>, 0.15)
  .setExtraOutputTwo(<immersiveengineering:material:20>*2, 0.2)
  .setExtraOutputThree(<enderio:item_alloy_nugget:1>*3, 0.18)
  .create();

recipes.remove(<enderio:item_basic_capacitor:2>);
RecipeBuilder.get("designer")
  .setShaped([
    [<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>],
    [<botanicadds:gaia_shard>, <thaumadditions:seal_symbol>.withTag({Aspect: "potentia"}), <botanicadds:gaia_shard>],
    [<enderio:item_basic_capacitor:1>, <tconstruct:tough_binding>.withTag({Material: "palladium"}), <enderio:item_basic_capacitor:1>],
    [<enderio:item_alloy_nugget:2>, <immersiveengineering:material:21>, <enderio:item_alloy_nugget:2>],
    [null, <immersiveengineering:connector:4>, null]])
  .setFluid(<liquid:cobalt> * 2258)
  .addTool(<ore:artisansSolderer>, 52)
  .addTool(<ore:artisansDriver>, 18)
  .addTool(<ore:artisansCutters>, 31)
  .setMinimumTier(2)
  .addOutput(<enderio:item_basic_capacitor:2>)
  .create();

recipes.remove(<enderio:item_material>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<conarm:armor_trim>.withTag({Material: "steel"}), <conarm:armor_plate>.withTag({Material: "iron"}), <conarm:armor_trim>.withTag({Material: "steel"})],
    [<conarm:armor_plate>.withTag({Material: "iron"}), <enderio:item_material:20>, <conarm:armor_plate>.withTag({Material: "iron"})],
    [<conarm:armor_trim>.withTag({Material: "steel"}), <conarm:armor_plate>.withTag({Material: "iron"}), <conarm:armor_trim>.withTag({Material: "steel"})]])
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<enderio:item_material>)
  .setExtraOutputOne(<enderio:item_material:69>, 0.15)
  .setExtraOutputTwo(<enderio:item_material:20>, 0.15)
  .create();

recipes.remove(<enderio:block_cap_bank:1>);
var a = <conarm:armor_plate>.withTag({Material: "steel"});
var b = <enderio:item_basic_capacitor>;
mods.thaumcraft.Infusion.registerRecipe("cbank1", "VISBATTERY", <enderio:block_cap_bank:1>, 20, [<aspect:potentia> * 10,<aspect:vacuos>*5], <minecraft:redstone_block>, [a,b,a,b,a,b,a,b]);

recipes.remove(<enderio:block_cap_bank:2>);
recipes.remove(<enderio:block_cap_bank:2>);
var c = <conarm:armor_plate>.withTag({Material: "lead"});
var d = <enderio:item_basic_capacitor:1>;
mods.thaumcraft.Infusion.registerRecipe("cbank2", "VISBATTERY", <enderio:block_cap_bank:2>, 30, [<aspect:potentia> * 20,<aspect:vacuos>*10], <enderio:item_alloy_ball:1>, [c,d,c,d,c,d,c,d]);

recipes.remove(<enderio:block_cap_bank:3>);
recipes.remove(<enderio:block_cap_bank:3>);
var e = <conarm:armor_plate>.withTag({Material: "cobalt"});
var f = <enderio:item_basic_capacitor:2>;
mods.thaumcraft.Infusion.registerRecipe("cbank3", "VISBATTERY", <enderio:block_cap_bank:3>, 40, [<aspect:potentia> * 40,<aspect:vacuos>*20], <tconstruct:tough_binding>.withTag({Material: "palladium"}), [e,f,e,f,e,f,e,f]);