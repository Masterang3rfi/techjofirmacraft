#priority 100

public enum Gem {

    AMETHYST("tfc","amethyst"),
    DIAMOND("tfc","diamond"),
    EMERALD("tfc","emerald"),
    LAPIS_LAZULI("tfc","lapis_lazuli"),
    OPAL("tfc","opal"),
    PYRITE("tfc","pyrite"),
    RUBY("tfc","ruby"),
    SAPPHIRE("tfc","sapphire"),
    TOPAZ("tfc","topaz");

    val modID as string;
    val itemName as string;

    this(modID as string, itemName as string) {
        this.modID = modID;
        this.itemName = itemName;
    }

    public modID() as string {
        return modID;
    }

    public getName() as string {
        return itemName;
    }
}