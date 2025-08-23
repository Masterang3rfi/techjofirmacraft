package masterang3rfi.tjfc.common.enums;


import net.dries007.tfc.util.Metal;
import net.minecraft.world.item.Item;

import java.util.function.Predicate;

import static net.dries007.tfc.util.Metal.ItemType.properties;

public class TJFCMetal {
    public enum Default {
        ALUMINUM("tfc_ie_addon", true, false, false),
        BISMUTH("tfc", true, false, false),
        BISMUTH_BRONZE("tfc", true, true, true),
        BLACK_BRONZE("tfc", true, true, true),
        BLACK_STEEL("tfc", true, true, true),
        BLUE_STEEL("tfc", true, true, true),
        BRASS("tfc", true, false, false),
        BRONZE("tfc", true, true, true),
        CAST_IRON("tfc", true, false, false),
        CHROMIUM("firmalife", true, false, false),
        CONSTANTAN("tfc_ie_addon", true, false, false),
        COPPER("tfc", true, true, true),
        ELECTRUM("tfc_ie_addon", true, false, false),
        GOLD("tfc", true, false, false),
        HIGH_CARBON_BLACK_STEEL("tfc", false, false, false),
        HIGH_CARBON_BLUE_STEEL("tfc", false, false, false),
        HIGH_CARBON_RED_STEEL("tfc", false, false, false),
        HIGH_CARBON_STEEL("tfc", false, false, false),
        LEAD("tfc_ie_addon", true, false, false),
        NICKEL("tfc", true, false, false),
        PIG_IRON("tfc", false, false, false),
        RED_STEEL("tfc", true, true, true),
        ROSE_GOLD("tfc", true, false, false),
        SILVER("tfc", true, false, false),
        STAINLESS_STEEL("firmalife", true, false, false),
        STEEL("tfc", true, true, true),
        STERLING_SILVER("tfc", true, false, false),
        TIN("tfc", true, false, false),
        UNKNOWN("tfc", false, false, false),
        URANIUM("tfc_ie_addon", true, false, false),
        WEAK_BLUE_STEEL("tfc", false, false, false),
        WEAK_RED_STEEL("tfc", false, false, false),
        WEAK_STEEL("tfc", false, false, false),
        WROUGHT_IRON("tfc", true, true, true),
        ZINC("tfc", true, false, false);

        public boolean hasParts() {
            return parts;
        }

        public boolean hasArmor() {
            return armor;
        }

        public boolean hasUtilities() {
            return utility;
        }

        final String modID;
        final boolean parts;
        final boolean armor;
        final boolean utility;

        Default(String modID, boolean parts, boolean armor, boolean utility) {
            this.modID = modID;
            this.parts = parts;
            this.armor = armor;
            this.utility = utility;
        }
    }
    public enum ItemType {
        SCRAP(TJFCMetal.Type.PART);



        private ItemType(TJFCMetal.Type type) {

        }
    }

    private enum Type {
        DEFAULT((metal) -> true),
        PART(TJFCMetal.Default::hasParts),
        //TOOL(TJFCMetal.Default::hasTools),
        ARMOR(TJFCMetal.Default::hasArmor),
        UTILITY(TJFCMetal.Default::hasUtilities);

        private final Predicate<TJFCMetal.Default> predicate;

        Type(Predicate<TJFCMetal.Default> predicate) {
            this.predicate = predicate;
        }

        boolean hasType(TJFCMetal.Default metal) {
            return this.predicate.test(metal);
        }
    }
}
