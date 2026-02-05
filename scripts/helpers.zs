#priority 90

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.data.ListData;
import crafttweaker.api.block.Block;

public expand string[] {
    public implicit as IData {
        var list = new ListData();
        for a in this  { list.add(a as IData); }
        return list;
    }
}

public class vars {

    public static val redstone_acid = <item:immersiveengineering:redstone_acid_bucket> | <item:tfc:metal/bucket/red_steel>.withTag({fluid: {FluidName: "immersiveengineering:redstone_acid", Amount: 1000}}) | <item:tfc:wooden_bucket>.withTag({fluid: {FluidName: "immersiveengineering:redstone_acid", Amount: 1000}});
    public static val water = <item:minecraft:water_bucket> | <item:tfc:metal/bucket/red_steel>.withTag({fluid: {FluidName: "minecraft:water", Amount: 1000}}) | <item:tfc:wooden_bucket>.withTag({fluid: {FluidName: "minecraft:water", Amount: 1000}}) | <item:tfc:metal/bucket/blue_steel>.withTag({fluid: {FluidName: "minecraft:water", Amount: 1000}});

    public static val air = <item:minecraft:air>;

    public static val steel_ingot = <tag:items:forge:ingots/steel>;
    public static val steel_plate = <tag:items:forge:plates/steel>;
    public static val iron_ingot = <tag:items:forge:ingots/iron>;
    public static val iron_plate  = <tag:items:forge:plates/iron>;
    public static val constantan_plate = <tag:items:forge:plates/constantan>;

    public static val copper = <tag:items:forge:ingots/copper>;
    public static val gold = <tag:items:forge:ingots/gold>;
    public static val zinc = <tag:items:forge:ingots/zinc>;
    public static val brass = <tag:items:forge:ingots/brass>;
    public static val bismuth = <tag:items:forge:ingots/bismuth>;
    public static val silver = <tag:items:forge:ingots/silver>;
    public static val steel = <tag:items:forge:ingots/steel>;
    public static val wrought_iron = <tag:items:forge:ingots/wrought_iron>;
    public static val cast_iron = <tag:items:forge:ingots/cast_iron>;
    public static val tin = <tag:items:forge:ingots/tin>;
    public static val nickel = <tag:items:forge:ingots/nickel>;
    public static val uranium = <tag:items:forge:ingots/uranium>;

    public static val metalMapToOre = {
        Metal.ALUMINUM : [Ore.BAUXITE],
        Metal.CAST_IRON : [Ore.HEMATITE, Ore.MAGNETITE, Ore.LIMONITE],
        Metal.CHROMIUM : [Ore.CHROMITE],
        Metal.BISMUTH : [Ore.BISMUTHINITE],
        Metal.COPPER : [Ore.NATIVE_COPPER, Ore.MALACHITE, Ore.TETRAHEDRITE],
        Metal.GOLD : [Ore.NATIVE_GOLD],
        Metal.LEAD : [Ore.GALENA],
        Metal.NICKEL : [Ore.GARNIERITE],
        Metal.SILVER : [Ore.NATIVE_SILVER],
        Metal.TIN : [Ore.CASSITERITE],
        Metal.URANIUM : [Ore.URANINITE],
        Metal.ZINC : [Ore.SPHALERITE]


    } as Ore[][Metal];
}

function addCraftingStairs(recipeName as string, outputItem as IItemStack, inputItem as IItemStack   ) as void {
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

//TFC Helpers

public function addGlassworking(recipeName as string, inputItem as IIngredient, resultItem as IItemStack, operations as IData) as void {
    <recipetype:tfc:glassworking>.addJsonRecipe(recipeName, {
         "type": "tfc:glassworking",
         "operations": operations,
         "batch": inputItem as IData,
         "result": resultItem as IData,
    });
}

public function addLoom(recipeName as string, inputItem as IIngredient, inputAmount as int, resultItem as IItemStack, requiredSteps as int, progressTexture as string) as void {
    <recipetype:tfc:loom>.addJsonRecipe(recipeName, {
        "type": "tfc:loom",
        "ingredient": {
            "ingredient": inputItem as IData,
            "count": inputAmount
        },
        "result": resultItem as IData,
        "steps_required": requiredSteps,
        "in_progress_texture": progressTexture
    });
}

public function addHeatingSolid(recipeName as string, inputItem as IItemStack, resultItem as IItemStack, temperature as int) as void {
    <recipetype:tfc:heating>.addJsonRecipe(recipeName, {
      "type": "tfc:heating",
      "ingredient": {
        "item": inputItem.registryName
      },
      "result_item": {
          "item": resultItem.registryName
      },
      "temperature": temperature
    });
}

public function addHeatingLiquid(recipeName as string, inputItem as IItemStack, resultFluid as IFluidStack, fluidAmount as int, temperature as int) as void {
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


//IE Helpers

public function addBlastFurnace(recipeName as string, inputItem as IIngredient, inputAmount as int, outputItem as IItemStack, outputAmount as int) as void {
    <recipetype:immersiveengineering:blast_furnace>.addJsonRecipe(recipeName, {
        "type": "immersiveengineering:blast_furnace",
        "input": {
            "base_ingredient": [
              inputItem as IData
            ],
            "count": inputAmount
        },
        "result": {
            "item": outputItem.registryName,
            "count": outputAmount
        },
        "slag": {
            "tag": "forge:slag"
          },
        time: 1200
    });
}

public function addCrusher(recipeName as string, inputItem as IIngredient, inputAmount as int, outputItem as IItemStack, outputAmount as int) as void {
    <recipetype:immersiveengineering:blast_furnace>.addJsonRecipe(recipeName, {
        "type": "immersiveengineering:blast_furnace",
        "input": {
            "base_ingredient": [
              inputItem as IData
            ],
            "count": inputAmount
        },
        "result": {
            "item": outputItem.registryName,
            "count": outputAmount
        },
        "slag": {
            "tag": "forge:slag"
          },
        time: 1200
    });
}

public function addMetalPress(recipeName as string, inputItem as IIngredient, inputAmount as int, outputItem as IItemStack, outputAmount as int, moldItem as IItemStack) as void {
    <recipetype:immersiveengineering:metal_press>.addJsonRecipe(recipeName, {
        "type": "immersiveengineering:metal_press",
        "mold": moldItem.registryName,
        "input": {
          "base_ingredient": [
            inputItem as IData
          ],
          "count": inputAmount
        },
        "result": {
          "item": outputItem.registryName,
          "count": outputAmount
        },
        "energy": 2400
      });
}


