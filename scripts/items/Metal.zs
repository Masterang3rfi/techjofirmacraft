#priority 100

public enum Metal {
    ALUMINUM("immersiveengineering","aluminum", true, false, true),
    BISMUTH("tfc","bismuth", true, false, true),
    BISMUTH_BRONZE("tfc","bismuth_bronze", true, true, false),
    BLACK_BRONZE("tfc","black_bronze", true, true, false),
    BLACK_STEEL("tfc","black_steel", true, true, false),
    BLUE_STEEL("tfc","blue_steel", true, true, false),
    BRASS("tfc","brass", true, false, false),
    BRONZE("tfc","bronze", true, true, false),
    CAST_IRON("tfc","cast_iron", true, false, true),
    CHROMIUM("firmalife","chromium", true, false, true),
    CONSTANTAN("immersiveengineering", "constantan", true, false, false),
    COPPER("tfc","copper", true, true, true),
    ELECTRUM("immersiveengineering", "electrum", true, false ,false),
    GOLD("tfc","gold", true, false, true),
    LEAD("immersiveengineering", "lead", true, false, true),
    NICKEL("tfc","nickel", true, false, true),
    PIG_IRON("tfc","pig_iron", false, false, false),
    RED_STEEL("tfc","red_steel", true, true, false),
    ROSE_GOLD("tfc","rose_gold", true, false, false),
    SILVER("tfc","silver", true, false, true),
    STAINLESS_STEEL("firmalife","stainless_steel", true, false, false),
    STEEL("tfc","steel", true, true, false),
    STERLING_SILVER("tfc","sterling_silver", true, false, false),
    TIN("tfc","tin", true, false, true),
    URANIUM("immersiveengineering", "uranium", true , false, true),
    WROUGHT_IRON("tfc", "wrought_iron", true, true, false),
    ZINC("tfc", "zinc", true, false, true);

    val modID as string;
    val metalName as string;
    val parts as bool;
    val tools as bool;
    val ore as bool;

    this(modID as string, metalName as string, parts as bool, tools as bool, ore as bool) {
        this.modID = modID;
        this.metalName = metalName;
        this.parts = parts;
        this.tools = tools;
        this.ore = ore;
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

    public hasOre() as bool {
        return ore;
    }
}