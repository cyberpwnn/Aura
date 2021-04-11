import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import mods.artisanworktables.builder.RecipeBuilder;

mods.botania.ManaInfusion.addInfusion(<draconicevolution:draconium_dust>, <botanicadds:gaia_shard>, 15000);

recipes.remove(<draconicevolution:draconic_core>);
RecipeBuilder.get("mage")
  .setShaped([
    [<draconicevolution:draconium_ingot>, <thaumadditions:mithrillium_ingot>, <draconicevolution:draconium_ingot>],
    [<thaumadditions:mithrillium_ingot>, <contenttweaker:arcaneconstruct>, <thaumadditions:mithrillium_ingot>],
    [<draconicevolution:draconium_ingot>, <thaumadditions:mithrillium_ingot>, <draconicevolution:draconium_ingot>]])
  .addTool(<artisanworktables:artisans_hammer_platinum>, 126)
  .addOutput(<draconicevolution:draconic_core>)
  .setExtraOutputOne(<thaumadditions:mithrillium_ingot>, 0.25)
  .setExtraOutputTwo(<draconicevolution:draconium_ingot>, 0.25)
  .create();

recipes.remove(<draconicevolution:wyvern_core>);
RecipeBuilder.get("mage")
  .setShaped([
    [<thaumadditions:adaminite_ingot>, <draconicevolution:draconic_core>, <thaumadditions:adaminite_ingot>],
    [<draconicevolution:draconic_core>, <contenttweaker:arcaneconstruct>, <draconicevolution:draconic_core>],
    [<thaumadditions:adaminite_ingot>, <draconicevolution:draconic_core>, <thaumadditions:adaminite_ingot>]])
  .setFluid(<liquid:liquid_death> * 250)
  .addTool(<artisanworktables:artisans_hammer_platinum>, 253)
  .addTool(<artisanworktables:artisans_file_platinum>, 311)
  .addOutput(<draconicevolution:wyvern_core>)
  .setExtraOutputOne(<thaumadditions:adaminite_ingot>, 0.25)
  .setExtraOutputTwo(<draconicevolution:draconic_core>, 0.25)
  .create();