import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.bracket.BracketHandlers;



//Crafting Recipes

craftingTable.removeByName("immersivetechnology:crafting/technology_engineering");

craftingTable.addShaped("crafting/technology_engineering", <item:immersivetechnology:technology_engineering> * 2, [
    [vars.copper_plate, <tag:items:tjfc:hammers_hard>.asIIngredient().transformDamage(1), vars.copper_plate],
    [<item:immersiveengineering:component_iron>, <tag:items:forge:ingots/electrum>, <item:immersiveengineering:component_iron>],
    [vars.copper_plate, <item:immersiveengineering:component_steel>, vars.copper_plate]]);

//Distiller

<recipetype:immersivetechnology:distiller>.removeByName("immersivetechnology:distiller/water");

addDistiller("distiller/water", "tfc:fresh_water", 1000, <fluid:immersivetechnology:distilled_water> * 1000, <item:tfc:powder/salt> % 10);
addDistiller("distiller/salt_water", "tfc:salt_water", 1000, <fluid:minecraft:water> * 965, <item:tfc:powder/salt> % 100);

//Heat Exchanger

<recipetype:immersivetechnology:heat_exchanger>.removeByName("immersivetechnology:heat_exchanger/water_fluegas");
<recipetype:immersivetechnology:heat_exchanger>.removeByName("immersivetechnology:heat_exchanger/water_moltensalt");

//Mixer

<recipetype:immersiveengineering:mixer>.removeByName("immersivetechnology:mixer/gravel_slurry");
<recipetype:immersiveengineering:mixer>.removeByName("immersivetechnology:mixer/salt_slurry");

<recipetype:immersiveengineering:mixer>.addRecipe("mixer/gravel_slurry", <tag:fluids:tfc:any_water>, [<tag:items:forge:gravel> * 4], 5000, <fluid:immersivetechnology:gravel_slurry>.fluid, 1000);
//got to add tfc salt to forge tag
<recipetype:immersiveengineering:mixer>.addRecipe("mixer/salt_slurry", <tag:fluids:tfc:salt_water>, [<item:tfc:powder/salt> * 4], 5000, <fluid:immersivetechnology:salt_slurry>.fluid, 125);

//Solar Tower

<recipetype:immersivetechnology:solar_tower>.removeByName("immersivetechnology:solar_tower/water");