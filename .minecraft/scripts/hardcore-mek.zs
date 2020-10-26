import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import mods.artisanworktables.builder.RecipeBuilder;

SalisMundus.addSingleConversion(<thermalfoundation:ore:2>, <mekanism:oreblock>, "METALPURIFICATION");
SalisMundus.addSingleConversion(<thermalfoundation:storage:2>, <mekanism:basicblock>, "METALPURIFICATION");

recipes.remove(<mekanism:machineblock2:6>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <appliedenergistics2:material:7>, <mekanism:controlcircuit>],
    [<enderio:item_material:4>, <mekanism:atomicalloy>, <enderio:item_material:4>],
    [<mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:manyullyn> * 144)
  .addTool(<ore:artisansSolderer>, 79)
  .addTool(<ore:artisansPliers>, 52)
  .addOutput(<mekanism:machineblock2:6>)
  .setExtraOutputOne(<enderio:item_material:4>, 0.2)
  .setExtraOutputTwo(<mekanism:enrichedalloy>, 0.25)
  .setExtraOutputThree(<mekanism:controlcircuit>, 0.3)
  .create();

recipes.remove(<mekanism:controlcircuit:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:controlcircuit>],
    [<mekanism:enrichedalloy>, <thaumcraft:seal:13>, <mekanism:enrichedalloy>],
    [<mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:controlcircuit>]])
  .addTool(<ore:artisansSolderer>, 111)
  .addTool(<ore:artisansPliers>, 88)
  .addOutput(<mekanism:controlcircuit:1> * 8)
  .setExtraOutputOne(<thaumcraft:seal:13>, 0.2)
  .setExtraOutputTwo(<mekanism:controlcircuit:1> * 5, 0.25)
  .setExtraOutputThree(<mekanism:controlcircuit:1> * 3, 0.35)
  .create();

recipes.remove(<mekanism:controlcircuit:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>],
    [<mekanism:controlcircuit>, <thaumcraft:seal:18>, <mekanism:controlcircuit>],
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>]])
  .setFluid(<liquid:silver> * 288)
  .addTool(<ore:artisansSolderer>, 157)
  .addTool(<ore:artisansPliers>, 98)
  .addOutput(<mekanism:controlcircuit:2> * 8)
  .setExtraOutputOne(<thaumcraft:seal:18>, 0.35)
  .setExtraOutputTwo(<mekanism:controlcircuit:2> * 5, 0.45)
  .setExtraOutputThree(<mekanism:controlcircuit:2> * 3, 0.75)
  .create();

recipes.remove(<mekanism:controlcircuit:3>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <mekanism:atomicalloy>, <mekanism:controlcircuit:2>],
    [<mekanism:atomicalloy>, <contenttweaker:arcaneconstruct>, <mekanism:atomicalloy>],
    [<mekanism:controlcircuit:2>, <mekanism:atomicalloy>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:palladium_fluid> * 144)
  .addTool(<ore:artisansSolderer>, 277)
  .addTool(<ore:artisansPliers>, 126)
  .addOutput(<mekanism:controlcircuit:3> * 8)
  .setExtraOutputOne(<contenttweaker:arcaneconstruct>, 0.35)
  .setExtraOutputTwo(<mekanism:controlcircuit:3> * 5, 0.5)
  .setExtraOutputThree(<mekanism:controlcircuit:3> * 3, 0.74)
  .create();

recipes.remove(<mekanism:basicblock:8>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<conarm:armor_plate>.withTag({Material: "steel"}), <enderio:block_dark_iron_bars>, <conarm:armor_plate>.withTag({Material: "steel"})],
    [<enderio:block_dark_iron_bars>, <contenttweaker:mundaneconstruct>, <enderio:block_dark_iron_bars>],
    [<conarm:armor_plate>.withTag({Material: "steel"}), <enderio:block_dark_iron_bars>, <conarm:armor_plate>.withTag({Material: "steel"})]])
  .addTool(<ore:artisansDriver>, 29)
  .addOutput(<mekanism:basicblock:8>)
  .setExtraOutputOne(<contenttweaker:mundaneconstruct>, 0.25)
  .setExtraOutputTwo(<enderio:block_dark_iron_bars>, 0.35)
  .create();