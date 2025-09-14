import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.IFluidStack;


public function addCraftingStairs(recipeName as string, outputItem as IItemStack, inputItem as IItemStack   ) as void {
    craftingTable.addShaped(recipeName, outputItem * 8, [
        [inputItem, <item:minecraft:air>, <item:minecraft:air>],
        [inputItem, inputItem, <item:minecraft:air>],
        [inputItem, inputItem, inputItem]]);
}

public function addCraftingFence(recipeName as string, outputItem as IItemStack, stickItem as IIngredient, postItem as IIngredient) as void {
    craftingTable.addShaped(recipeName, outputItem * 8, [
        [postItem, stickItem, postItem],
        [postItem, stickItem, postItem]]);
}

public function addHeatingRecipe(recipeName as string, inputItem as IItemStack, resultFluid as IFluidStack, fluidAmount as int, temperature as int) as void {
    <recipetype:tfc:heating>.addJsonRecipe(recipeName, {
      "type": "tfc:heating",
      "ingredient": {
        "item": inputItem.registryName
      },
      "result_fluid": {
        "fluid": resultFluid.registryName,
        "amount": fluidAmount
      },
      "temperature": temperature
    });
    }

public function addAnvilRecipeThreeRule(recipeName as string, inputItem as IItemStack, outputItem as IItemStack, tier as int, rule0 as string, rule1 as string, rule2 as string, forging_bonus as bool) as void {
    <recipetype:tfc:anvil>.addJsonRecipe(recipeName, {
        "type": "tfc:anvil",
        "input": {
            "item": inputItem.registryName
        },
        "result": {
            "item": outputItem.registryName
        },
        "tier": tier,
        "rules": [
            rule0,
            rule1,
            rule2
        ],
        "apply_forging_bonus": forging_bonus
    });
}

public function addAnvilRecipeTwoRule(recipeName as string, inputItem as IItemStack, outputItem as IItemStack, tier as int, rule0 as string, rule1 as string, rule2 as string, forging_bonus as bool) as void {
    <recipetype:tfc:anvil>.addJsonRecipe(recipeName, {
        "type": "tfc:anvil",
        "input": {
            "item": inputItem.registryName
        },
        "result": {
            "item": outputItem.registryName
        },
        "tier": tier,
        "rules": [
            rule0,
            rule1
        ],
        "apply_forging_bonus": forging_bonus
    });
}