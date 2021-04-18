import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<immersiveengineering:connector>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, null],
    [<plustic:pipe_piece>.withTag({Material: "copper"}), <plustic:pipe_piece>.withTag({Material: "copper"}), <plustic:pipe_piece>.withTag({Material: "copper"})],
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, null]])
  .addTool(<ore:artisansGroover>, 7)
  .addOutput(<immersiveengineering:connector>)
  .setExtraOutputOne(<tconstruct:dried_clay>, 0.25)
  .setExtraOutputTwo(<immersiveengineering:metal:20> * 3, 0.35)
  .create();

recipes.remove(<immersiveengineering:connector:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:dried_clay>, null],
    [<plustic:pipe_piece>.withTag({Material: "copper"}), <plustic:pipe_piece>.withTag({Material: "copper"})],
    [<tconstruct:dried_clay>, null]])
  .addTool(<ore:artisansGroover>, 5)
  .addOutput(<immersiveengineering:connector:1>)
  .setExtraOutputOne(<tconstruct:dried_clay>, 0.1)
  .setExtraOutputTwo(<immersiveengineering:metal:20> * 2, 0.2)
  .create();

recipes.remove(<immersiveengineering:connector:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, null],
    [<plustic:pipe_piece>.withTag({Material: "manasteel"}), <plustic:pipe_piece>.withTag({Material: "manasteel"}), <plustic:pipe_piece>.withTag({Material: "manasteel"})],
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, null]])
  .addTool(<ore:artisansGroover>, 24)
  .addOutput(<immersiveengineering:connector:2>)
  .setExtraOutputOne(<tconstruct:dried_clay>, 0.2)
  .setExtraOutputTwo(<botania:manaresource:17> * 3, 0.25)
  .create();

recipes.remove(<immersiveengineering:connector:3>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:dried_clay>, null],
    [<plustic:pipe_piece>.withTag({Material: "manasteel"}), <plustic:pipe_piece>.withTag({Material: "manasteel"})],
    [<tconstruct:dried_clay>, null]])
  .addTool(<ore:artisansGroover>, 19)
  .addOutput(<immersiveengineering:connector:3>)
  .setExtraOutputOne(<tconstruct:dried_clay>, 0.1)
  .setExtraOutputTwo(<botania:manaresource:17> * 3, 0.2)
  .create();

recipes.remove(<immersiveengineering:connector:4>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, <astralsorcery:itemcraftingcomponent:4>],
    [<plustic:pipe_piece>.withTag({Material: "palladium"}), <plustic:pipe_piece>.withTag({Material: "palladium"}), <plustic:pipe_piece>.withTag({Material: "palladium"})],
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, <astralsorcery:itemcraftingcomponent:4>]])
  .addTool(<ore:artisansGroover>, 39)
  .addTool(<ore:artisansSolderer>, 29)
  .addOutput(<immersiveengineering:connector:4>)
  .setExtraOutputOne(<tconstruct:dried_clay>, 0.2)
  .setExtraOutputTwo(<taiga:palladium_nugget> * 3, 0.3)
  .setExtraOutputThree(<astralsorcery:itemcraftingcomponent> * 1, 0.2)
  .create();

recipes.remove(<immersiveengineering:connector:5>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, null],
    [<plustic:pipe_piece>.withTag({Material: "palladium"}), <plustic:pipe_piece>.withTag({Material: "palladium"}), <astralsorcery:itemcraftingcomponent:4>],
    [<tconstruct:dried_clay>, <tconstruct:dried_clay>, null]])
  .addTool(<ore:artisansGroover>, 39)
  .addTool(<ore:artisansSolderer>, 29)
  .addOutput(<immersiveengineering:connector:5>)
  .setExtraOutputOne(<tconstruct:dried_clay>, 0.1)
  .setExtraOutputTwo(<taiga:palladium_nugget> * 3, 0.2)
  .create();

