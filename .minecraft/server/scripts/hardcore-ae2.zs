import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import mods.artisanworktables.builder.RecipeBuilder;

val fluixCrystal = <appliedenergistics2:material:7>;
val pureFluix = <appliedenergistics2:material:12>;
val certus = <appliedenergistics2:material>;
val certusCharged = <appliedenergistics2:material>;
val pureCertus = <appliedenergistics2:material:1>;
val nether = <minecraft:quartz>;
val pureNether = <appliedenergistics2:material:11>;

recipes.remove(fluixCrystal);
mods.botania.ManaInfusion.addInfusion(fluixCrystal, <netherex:amethyst_crystal>, 7000);

recipes.remove(pureFluix);
recipes.remove(pureCertus);
recipes.remove(pureNether);
mods.thaumcraft.Infusion.registerRecipe("pfqae", "", pureFluix, 25, [<aspect:auram> * 4], <netherex:amethyst_crystal>, [fluixCrystal,fluixCrystal,fluixCrystal]);
mods.thaumcraft.Infusion.registerRecipe("pcqae", "", pureCertus, 25, [<aspect:auram> * 4], certus, [pureCertus, pureCertus, pureCertus]);
mods.thaumcraft.Infusion.registerRecipe("pnqaex", "", pureNether, 25, [<aspect:auram> * 4], nether, [nether, nether, nether]);

recipes.remove(<appliedenergistics2:controller>);
RecipeBuilder.get("designer")
  .setShaped([
    [<appliedenergistics2:sky_stone_small_brick>, <appliedenergistics2:material:24>, <appliedenergistics2:sky_stone_small_brick>],
    [<appliedenergistics2:material:12>, <contenttweaker:arcaneconstruct>, <appliedenergistics2:material:12>],
    [<appliedenergistics2:sky_stone_small_brick>, <appliedenergistics2:material:24>, <appliedenergistics2:sky_stone_small_brick>]])
  .addTool(<ore:artisansSolderer>, 142)
  .addTool(<ore:artisansPunch>, 79)
  .addOutput(<appliedenergistics2:controller>)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct>, 0.15)
  .setExtraOutputTwo(<appliedenergistics2:material:12>, 0.35)
  .setExtraOutputThree(<appliedenergistics2:material:24>, 0.25)
  .create();

recipes.remove(<appliedenergistics2:spatial_io_port>);
RecipeBuilder.get("designer")
  .setShaped([
    [<conarm:armor_trim>.withTag({Material: "silver"}), <contenttweaker:arcaneconstruct>, <conarm:armor_trim>.withTag({Material: "silver"})],
    [<appliedenergistics2:material:24>, <appliedenergistics2:io_port>, <appliedenergistics2:material:24>],
    [<conarm:armor_trim>.withTag({Material: "silver"}), <botania:pylon:2>, <conarm:armor_trim>.withTag({Material: "silver"})]])
  .addTool(<ore:artisansSolderer>, 142)
  .addTool(<ore:artisansPunch>, 79)
  .addOutput(<appliedenergistics2:spatial_io_port>)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct>, 0.15)
  .create();

recipes.remove(<appliedenergistics2:crafting_unit>);
RecipeBuilder.get("designer")
  .setShaped([
    [<conarm:armor_trim>.withTag({Material: "silver"}), <appliedenergistics2:material:12>, <conarm:armor_trim>.withTag({Material: "silver"})],
    [<appliedenergistics2:material:22>, <contenttweaker:arcaneconstruct>, <appliedenergistics2:material:23>],
    [<conarm:armor_trim>.withTag({Material: "silver"}), <appliedenergistics2:material:24>, <conarm:armor_trim>.withTag({Material: "silver"})]])
  .addTool(<ore:artisansSolderer>, 142)
  .addTool(<ore:artisansPunch>, 79)
  .addOutput(<appliedenergistics2:crafting_unit> * 4)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct>, 0.15)
  .setExtraOutputTwo(<appliedenergistics2:crafting_unit> * 1, 0.5)
  .create();

recipes.remove(<appliedenergistics2:quantum_link>);
RecipeBuilder.get("designer")
  .setShaped([
    [<conarm:armor_trim>.withTag({Material: "silver"}), <appliedenergistics2:material:9>, <conarm:armor_trim>.withTag({Material: "silver"})],
    [<appliedenergistics2:material:24>, <contenttweaker:arcaneconstruct>, <appliedenergistics2:material:24>],
    [<appliedenergistics2:material:9>, <botania:pylon:2>, <appliedenergistics2:material:9>]])
  .addTool(<ore:artisansSolderer>, 142)
  .addTool(<ore:artisansPunch>, 79)
  .addOutput(<appliedenergistics2:quantum_link>)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct>, 0.15)
  .setExtraOutputTwo(<appliedenergistics2:material:9>, 0.25)
  .setExtraOutputThree(<appliedenergistics2:quantum_link>, 0.5)
  .create();

recipes.remove(<appliedenergistics2:wireless_access_point>);
RecipeBuilder.get("designer")
  .setShaped([
    [<appliedenergistics2:material:12>, <appliedenergistics2:material:22>, <appliedenergistics2:material:12>],
    [<appliedenergistics2:material:24>, <contenttweaker:arcaneconstruct>, <appliedenergistics2:material:24>],
    [<appliedenergistics2:material:9>, <botania:pylon:2>, <appliedenergistics2:material:9>]])
  .addTool(<ore:artisansSolderer>, 142)
  .addTool(<ore:artisansPunch>, 79)
  .addOutput(<appliedenergistics2:wireless_access_point>)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct>, 0.15)
  .setExtraOutputTwo(<appliedenergistics2:material:9>, 0.25)
  .create();