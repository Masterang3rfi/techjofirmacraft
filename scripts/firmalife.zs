import crafttweaker.api.bracket.BracketHandlers;




//Arc Furnace

<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/stainless_steel", <tag:items:forge:ingots/steel> * 3, [<tag:items:forge:ingots/chromium> * 1, <tag:items:forge:ingots/nickel> * 1], 250, 51200, [<item:firmalife:metal/ingot/stainless_steel> * 5]);

//Metal Press

//Looped Recipes

val excludedMetals = [] as string[];
var excludedRods = [] as string[];

for metal in Metal.values {

    if (metal.modID() == "firmalife" && !(metal.getName() in excludedMetals)) {

        //Generates parts
        if (metal.hasParts()) {

            val recipePrefix = "metalpress/" + metal.getName() + "_";

            addMetalPress(
                recipePrefix + "double_ingot",
                <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                2,
                BracketHandlers.getItem("firmalife:metal/double_ingot/"+ metal.getName()),
                1,
                <item:tjfc:mold/double_ingot>
            );

            addMetalPress(
                recipePrefix + "double_sheet",
                BracketHandlers.getItem("firmalife:metal/sheet/"+ metal.getName()),
                2,
                BracketHandlers.getItem("firmalife:metal/double_sheet/"+ metal.getName()),
                1,
                <item:tfc_ie_addon:mold_sheet>
            );

            if (!(metal.getName() in excludedRods)) {
                addMetalPress(
                    recipePrefix + "rod",
                    <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                    1,
                    BracketHandlers.getItem("firmalife:metal/rod/"+ metal.getName()),
                    2,
                    <item:immersiveengineering:mold_rod>
                );
            }

            addMetalPress(
                recipePrefix + "sheet",
                <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                2,
                BracketHandlers.getItem("firmalife:metal/sheet/"+ metal.getName()),
                1,
                <item:tfc_ie_addon:mold_sheet>
            );
        }

        if (metal.hasOre()) {

            <recipetype:immersiveengineering:arc_furnace>.addRecipe(("arcfurnace/" + metal.getName()), (BracketHandlers.getItem("tjfc:metal/scrap/" + metal.getName())) * 1, [], 100, 51200, [(BracketHandlers.getItem("firmalife:metal/ingot/" + metal.getName())) * 1]);

            for ore in vars.metalMapToOre[metal] {

                <recipetype:immersiveengineering:metal_press>.addRecipe("metalpress/scrap_from_small_" + ore.getName(), (BracketHandlers.getItem("firmalife:ore/small_" + ore.getName())) * 10, <item:tfc:metal/double_ingot/black_steel>, 2400, (BracketHandlers.getItem("tjfc:metal/scrap/" + metal.getName())) * 1);
                <recipetype:immersiveengineering:metal_press>.addRecipe("metalpress/scrap_from_poor_" + ore.getName(), (BracketHandlers.getItem("firmalife:ore/poor_" + ore.getName())) * 4, <item:tfc:metal/double_ingot/black_steel>, 2400, (BracketHandlers.getItem("tjfc:metal/scrap/" + metal.getName())) * 1);
                <recipetype:immersiveengineering:metal_press>.addRecipe("metalpress/scrap_from_normal_" + ore.getName(), (BracketHandlers.getItem("firmalife:ore/normal_" + ore.getName())) * 2, <item:tfc:metal/double_ingot/black_steel>, 2400, (BracketHandlers.getItem("tjfc:metal/scrap/" + metal.getName())) * 1);
                <recipetype:immersiveengineering:metal_press>.addRecipe("metalpress/scrap_from_rich_" + ore.getName(), (BracketHandlers.getItem("firmalife:ore/rich_" + ore.getName())) * 4, <item:tfc:metal/double_ingot/black_steel>, 2400, (BracketHandlers.getItem("tjfc:metal/scrap/" + metal.getName())) * 3);


            }
        }
    }
}