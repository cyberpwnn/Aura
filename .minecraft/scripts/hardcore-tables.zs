import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import mods.artisanworktables.builder.RecipeBuilder;

// The basic worktable
recipes.addShapeless("basicworktable",<artisanworktables:worktable:5>,[<tconstruct:tooltables>,<minecraft:paper>]); 

// Mage Worktable
SalisMundus.addSingleConversion(<artisanworktables:worktable:5>, <artisanworktables:worktable:7>, "");
mods.botania.ManaInfusion.addInfusion(<artisanworktables:worktable:7>, <artisanworktables:worktable:5>, 3000);
mods.jei.JEI.addDescription(<artisanworktables:worktable:7>,"Apply salis mundus to a Basic Worktable or toss it into a mana pool.");

// Mages Workstation
mods.thaumcraft.Infusion.registerRecipe("magews", "", <artisanworktables:workstation:7>, 6, [<aspect:instrumentum> * 20, <aspect:fabrico> * 10], <artisanworktables:worktable:7>, [<botania:manaresource:23>, <embers:dust_ember>, <astralsorcery:itemusabledust>]);

// Mages Workshop
mods.thaumcraft.Infusion.registerRecipe("magewhs", "", <artisanworktables:workshop:7>, 46, [<aspect:instrumentum> * 40, <aspect:fabrico> * 20, <aspect:machina> * 20], <artisanworktables:workstation:7>, [<embers:plate_dawnstone>, <botania:manaresource:5>, <embers:plate_dawnstone>, <thaumcraft:void_seed>]);

// Designer Worktable
recipes.addShaped(<artisanworktables:worktable:12>, [[null, <minecraft:writable_book>, null],[<minecraft:paper>, <artisanworktables:worktable:5>, <minecraft:paper>], [null, <minecraft:bookshelf>, null]]);

// Designer Workstation
RecipeBuilder.get("designer")
  .setShaped([
    [<enderio:item_material:32>, <enderio:item_material:77>, <enderio:item_material:32>],
    [<minecraft:paper>, <enderio:item_material:32>, <minecraft:paper>],
    [<minecraft:paper>, <artisanworktables:worktable:12>, <minecraft:paper>]])
  .addTool(<ore:artisansQuill>, 24)
  .addOutput(<artisanworktables:workstation:12>)
  .create();

// Designer Workshop
RecipeBuilder.get("designer")
  .setShaped([
    [<minecraft:paper>, <minecraft:lapis_block>, <minecraft:paper>],
    [<minecraft:paper>, <artisanworktables:workstation:12>, <minecraft:paper>],
    [<minecraft:light_blue_glazed_terracotta>, <minecraft:light_blue_glazed_terracotta>, <minecraft:light_blue_glazed_terracotta>]])
  .setFluid(<liquid:emerald> * 1000)
  .addTool(<ore:artisansCompass>, 22)
  .addTool(<ore:artisansQuill>, 29)
  .addOutput(<artisanworktables:workshop:12>)
  .create();

// Mason Worktable
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone_wall>, <artisanworktables:worktable:5>, <minecraft:cobblestone_wall>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

// Mason Workstation
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:netherbrick>, <minecraft:glowstone_dust>, <minecraft:netherbrick>],
    [<minecraft:nether_brick_fence>, <artisanworktables:worktable:2>, <minecraft:nether_brick_fence>],
    [<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>]])
  .addTool(<ore:artisansHammer>, 12)
  .addOutput(<artisanworktables:workstation:2>)
  .create();

// Mason Workshop
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:end_bricks>, <minecraft:end_bricks>, <minecraft:end_bricks>],
    [<minecraft:end_bricks>, <artisanworktables:workstation:2>, <minecraft:end_bricks>],
    [<minecraft:end_bricks>, <minecraft:end_bricks>, <minecraft:end_bricks>]])
  .addTool(<ore:artisansHammer>, 22)
  .addTool(<ore:artisansTSquare>, 44)
  .addOutput(<artisanworktables:workshop:2>)
  .create();

// Engineers Worktable
recipes.addShaped(<artisanworktables:worktable:6>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],[<minecraft:quartz>, <artisanworktables:worktable:5>, <minecraft:quartz>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

// Engineers Workstation
RecipeBuilder.get("basic")
  .setShaped([
    [null, <immersiveengineering:metal_decoration0:3>, null],
    [<minecraft:redstone>, <artisanworktables:worktable:6>, <minecraft:redstone>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]])
  .setFluid(<liquid:electrical_steel> * 1000)
  .addTool(<ore:artisansSolderer>, 24)
  .addOutput(<artisanworktables:workstation:6>)
  .create();

// Engineers Workshop
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal_decoration0:3>, <minecraft:redstone>, <immersiveengineering:metal_decoration0:3>],
    [<minecraft:redstone>, <artisanworktables:workstation:6>, <minecraft:redstone>],
    [<immersiveengineering:metal_decoration0:3>, <enderio:item_basic_capacitor:2>, <immersiveengineering:metal_decoration0:3>]])
  .setFluid(<liquid:palladium_fluid> * 128)
  .addTool(<ore:artisansSolderer>, 56)
  .addTool(<ore:artisansPliers>, 18)
  .addOutput(<artisanworktables:workshop:6>)
  .create();