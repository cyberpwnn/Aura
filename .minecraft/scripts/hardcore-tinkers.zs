import mods.artisanworktables.builder.RecipeBuilder;

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