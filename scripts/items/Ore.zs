#priority 100

public enum Ore {

    CHROMITE("firmalife","chromite"),
    NATIVE_COPPER("tfc","native_copper"),
    NATIVE_GOLD("tfc","native_gold"),
    HEMATITE("tfc","hematite"),
    NATIVE_SILVER("tfc","native_silver"),
    CASSITERITE("tfc","cassiterite"),
    BISMUTHINITE("tfc","bismuthinite"),
    GARNIERITE("tfc","garnierite"),
    MALACHITE("tfc","malachite"),
    MAGNETITE("tfc","magnetite"),
    LIMONITE("tfc","limonite"),
    SPHALERITE("tfc","sphalerite"),
    TETRAHEDRITE("tfc","tetrahedrite"),
    BAUXITE("tfc_ie_addon","bauxite"),
    GALENA("tfc_ie_addon","galena"),
    URANINITE("tfc_ie_addon","uraninite");

    val modID as string;
    val oreName as string;

    this(modID as string, oreName as string) {
        this.modID = modID;
        this.oreName = oreName;
    }

    public modID() as string {
        return modID;
    }

    public getName() as string {
        return oreName;
    }
}