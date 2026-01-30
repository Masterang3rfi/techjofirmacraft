import crafttweaker.api.ingredient.IIngredient;




//Anvil Recipes

addAnvilRecipeThreeRule("anvil/plate_copper", <item:tfc:metal/ingot/copper>, <item:immersiveengineering:plate_copper>, 1, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_aluminum", <item:immersiveengineering:ingot_aluminum>, <item:immersiveengineering:plate_aluminum>, 1, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_lead", <item:immersiveengineering:ingot_lead>, <item:immersiveengineering:plate_lead>, 1, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_silver", <item:tfc:metal/ingot/silver>, <item:immersiveengineering:plate_silver>, 1, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_nickel", <item:tfc:metal/ingot/nickel>, <item:immersiveengineering:plate_nickel>, 1, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_uranium", <item:immersiveengineering:ingot_uranium>, <item:immersiveengineering:plate_uranium>, 4, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_constantan", <item:immersiveengineering:ingot_constantan>, <item:immersiveengineering:plate_constantan>, 3, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_electrum", <item:immersiveengineering:ingot_electrum>, <item:immersiveengineering:plate_electrum>, 3, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_steel", <item:tfc:metal/ingot/steel>, <item:immersiveengineering:plate_steel>, 4, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_iron", <item:tfc:metal/ingot/wrought_iron>, <item:immersiveengineering:plate_iron>, 3, "hit_last", "hit_second_last", "hit_third_last", false);
addAnvilRecipeThreeRule("anvil/plate_gold", <item:tfc:metal/ingot/gold>, <item:immersiveengineering:plate_gold>, 1, "hit_last", "hit_second_last", "hit_third_last", false);

addAnvilRecipeThreeRule("anvil/wire_copper", <item:tjfc:metal/wire/copper>, <item:immersiveengineering:wire_copper>, 1, "draw_last", "draw_second_last", "draw_third_last", false);
addAnvilRecipeThreeRule("anvil/wire_aluminum", <item:tjfc:metal/wire/aluminum>, <item:immersiveengineering:wire_aluminum>, 1, "draw_last", "draw_second_last", "draw_third_last", false);
addAnvilRecipeThreeRule("anvil/wire_electrum", <item:tjfc:metal/wire/electrum>, <item:immersiveengineering:wire_electrum>, 3, "draw_last", "draw_second_last", "draw_third_last", false);
addAnvilRecipeThreeRule("anvil/wire_lead", <item:tjfc:metal/wire/lead>, <item:immersiveengineering:wire_lead>, 2, "draw_last", "draw_second_last", "draw_third_last", false);
addAnvilRecipeThreeRule("anvil/wire_steel", <item:tjfc:metal/wire/steel>, <item:immersiveengineering:wire_steel>, 4, "draw_last", "draw_second_last", "draw_third_last", false);

addAnvilRecipeThreeRule("anvil/revolver_hammer", <item:tfc:metal/rod/steel>, <item:immersiveengineering:gunpart_hammer>, 4, "bend_last", "bend_second_last", "draw_third_last", false);

//Blast Furnace

<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel_block");
<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel");


//Coke Oven

<recipetype:immersiveengineering:coke_oven>.removeByName("immersiveengineering:cokeoven/coke_block");

//Crafting Recipes

craftingTable.removeByName("immersiveengineering:crafting/cokebrick");
craftingTable.removeByName("immersiveengineering:crafting/stairs_slag_brick");
craftingTable.removeByName("immersiveengineering:crafting/steel_fence");
craftingTable.removeByName("immersiveengineering:crafting/alu_fence");
craftingTable.removeByName("immersiveengineering:crafting/treated_fence");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_horizontal");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_vertical");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_packaged");
craftingTable.removeByName("immersiveengineering:crafting/shield");
craftingTable.removeByName("immersiveengineering:crafting/rs_engineering");
craftingTable.removeByName("immersiveengineering:crafting/heavy_engineering");
craftingTable.removeByName("immersiveengineering:crafting/light_engineering");
craftingTable.removeByName("immersiveengineering:crafting/capacitor_lv");
craftingTable.removeByName("immersiveengineering:crafting/capacitor_mv");
craftingTable.removeByName("immersiveengineering:crafting/capacitor_hv");
craftingTable.removeByName("immersiveengineering:crafting/redstone_acid");
craftingTable.removeByName("immersiveengineering:crafting/stairs_clinker_brick");
craftingTable.removeByName("immersiveengineering:crafting/gunpart_hammer");
craftingTable.removeByName("immersiveengineering:crafting/hemp_fabric");
craftingTable.removeByName("immersiveengineering:crafting/fertilizer");
craftingTable.removeByName("immersiveengineering:crafting/slag_brick");
craftingTable.removeByName("immersiveengineering:crafting/hempcrete");
craftingTable.removeByName("immersiveengineering:crafting/concrete");
craftingTable.removeByName("immersiveengineering:crafting/radiator");
craftingTable.removeByName("immersiveengineering:crafting/steel_slope");
craftingTable.removeByName("immersiveengineering:crafting/alu_slope");
craftingTable.removeByName("immersiveengineering:crafting/metal_ladder_none");
craftingTable.removeByName("immersiveengineering:crafting/stairs_steel_scaffolding_standard");
craftingTable.removeByName("immersiveengineering:crafting/stairs_steel_scaffolding_grate_top");
craftingTable.removeByName("immersiveengineering:crafting/stairs_steel_scaffolding_wooden_top");
craftingTable.removeByName("immersiveengineering:crafting/stairs_alu_scaffolding_standard");
craftingTable.removeByName("immersiveengineering:crafting/stairs_alu_scaffolding_grate_top");
craftingTable.removeByName("immersiveengineering:crafting/stairs_alu_scaffolding_wooden_top");
craftingTable.removeByName("immersiveengineering:crafting/stairs_hempcrete");
craftingTable.removeByName("immersiveengineering:crafting/stairs_hempcrete_brick");
craftingTable.removeByName("immersiveengineering:crafting/stairs_concrete");
craftingTable.removeByName("immersiveengineering:crafting/stairs_concrete_brick");
craftingTable.removeByName("immersiveengineering:crafting/stairs_concrete_tile");
craftingTable.removeByName("immersiveengineering:crafting/stairs_concrete_leaded");


