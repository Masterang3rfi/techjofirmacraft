import crafttweaker.api.bracket.BracketHandlers;




//Blast Furnace Recipes

addBlastFurnace("blastfurnace/pig_iron_from_cast_ingot", <tag:items:forge:ingots/cast_iron>, 1, <item:tfc:metal/ingot/pig_iron>, 1);
addBlastFurnace("blastfurnace/pig_iron_from_cast_scrap", <item:tjfc:metal/scrap/cast_iron>, 1, <item:tfc:metal/ingot/pig_iron>, 1);
addBlastFurnace("blastfurnace/pig_iron_from_wrought_ingot", <tag:items:forge:ingots/wrought_iron>, 1, <item:tfc:metal/ingot/pig_iron>, 1);

//Metal Press Recipes

val excludedMetals = [] as string[];
var excludedRods = ["bronze","brass","zinc","tin","silver","copper","nickel","rose_gold","gold"] as string[];

for metal in Metal.values {

    if (metal.modID() == "tfc" && !(metal.getName() in excludedMetals)) {

        //Generates parts
        if (metal.hasParts()) {

            val recipePrefix = "metalpress/" + metal.getName() + "_";

            addMetalPress(
                recipePrefix + "double_ingot",
                <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                2,
                BracketHandlers.getItem(metal.modID()+ ":metal/double_ingot/"+ metal.getName()),
                1,
                <item:tjfc:mold/double_ingot>
            );

            addMetalPress(
                recipePrefix + "double_sheet",
                BracketHandlers.getItem(metal.modID()+ ":metal/sheet/"+ metal.getName()),
                2,
                BracketHandlers.getItem(metal.modID()+ ":metal/double_sheet/"+ metal.getName()),
                1,
                <item:tfc_ie_addon:mold_sheet>
            );

            if (!(metal.getName() in excludedRods)) {
                addMetalPress(
                    recipePrefix + "rod",
                    <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                    1,
                    BracketHandlers.getItem(metal.modID()+ ":metal/rod/"+ metal.getName()),
                    2,
                    <item:immersiveengineering:mold_rod>
                );
            }

            addMetalPress(
                recipePrefix + "sheet",
                <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                2,
                BracketHandlers.getItem(metal.modID()+ ":metal/sheet/"+ metal.getName()),
                1,
                <item:tfc_ie_addon:mold_sheet>
            );
        }

        //Generates tool heads/blades from tfc metals and tjfc molds
        if (metal.hasTools()) {
            for tool in Tool.values {

                val toolCompound = tool.getName() + "_" + tool.getHeadType();
                val recipeName = "metalpress/" + metal.getName() + "_" + toolCompound;
                val inputItem = <tagmanager:items>.tag("forge:ingots/" + metal.getName());
                val outputItem = BracketHandlers.getItem(metal.modID()+ ":metal/"+ toolCompound +"/"+ metal.getName());
                val moldItem = tool.getMoldItem();

                addMetalPress(recipeName, inputItem, (1 * tool.getMetalAmount()), outputItem, 1, moldItem);
            }
        }
    }
}


