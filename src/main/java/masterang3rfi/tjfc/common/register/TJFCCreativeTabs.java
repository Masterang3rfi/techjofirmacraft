package masterang3rfi.tjfc.common.register;

import masterang3rfi.tjfc.common.enums.TJFCMetal;
import masterang3rfi.tjfc.common.enums.TJFCMold;
import net.dries007.tfc.common.TFCCreativeTabs;
import net.minecraft.core.registries.Registries;
import net.minecraft.network.chat.Component;
import net.minecraft.world.item.*;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.RegistryObject;

import java.util.EnumMap;

import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;


public class TJFCCreativeTabs {
    public static final DeferredRegister<CreativeModeTab> CREATIVE_MODE_TABS = DeferredRegister.create(Registries.CREATIVE_MODE_TAB, MODID);

    public static final RegistryObject<CreativeModeTab> TJFC_TAB_MOLDS = CREATIVE_MODE_TABS.register("molds", () -> CreativeModeTab.builder()
            .withTabsBefore(TFCCreativeTabs.WOOD.tab().getId())
            .icon(() -> new ItemStack(TJFCItems.MOLDS.get(TJFCMold.BUCKET).get()))
            .title(Component.translatable("creativetab.tjfc.molds"))
            .displayItems((parameters, output) -> {
                for (RegistryObject<Item> item : TJFCItems.MOLDS.values()) {
                output.accept(item.get());
                }
            }).build());

    public static final RegistryObject<CreativeModeTab> TJFC_TAB_SCRAPS = CREATIVE_MODE_TABS.register("scraps", () -> CreativeModeTab.builder()
            .withTabsBefore(TFCCreativeTabs.WOOD.tab().getId())
            .icon(() -> new ItemStack(TJFCItems.MOLDS.get(TJFCMold.BUCKET).get()))
            .title(Component.translatable("creativetab.tjfc.scraps"))
            .displayItems((parameters, output) -> {
                for (EnumMap<TJFCMetal.ItemType, RegistryObject<Item>> itemMap : TJFCItems.METAL_ITEMS.values()) {
                    RegistryObject<Item> item = itemMap.get(TJFCMetal.ItemType.SCRAP);
                    if (item != null) {
                        output.accept(item.get());
                    }
                }
            }).build());
}