craftingTable.addShapeless("crafting/fertilizer", <item:immersiveengineering:fertilizer> * 3, [<tag:items:forge:dusts/saltpeter>, <tag:items:forge:slag>, <tag:items:forge:dusts/sulfur>]);
craftingTable.addShapeless("crafting/reinforced_blast_brick", <item:immersiveengineering:blastbrick_reinforced> , [<item:immersiveengineering:blastbrick>, <item:tfc:metal/double_sheet/steel>, <tag:items:tjfc:hammers_hard>.asIIngredient().transformDamage(1)]);

craftingTable.addShaped("crafting/blast_brick", <item:immersiveengineering:blastbrick> * 4, [
    [<item:tjfc:metal/screw/steel>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/steel>],
    [<item:tfc:fire_bricks>, <item:tjfc:metal/strip/steel>, <item:tfc:fire_bricks>],
    [<item:tjfc:metal/screw/steel>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/steel>]]);

craftingTable.addShaped("crafting/coke_brick", <item:immersiveengineering:cokebrick> * 4, [
    [<item:tjfc:metal/screw/wrought_iron>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/wrought_iron>],
    [<item:tfc:fire_bricks>, <item:tjfc:metal/strip/wrought_iron>, <item:tfc:fire_bricks>],
    [<item:tjfc:metal/screw/wrought_iron>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/wrought_iron>]]);

craftingTable.addShaped("crafting/ieshield_from_blue_steel_shield", <item:immersiveengineering:shield>, [
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate],
    [vars.steel_plate, <item:tfc:metal/shield/blue_steel>, vars.steel_plate],
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate]]);

craftingTable.addShaped("crafting/ieshield_from_red_steel_shield", <item:immersiveengineering:shield>, [
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate],
    [vars.steel_plate, <item:tfc:metal/shield/red_steel>, vars.steel_plate],
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate]]);

craftingTable.addShaped("crafting/rs_engineering", <item:immersiveengineering:rs_engineering> * 2, [
    [vars.steel_plate, <tag:items:tjfc:hammers_hard>.asIIngredient().transformDamage(1), vars.steel_plate],
    [<item:minecraft:redstone>, <tag:items:forge:ingots/copper>, <item:minecraft:redstone>],
    [vars.steel_plate, <item:minecraft:redstone>, vars.steel_plate]]);

