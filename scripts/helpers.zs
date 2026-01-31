#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.data.ListData;

public expand string[] {
    public implicit as IData {
        var list = new ListData();
        for a in this  { list.add(a as IData); }
        return list;
    }
}

public enum Metal {
    ALUMINUM("tfc_ie_addon","aluminum", false, false),
    BISMUTH_BRONZE("tfc","bismuth_bronze", true, true),
    BLACK_BRONZE("tfc","black_bronze", true, true),
    BLACK_STEEL("tfc","black_steel", true, true),
    BLUE_STEEL("tfc","blue_steel", true, true),
    BRASS("tfc","brass", true, false),
    BRONZE("tfc","bronze", true, true),
    CAST_IRON("tfc","cast_iron", true, false),
    CHROMIUM("firmalife","chromium", true, false),
    COPPER("tfc","copper", true, true),
    GOLD("tfc","gold", true, false),
    NICKEL("tfc","nickel", true, false),
    PIG_IRON("tfc","pig_iron", false, false),
    RED_STEEL("tfc","red_steel", true, true),
    ROSE_GOLD("tfc","rose_gold", true, false),
    SILVER("tfc","silver", true, false),
    STAINLESS_STEEL("firmalife","stainless_steel", true, false),
    STEEL("tfc","steel", true, true),
    STERLING_SILVER("tfc","sterling_silver", true, false),
    TIN("tfc","tin", true, false),
    URANIUM("tfc_ie_addon", "uranium", false , false),
    WROUGHT_IRON("tfc", "wrought_iron", true, true),
    ZINC("tfc", "zinc", true, false);

    val modID as string;
    val metalName as string;
    val parts as bool;
    val tools as bool;

    this(modID as string, metalName as string, parts as bool, tools as bool) {
        this.modID = modID;
        this.metalName = metalName;
        this.parts = parts;
        this.tools = tools;
    }

    public modID() as string {
        return modID;
    }

    public getName() as string {
        return metalName;
    }

    public hasParts() as bool {
        return parts;
    }

    public hasTools() as bool {
        return tools;
    }
}

public enum Tool {
    AXE("axe","head", 1, <item:tjfc:mold/axe>),
    CHISEL("chisel","head", 1, <item:tjfc:mold/chisel>),
    HAMMER("hammer","head", 1, <item:tjfc:mold/hammer>),
    HOE("hoe","head", 1, <item:tjfc:mold/hoe>),
    JAVELIN("javelin","head", 1, <item:tjfc:mold/javelin>),
    KNIFE("knife","blade", 1, <item:tjfc:mold/knife>),
    MACE("mace","head", 2, <item:tjfc:mold/mace>),
    PICKAXE("pickaxe","head", 1, <item:tjfc:mold/pickaxe>),
    PROPICK("propick","head", 1, <item:tjfc:mold/propick>),
    SAW("saw","blade", 1, <item:tjfc:mold/saw>),
    SCYTHE("scythe","blade", 1, <item:tjfc:mold/scythe>),
    SHOVEL("shovel","head", 1, <item:tjfc:mold/shovel>),
    SWORD("sword","blade", 2, <item:tjfc:mold/sword>);

    val toolName as string;
    val headType as string;
    val metalAmount as int; //in ingots
    val moldItem as IItemStack;

    this(toolName as string, headType as string, metalAmount as int, moldItem as IItemStack) {
        this.toolName = toolName;
        this.headType = headType;
        this.metalAmount = metalAmount;
        this.moldItem = moldItem;
    }

    public getName() as string {
        return toolName;
    }

    public getHeadType() as string {
        return headType;
    }

    public getMetalAmount() as int {
        return metalAmount;
    }

    public getMoldItem() as IItemStack {
        return moldItem;
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


