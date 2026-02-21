




//Crafting Recipes

craftingTable.removeByName("minecraft:stonecutter");
craftingTable.removeByName("minecraft:piston");
craftingTable.removeByName("minecraft:brewing_stand");

craftingTable.addShaped("crafting/lead", <item:minecraft:lead> * 1, [
    [vars.air, <item:immersiveengineering:wirecoil_structure_rope>, <item:immersiveengineering:wirecoil_structure_rope>],
    [vars.air, <item:immersiveengineering:wirecoil_structure_rope>, <item:immersiveengineering:wirecoil_structure_rope>],
    [<item:immersiveengineering:wirecoil_structure_rope>, vars.air, vars.air]]);

//Crusher Recipes

<recipetype:immersiveengineering:crusher>.addRecipe("crusher/red_dye_from_flower", <tag:items:tfc:makes_red_dye>, 1500, <item:minecraft:red_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/white_dye_from_flower", <tag:items:tfc:makes_white_dye>, 1500, <item:minecraft:white_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/light_gray_dye_from_flower", <tag:items:tfc:makes_light_gray_dye>, 1500, <item:minecraft:light_gray_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/brown_dye_from_flower", <tag:items:tfc:makes_brown_dye>, 1500, <item:minecraft:brown_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/yellow_dye_from_flower", <tag:items:tfc:makes_yellow_dye>, 1500, <item:minecraft:yellow_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/lime_dye_from_flower", <tag:items:tfc:makes_lime_dye>, 1500, <item:minecraft:lime_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/green_dye_from_flower", <tag:items:tfc:makes_green_dye>, 1500, <item:minecraft:green_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/light_blue_dye_from_flower", <tag:items:tfc:makes_light_blue_dye>, 1500, <item:minecraft:light_blue_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/blue_dye_from_flower", <tag:items:tfc:makes_blue_dye>, 1500, <item:minecraft:blue_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/purple_dye_from_flower", <tag:items:tfc:makes_purple_dye>, 1500, <item:minecraft:purple_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/magenta_dye_from_flower", <tag:items:tfc:makes_magenta_dye>, 1500, <item:minecraft:magenta_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/pink_dye_from_flower", <tag:items:tfc:makes_pink_dye>, 1500, <item:minecraft:pink_dye> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/orange_dye_from_flower", <tag:items:tfc:makes_orange_dye>, 1500, <item:minecraft:orange_dye> * 4);


//Stonecutter Recipes

stoneCutter.removeAll();