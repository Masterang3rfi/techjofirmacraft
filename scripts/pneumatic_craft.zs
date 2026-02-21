import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.bracket.BracketHandlers;

//Crafting Recipes

craftingTable.removeByName("pneumaticcraft:reinforced_stone");
craftingTable.removeByName("pneumaticcraft:reinforced_brick_stairs");

craftingTable.addShaped("crafting/reinforced_stone", <item:pneumaticcraft:reinforced_stone> * 8, [
    [<tag:items:tfc:rock/smooth>, <tag:items:tfc:rock/smooth>, <tag:items:tfc:rock/smooth>],
    [<tag:items:tfc:rock/smooth>, <tag:items:forge:ingots/compressed_iron>, <tag:items:tfc:rock/smooth>],
    [<tag:items:tfc:rock/smooth>, <tag:items:tfc:rock/smooth>, <tag:items:tfc:rock/smooth>]]);

addCraftingStairs("crafting/reinforced_brick_stairs", <item:pneumaticcraft:reinforced_brick_stairs>, <item:pneumaticcraft:reinforced_bricks>);


//Thermo Plant

<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/yeast_culture");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/salmon_tempura");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/ethanol_from_poisonous_potato");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/ethanol_from_potato");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/chips");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/plastic_from_biodiesel");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/ethanol_from_sweet_berries");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/vegetable_oil_from_crops");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/vegetable_oil_from_seeds");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/ethanol_from_apple");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/ethanol_from_melon");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/ethanol_from_sugar");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/lpg");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/kerosene");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/gasoline");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/plastic_from_lpg");

<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/lubricant_from_biodiesel");
<recipetype:pneumaticcraft:thermo_plant>.removeByName("pneumaticcraft:thermo_plant/lubricant_from_diesel");

<recipetype:pneumaticcraft:thermo_plant>.addRecipe("thermo_plant/lubricant_from_biodiesel", <tag:fluids:forge:biodiesel> * 1000, <tag:items:forge:dusts/redstone>, <fluid:immersivepetroleum:lubricant> * 1000, vars.air, 0, 373);
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("thermo_plant/lubricant_from_diesel", <tag:fluids:forge:diesel> * 1000, <tag:items:forge:dusts/redstone>, <fluid:immersivepetroleum:lubricant> * 1000, vars.air, 0, 373);