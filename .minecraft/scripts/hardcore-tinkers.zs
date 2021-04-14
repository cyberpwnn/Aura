import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.SalisMundus;

recipes.remove(<tconstruct:soil> * 8);
recipes.remove(<tconstruct:soil> * 2);
recipes.remove(<tconstruct:soil>);
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:dried_clay>, <minecraft:gravel>, <tconstruct:dried_clay>],
    [<minecraft:gravel>, <minecraft:soul_sand>, <minecraft:gravel>],
    [<tconstruct:dried_clay>, <minecraft:gravel>, <tconstruct:dried_clay>]])
  .addTool(<ore:artisansMortar>, 82)
  .addTool(<ore:artisansTrowel>, 74)
  .addOutput(<tconstruct:soil> * 36)
  .setExtraOutputOne(<tconstruct:soil> * 24, 0.2)
  .setExtraOutputTwo(<tconstruct:soil> * 16, 0.45)
  .setExtraOutputThree(<tconstruct:soil> * 12, 0.6)
  .create();

// Flesh dried to leather
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible:10>); // Flesh already registered
mods.tconstruct.Drying.addRecipe(<minecraft:rotten_flesh>, <minecraft:leather>, 6000);
