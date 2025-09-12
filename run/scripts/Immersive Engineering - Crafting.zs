




craftingTable.removeByName("immersiveengineering:crafting/cokebrick");
craftingTable.removeByName("immersiveengineering:crafting/stairs_slag_brick");
craftingTable.removeByName("immersiveengineering:crafting/steel_fence");
craftingTable.removeByName("immersiveengineering:crafting/alu_fence");
craftingTable.removeByName("immersiveengineering:crafting/treated_fence");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_horizontal");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_vertical");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_packaged");




craftingTable.addShaped("crafting/blast_brick", <item:immersiveengineering:blastbrick> * 4, [
    [<item:tjfc:metal/screw/steel>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/steel>],
    [<item:tfc:fire_bricks>, <item:tjfc:metal/strip/steel>, <item:tfc:fire_bricks>],
    [<item:tjfc:metal/screw/steel>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/steel>]]);

craftingTable.addShaped("crafting/coke_brick", <item:immersiveengineering:cokebrick> * 4, [
    [<item:tjfc:metal/screw/wrought_iron>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/wrought_iron>],
    [<item:tfc:fire_bricks>, <item:tjfc:metal/strip/wrought_iron>, <item:tfc:fire_bricks>],
    [<item:tjfc:metal/screw/wrought_iron>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/wrought_iron>]]);



addCraftingStairs("crafting/slag_brick_stairs", <item:immersiveengineering:stairs_slag_brick>, <item:immersiveengineering:slag_brick>);
addCraftingStairs("crafting/treated_wood_horizontal_stairs", <item:immersiveengineering:stairs_treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>);
addCraftingStairs("crafting/treated_wood_vertical_stairs", <item:immersiveengineering:stairs_treated_wood_vertical>, <item:immersiveengineering:treated_wood_vertical>);
addCraftingStairs("crafting/treated_wood_packaged_stairs", <item:immersiveengineering:stairs_treated_wood_packaged>, <item:immersiveengineering:treated_wood_packaged>);


addCraftingFence("crafting/steel_fence", <item:immersiveengineering:steel_fence>, <tag:items:forge:rods/steel>, <tag:items:forge:ingots/steel>);
addCraftingFence("crafting/aluminum_fence", <item:immersiveengineering:alu_fence>, <tag:items:forge:rods/aluminum>, <tag:items:forge:ingots/aluminum>);
addCraftingFence("crafting/treated_fence", <item:immersiveengineering:treated_fence>, <tag:items:forge:rods/treated_wood>, <tag:items:forge:treated_wood>);


