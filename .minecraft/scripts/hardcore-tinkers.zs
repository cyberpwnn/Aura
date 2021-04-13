
recipes.remove(<tconstruct:soil> * 8);
recipes.remove(<tconstruct:soil> * 2);
recipes.remove(<tconstruct:soil>);
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:dried_clay>, <minecraft:gravel>, <tconstruct:dried_clay>],
    [<minecraft:gravel>, <minecraft:soul_sand>, <minecraft:gravel>],
    [<tconstruct:dried_clay>, <minecraft:gravel>, <tconstruct:dried_clay>]])
  .addTool(<ore:artisansMortar>, 12)
  .addTool(<ore:artisansTrowel>, 24)
  .addOutput(<tconstruct:soil> * 24)
  .setExtraOutputOne(<tconstruct:soil> * 12, 0.2)
  .setExtraOutputTwo(<tconstruct:soil> * 6, 0.45)
  .setExtraOutputThree(<tconstruct:soil> * 3, 0.6)
  .create();

// Smeltery controler
recipes.remove(<tconstruct:smeltery_controller>);
SalisMundus.addSingleConversion(<ore:blockSeared>, <tconstruct:smeltery_controller>, "");
mods.jei.JEI.addDescription(<artisanworktables:worktable:7>,"Apply salis mundus to seared bricks to create a smeltery controller.");

// Flesh dried to leather
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible:10>); // Flesh already registered
mods.tconstruct.Drying.addRecipe(<minecraft:rotten_flesh>, <minecraft:leather>, 6000);
