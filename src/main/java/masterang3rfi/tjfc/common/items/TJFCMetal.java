package masterang3rfi.tjfc.common.items;

import java.util.function.Predicate;

public class TJFCMetal {
    public enum Default {
        ALUMINUM("tfc_ie_addon", true, false, false, true, false),
        BISMUTH("tfc", true, false, false, true, false),
        BISMUTH_BRONZE("tfc", true, true, true, false, false),
        BLACK_BRONZE("tfc", true, true, true, false, false),
        BLACK_STEEL("tfc", true, true, true, false, false),
        BLUE_STEEL("tfc", true, true, true, false, false),
        BRASS("tfc", true, false, false, false, false),
        BRONZE("tfc", true, true, true, false, false),
        CAST_IRON("tfc", true, false, false, true, false),
        CHROMIUM("firmalife", true, false, false, true, false),
        CONSTANTAN("tfc_ie_addon", true, false, false, false, false),
        COPPER("tfc", true, true, true, true, false),
        ELECTRUM("tfc_ie_addon", true, false, false, false, false),
        GOLD("tfc", true, false, false, true, false),
        HIGH_CARBON_BLACK_STEEL("tfc", false, false, false, false, false),
        HIGH_CARBON_BLUE_STEEL("tfc", false, false, false, false, false),
        HIGH_CARBON_RED_STEEL("tfc", false, false, false, false, false),
        HIGH_CARBON_STEEL("tfc", false, false, false, false, false),
        LEAD("tfc_ie_addon", true, false, false, true, false),
        NICKEL("tfc", true, false, false, true, false),
        PIG_IRON("tfc", false, false, false, false, false),
        RED_STEEL("tfc", true, true, true, false, false),
        ROSE_GOLD("tfc", true, false, false, false, false),
        SILVER("tfc", true, false, false, true, false),
        STAINLESS_STEEL("firmalife", true, false, false, false, false),
        STEEL("tfc", true, true, true, false, true),
        STERLING_SILVER("tfc", true, false, false, false, false),
        TIN("tfc", true, false, false, true, false),
        UNKNOWN("tfc", false, false, false, false, false),
        URANIUM("tfc_ie_addon", true, false, false, true, false),
        WEAK_BLUE_STEEL("tfc", false, false, false, false, false),
        WEAK_RED_STEEL("tfc", false, false, false, false, false),
        WEAK_STEEL("tfc", false, false, false, false, false),
        WROUGHT_IRON("tfc", true, true, true, false, true),
        ZINC("tfc", true, false, false, true, false);

        public boolean hasParts() {
            return parts;
        }

        public boolean hasArmor() {
            return armor;
        }

        public boolean hasUtilities() {
            return utility;
        }

        public boolean hasOre() {
            return ore;
        }

        public boolean hasHardware() {
            return hardware;
        }
        public String getModID() {
            return modID;
        }

        final String modID;
        final boolean parts;
        final boolean armor;
        final boolean utility;
        final boolean ore;
        final boolean hardware;

        Default(String modID, boolean parts, boolean armor, boolean utility, boolean ore, boolean hardware) {
            this.modID = modID;
            this.parts = parts;
            this.armor = armor;
            this.utility = utility;
            this.ore = ore;
            this.hardware = hardware;
        }
    }

    public enum ItemType {
        SCRAP(Type.ORE),
        BOLT(Type.HARDWARE),
        SCREW(Type.HARDWARE),
        STRIP(Type.HARDWARE);




        private final TJFCMetal.Type type;

        private ItemType(TJFCMetal.Type type) {
            this.type = type;
        }

        public boolean has(TJFCMetal.Default metal) {
            return this.type.hasType(metal);
        }
    }

    private enum Type {
        DEFAULT((metal) -> true),
        PART(TJFCMetal.Default::hasParts),
        HARDWARE(TJFCMetal.Default::hasHardware),
        //TOOL(TJFCMetal.Default::hasTools),
        ARMOR(TJFCMetal.Default::hasArmor),
        UTILITY(TJFCMetal.Default::hasUtilities),
        ORE(TJFCMetal.Default::hasOre);


        private final Predicate<TJFCMetal.Default> predicate;

        Type(Predicate<TJFCMetal.Default> predicate) {
            this.predicate = predicate;
        }

        boolean hasType(TJFCMetal.Default metal) {
            return this.predicate.test(metal);
        }
    }
}