recipes.remove(<immersiveengineering:metal_decoration0:3>);
var a = <conarm:armor_plate>.withTag({Material: "iron"});
var b = <enderio:item_alloy_ingot:3>;
mods.thaumcraft.Infusion.registerRecipe("immrgblock", "", <immersiveengineering:metal_decoration0:3>, 5, [<aspect:potentia> * 15,<aspect:machina>*5], <tconstruct:binding>.withTag({Material: "copper"}), [a,b,a,b,a,b,a,b]);

recipes.remove(<immersiveengineering:material:8>);
RecipeBuilder.get("designer")
  .setShaped([
    [<botania:manaresource>, <plustic:pipe_piece>.withTag({Material: "copper"}), <botania:manaresource>]])
  .addTool(<ore:artisansSolderer>, 21)
  .addOutput(<immersiveengineering:material:8> * 2)
  .create();

recipes.remove(<immersiveengineering:metal_decoration0:4>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<conarm:armor_trim>.withTag({Material: "copper"}), <conarm:armor_plate>.withTag({Material: "iron"}), <conarm:armor_trim>.withTag({Material: "copper"})],
    [<immersiveengineering:material:8>, <plustic:pipe_piece>.withTag({Material: "manasteel"}), <immersiveengineering:material:8>],
    [<conarm:armor_trim>.withTag({Material: "copper"}), <conarm:armor_plate>.withTag({Material: "iron"}), <conarm:armor_trim>.withTag({Material: "copper"})]])
  .setFluid(<liquid:alumite> * 259)
  .addTool(<ore:artisansSolderer>, 56)
  .addOutput(<immersiveengineering:metal_decoration0:4>)
  .create();

recipes.remove(<immersiveengineering:metal_decoration0:5>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<embers:crystal_ember>, <astralsorcery:itemcraftingcomponent:4>, <embers:crystal_ember>],
    [<immersiveengineering:material:8>, <plustic:pipe_piece>.withTag({Material: "starmetal"}), <immersiveengineering:material:8>],
    [<embers:crystal_ember>, <thaumcraft:metal_alchemical>, <embers:crystal_ember>]])
  .addTool(<ore:artisansSolderer>, 76)
  .setFluid(<liquid:alumite> * 472)
  .addOutput(<immersiveengineering:metal_decoration0:5>)
  .setExtraOutputOne(<immersiveengineering:material:8>, 0.1)
  .setExtraOutputTwo(<thaumcraft:tube>, 0.25)
  .setExtraOutputThree(<embers:shard_ember>, 0.35)
  .create();

recipes.remove(<immersiveengineering:metal_device1:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<conarm:armor_plate>.withTag({Material: "iron"}), <tconstruct:binding>.withTag({Material: "aluminum"}), <conarm:armor_plate>.withTag({Material: "iron"})],
    [<thermalfoundation:material:893>, <immersiveengineering:metal_decoration0>, <thermalfoundation:material:893>],
    [<conarm:armor_plate>.withTag({Material: "iron"}), <thermalfoundation:material:289>, <conarm:armor_plate>.withTag({Material: "iron"})]])
  .addTool(<ore:artisansSolderer>, 12)
  .addOutput(<immersiveengineering:metal_device1:2>)
  .create();

recipes.remove(<immersiveengineering:wooden_device0:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<thaumcraft:slab_silverwood>, <thaumcraft:slab_silverwood>, <thaumcraft:slab_silverwood>],
    [<artisanworktables:toolbox>, null, <artisanworktables:toolbox>]])
  .addTool(<ore:artisansHandsaw>, 12)
  .addOutput(<immersiveengineering:wooden_device0:2>)
  .create();

recipes.remove(<immersiveengineering:metal_device1:13>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<botania:managlasspane>, <immersiveengineering:material:26>, <botania:managlasspane>],
    [<botania:managlasspane>, null, <botania:managlasspane>],
    [<astralsorcery:blockinfusedwood:1>, <immersiveengineering:material:8>, <astralsorcery:blockinfusedwood:1>]])
  .addTool(<ore:artisansSolderer>, 12)
  .addTool(<ore:artisansLens>, 7)
  .addOutput(<immersiveengineering:metal_device1:13>)
  .create();