craftingTable.addShaped("crafting/heavy_engineering", <item:immersiveengineering:heavy_engineering> * 2, [
    [vars.steel_plate, <tag:items:tjfc:hammers_hard>.asIIngredient().transformDamage(1), vars.steel_plate],
    [<item:minecraft:piston>, <tag:items:forge:ingots/electrum>, <item:minecraft:piston>],
    [vars.steel_plate, <item:immersiveengineering:component_steel>, vars.steel_plate]]);

craftingTable.addShaped("crafting/light_engineering", <item:immersiveengineering:light_engineering> * 2, [
    [vars.iron_plate, <item:immersiveengineering:component_iron>, vars.iron_plate],
    [<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>],
    [vars.iron_plate, <item:immersiveengineering:component_iron>, vars.iron_plate]]);

craftingTable.addShaped("crafting/capacitor_lv", <item:immersiveengineering:capacitor_lv>, [
    [vars.iron_ingot, vars.iron_ingot, vars.iron_ingot],
    [<tag:items:forge:ingots/copper>, <tag:items:forge:plates/lead>, <tag:items:forge:ingots/copper>],
    [<tag:items:forge:treated_wood>, vars.redstone_acid, <tag:items:forge:treated_wood>]]);

craftingTable.addShaped("crafting/capacitor_mv", <item:immersiveengineering:capacitor_mv>, [
    [vars.iron_ingot, vars.iron_ingot, vars.iron_ingot],
    [<tag:items:forge:ingots/electrum>, <tag:items:forge:plates/nickel>, <tag:items:forge:ingots/electrum>],
    [<tag:items:forge:treated_wood>, vars.redstone_acid, <tag:items:forge:treated_wood>]]);

craftingTable.addShaped("crafting/capacitor_hv", <item:immersiveengineering:capacitor_hv>, [
    [vars.steel_ingot, vars.steel_ingot, vars.steel_ingot],
    [<tag:items:forge:ingots/hop_graphite>, <tag:items:forge:plates/aluminum>, <tag:items:forge:ingots/hop_graphite>],
    [<tag:items:forge:treated_wood>, vars.redstone_acid, <tag:items:forge:treated_wood>]]);

craftingTable.addShaped("crafting/slag_brick", <item:immersiveengineering:slag_brick> * 4, [
    [<tag:items:forge:slag>, <tag:items:tfc:mortar>, <tag:items:forge:slag>],
    [<tag:items:tfc:mortar>, <tag:items:forge:slag>, <tag:items:tfc:mortar>],
    [<tag:items:forge:slag>, <tag:items:tfc:mortar>, <tag:items:forge:slag>]]);

craftingTable.addShaped("crafting/hempcrete", <item:immersiveengineering:hempcrete> * 4, [
    [<tag:items:forge:clay>, <tag:items:forge:fiber_hemp>, <tag:items:forge:clay>],
    [<tag:items:forge:fiber_hemp>, vars.water, <tag:items:forge:fiber_hemp>],
    [<tag:items:forge:clay>, <tag:items:forge:fiber_hemp>, <tag:items:forge:clay>]]);

craftingTable.addShaped("crafting/concrete", <item:immersiveengineering:concrete> * 8, [
    [<tag:items:forge:sand>, <tag:items:forge:clay>, <tag:items:forge:sand>],
    [<tag:items:forge:gravel>, vars.water, <tag:items:forge:gravel>],
    [<tag:items:forge:sand>, <tag:items:forge:clay>, <tag:items:forge:sand>]]);

craftingTable.addShaped("crafting/radiator", <item:immersiveengineering:radiator> * 4, [
    [<tag:items:forge:sheetmetals/steel>, vars.constantan_plate, <tag:items:forge:sheetmetals/steel>],
    [vars.constantan_plate, vars.water, vars.constantan_plate],
    [<tag:items:forge:sheetmetals/steel>, vars.constantan_plate, <tag:items:forge:sheetmetals/steel>]]);

craftingTable.addShaped("crafting/steel_slope", <item:immersiveengineering:steel_slope> * 12, [
    [<item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>],
    [<item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>, vars.air],
    [<item:immersiveengineering:steel_scaffolding_standard>, vars.air, vars.air]]);

craftingTable.addShaped("crafting/aluminum_slope", <item:immersiveengineering:alu_slope> * 12, [
    [<item:immersiveengineering:alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>],
    [<item:immersiveengineering:alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>, vars.air],
    [<item:immersiveengineering:alu_scaffolding_standard>, vars.air, vars.air]]);

