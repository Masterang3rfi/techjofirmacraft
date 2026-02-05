#priority 100
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;


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