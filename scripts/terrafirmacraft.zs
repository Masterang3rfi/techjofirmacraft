import crafttweaker.api.bracket.BracketHandlers;


//Arc Furnace

<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/bismuth_bronze", <tag:items:forge:ingots/copper> * 3, [<tag:items:forge:ingots/zinc> * 1, <tag:items:forge:ingots/bismuth> * 1], 250, 51200, [<item:tfc:metal/ingot/bismuth_bronze> * 5]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/black_bronze", <tag:items:forge:ingots/copper> * 3, [<tag:items:forge:ingots/gold> * 1, <tag:items:forge:ingots/silver> * 1], 250, 51200, [<item:tfc:metal/ingot/black_bronze> * 5]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/black_steel", <tag:items:forge:ingots/weak_steel> * 1, [<tag:items:forge:ingots/pig_iron> * 1, <item:tfc:powder/flux> * 1], 100, 51200, [<item:tfc:metal/ingot/black_steel> * 2]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/blue_steel", <tag:items:forge:ingots/black_steel> * 10, [<tag:items:forge:ingots/steel> * 4, <tag:items:forge:ingots/bismuth_bronze> * 3, <tag:items:forge:ingots/sterling_silver> * 3], 1000, 51200, [<item:tfc:metal/ingot/blue_steel> * 20]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/brass", <tag:items:forge:ingots/copper> * 9, [<tag:items:forge:ingots/zinc> * 1], 500, 51200, [<item:tfc:metal/ingot/brass> * 10]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/bronze", <tag:items:forge:ingots/copper> * 9, [<tag:items:forge:ingots/tin> * 1], 500, 51200, [<item:tfc:metal/ingot/bronze> * 10]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/red_steel", <tag:items:forge:ingots/black_steel> * 10, [<tag:items:forge:ingots/steel> * 4, <tag:items:forge:ingots/brass> * 3, <tag:items:forge:ingots/rose_gold> * 3], 1000, 51200, [<item:tfc:metal/ingot/red_steel> * 20]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/rose_gold", <tag:items:forge:ingots/gold> * 4, [<tag:items:forge:ingots/copper> * 1], 250, 51200, [<item:tfc:metal/ingot/rose_gold> * 5]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/sterling_silver", <tag:items:forge:ingots/silver> * 4, [<tag:items:forge:ingots/copper> * 1], 250, 51200, [<item:tfc:metal/ingot/sterling_silver> * 5]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/weak_steel", <tag:items:forge:ingots/steel> * 3, [<tag:items:forge:ingots/black_bronze> * 1, <tag:items:forge:ingots/nickel> * 1], 250, 51200, [<item:tfc:metal/ingot/sterling_silver> * 5]);
<recipetype:immersiveengineering:arc_furnace>.addRecipe("arcfurnace/wrought_iron", <tag:items:forge:ingots/cast_iron> * 1, [], 50, 51200, [<item:tfc:metal/ingot/wrought_iron> * 1], <item:immersiveengineering:slag>);

//check looped recipes

//Blast Furnace Recipes

addBlastFurnace("blastfurnace/pig_iron_from_cast_ingot", <tag:items:forge:ingots/cast_iron>, 1, <item:tfc:metal/ingot/pig_iron>, 1);
addBlastFurnace("blastfurnace/pig_iron_from_cast_scrap", <item:tjfc:metal/scrap/cast_iron>, 1, <item:tfc:metal/ingot/pig_iron>, 1);
addBlastFurnace("blastfurnace/pig_iron_from_wrought_ingot", <tag:items:forge:ingots/wrought_iron>, 1, <item:tfc:metal/ingot/pig_iron>, 1);

//Crusher Recipes

<recipetype:immersiveengineering:crusher>.addRecipe("crusher/graphite", <item:tfc:ore/graphite>, 3000, <item:tfc:powder/graphite> * 8);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/sylvite", <item:tfc:ore/sylvite>, 3000, <item:tfc:powder/sylvite> * 8);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/charcoal", <item:minecraft:charcoal>, 3000, <item:tfc:powder/charcoal> * 8);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/sulfur", <item:tfc:ore/sulfur>, 3000, <item:tfc:powder/sulfur> * 8);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/fluxstone", <tag:items:tfc:fluxstone>, 3000, <item:tfc:powder/flux> * 4);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/saltpeter", <item:tfc:ore/saltpeter>, 3000, <item:tfc:powder/saltpeter> * 8);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/borax", <item:tfc:ore/borax>, 3000, <item:tfc:powder/flux> * 8);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher/halite", <item:tfc:ore/halite>, 3000, <item:tfc:powder/salt> * 8);


for gem in Gem.values {

    val outputItem = BracketHandlers.getItem("tfc:powder/" + gem.getName());

    <recipetype:immersiveengineering:crusher>.addRecipe("crusher/ore_" + gem.getName(), BracketHandlers.getItem("tfc:ore/" + gem.getName()), 3000, outputItem  * 8);
    <recipetype:immersiveengineering:crusher>.addRecipe("crusher/gem_" + gem.getName(), BracketHandlers.getItem("tfc:gem/" + gem.getName()), 3000, outputItem * 8);

}


//Metal Press Recipes

//check looped recipes




// Looped Recipes

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
                BracketHandlers.getItem("tfc:metal/double_ingot/"+ metal.getName()),
                1,
                <item:tjfc:mold/double_ingot>
            );

            addMetalPress(
                recipePrefix + "double_sheet",
                BracketHandlers.getItem("tfc:metal/sheet/"+ metal.getName()),
                2,
                BracketHandlers.getItem("tfc:metal/double_sheet/"+ metal.getName()),
                1,
                <item:tfc_ie_addon:mold_sheet>
            );

            if (!(metal.getName() in excludedRods)) {
                addMetalPress(
                    recipePrefix + "rod",
                    <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                    1,
                    BracketHandlers.getItem("tfc:metal/rod/"+ metal.getName()),
                    2,
                    <item:immersiveengineering:mold_rod>
                );
            }

            addMetalPress(
                recipePrefix + "sheet",
                <tagmanager:items>.tag("forge:ingots/" + metal.getName()),
                2,
                BracketHandlers.getItem("tfc:metal/sheet/"+ metal.getName()),
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
                val outputItem = BracketHandlers.getItem("tfc:metal/"+ toolCompound +"/"+ metal.getName());
                val moldItem = tool.getMoldItem();

                addMetalPress(recipeName, inputItem, (1 * tool.getMetalAmount()), outputItem, 1, moldItem);
            }
        }

        if (metal.hasOre()) {

            val recipeName = ("arcfurnace/" + metal.getName());
            val inputItem = BracketHandlers.getItem("tjfc:metal/scrap/" + metal.getName());
            val outputItem = BracketHandlers.getItem("tfc:metal/ingot/" + metal.getName());

            <recipetype:immersiveengineering:arc_furnace>.addRecipe(recipeName, inputItem * 1, [], 100, 51200, [outputItem * 1]);
        }
    }
}


