import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.bracket.BracketHandlers;




//Crafting Recipes

craftingTable.removeByName("immersivepetroleum:asphalt");
craftingTable.removeByName("immersivepetroleum:asphalt_stair");

craftingTable.addShaped("crafting/asphalt", <item:immersivepetroleum:asphalt> * 8, [
    [<tag:items:forge:sand>, <tag:items:forge:bitumen>, <tag:items:forge:sand>],
    [<tag:items:forge:gravel>, vars.water, <tag:items:forge:gravel>],
    [<tag:items:forge:sand>, <tag:items:forge:bitumen>, <tag:items:forge:sand>]]);

addCraftingStairs("crafting/asphalt_stairs", <item:immersivepetroleum:asphalt_stair>, <item:immersivepetroleum:asphalt>);