craftingTable.addShaped("crafting/metal_ladder", <item:immersiveengineering:metal_ladder_none> * 16, [
    [<tag:items:forge:rods/all_metal>, vars.air, <tag:items:forge:rods/all_metal>],
    [<tag:items:forge:rods/all_metal>, vars.air, <tag:items:forge:rods/all_metal>],
    [<tag:items:forge:rods/all_metal>, vars.air, <tag:items:forge:rods/all_metal>]]);


addCraftingStairs("crafting/slag_brick_stairs", <item:immersiveengineering:stairs_slag_brick>, <item:immersiveengineering:slag_brick>);
addCraftingStairs("crafting/treated_wood_horizontal_stairs", <item:immersiveengineering:stairs_treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>);
addCraftingStairs("crafting/treated_wood_vertical_stairs", <item:immersiveengineering:stairs_treated_wood_vertical>, <item:immersiveengineering:treated_wood_vertical>);
addCraftingStairs("crafting/treated_wood_packaged_stairs", <item:immersiveengineering:stairs_treated_wood_packaged>, <item:immersiveengineering:treated_wood_packaged>);
addCraftingStairs("crafting/clinker_brick_stairs", <item:immersiveengineering:stairs_clinker_brick>, <item:immersiveengineering:clinker_brick>);
addCraftingStairs("crafting/steel_scaffolding_standard_stairs", <item:immersiveengineering:stairs_steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>);
addCraftingStairs("crafting/steel_scaffolding_grate_top_stairs", <item:immersiveengineering:stairs_steel_scaffolding_grate_top>, <item:immersiveengineering:steel_scaffolding_grate_top>);
addCraftingStairs("crafting/steel_scaffolding_wooden_top_stairs", <item:immersiveengineering:stairs_steel_scaffolding_wooden_top>, <item:immersiveengineering:steel_scaffolding_wooden_top>);
addCraftingStairs("crafting/alu_scaffolding_standard_stairs", <item:immersiveengineering:stairs_alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>);
addCraftingStairs("crafting/alu_scaffolding_grate_top_stairs", <item:immersiveengineering:stairs_alu_scaffolding_grate_top>, <item:immersiveengineering:alu_scaffolding_grate_top>);
addCraftingStairs("crafting/alu_scaffolding_wooden_top_stairs", <item:immersiveengineering:stairs_alu_scaffolding_wooden_top>, <item:immersiveengineering:alu_scaffolding_wooden_top>);
addCraftingStairs("crafting/hempcrete_stairs", <item:immersiveengineering:stairs_hempcrete>, <item:immersiveengineering:hempcrete>);
addCraftingStairs("crafting/hempcrete_brick_stairs", <item:immersiveengineering:stairs_hempcrete_brick>, <item:immersiveengineering:hempcrete_brick>);
addCraftingStairs("crafting/concrete_stairs", <item:immersiveengineering:stairs_concrete>, <item:immersiveengineering:concrete>);
addCraftingStairs("crafting/concrete_tile_stairs", <item:immersiveengineering:stairs_concrete_tile>, <item:immersiveengineering:concrete_tile>);
addCraftingStairs("crafting/concrete_brick_stairs", <item:immersiveengineering:stairs_concrete_brick>, <item:immersiveengineering:concrete_brick>);
addCraftingStairs("crafting/concrete_leaded_stairs", <item:immersiveengineering:stairs_concrete_leaded>, <item:immersiveengineering:concrete_leaded>);


addCraftingFence("crafting/steel_fence", <item:immersiveengineering:steel_fence>, <tag:items:forge:rods/steel>, vars.steel_ingot);
addCraftingFence("crafting/aluminum_fence", <item:immersiveengineering:alu_fence>, <tag:items:forge:rods/aluminum>, <tag:items:forge:ingots/aluminum>);
addCraftingFence("crafting/treated_fence", <item:immersiveengineering:treated_fence>, <tag:items:forge:rods/treated_wood>, <tag:items:forge:treated_wood>);

//Crusher Recipes

<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/red_sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_lapis");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_quartz");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_coal");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/blaze_powder");

//Heating Recipes

addHeatingSolid("heating/clinker_brick", <item:minecraft:bricks>, <item:immersiveengineering:clinker_brick>, 1540);

//Kiln Recipes

<recipetype:immersiveengineering:alloy>.removeAll();

//Metal Press

<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/rod_iron");
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/rod_constantan");
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/rod_electrum");
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/rod_lead");

//Smoker Recipes

smoker.removeByName("immersiveengineering:smoking/clinker_brick");
