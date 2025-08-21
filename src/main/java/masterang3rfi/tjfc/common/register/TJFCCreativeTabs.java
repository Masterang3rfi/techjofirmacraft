package masterang3rfi.tjfc.common.register;

import masterang3rfi.tjfc.common.enums.Mold;
import net.minecraft.core.registries.Registries;
import net.minecraft.network.chat.Component;
import net.minecraft.world.item.*;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.RegistryObject;

import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;


public class TJFCCreativeTabs {
    public static final DeferredRegister<CreativeModeTab> CREATIVE_MODE_TABS = DeferredRegister.create(Registries.CREATIVE_MODE_TAB, MODID);

    public static final RegistryObject<CreativeModeTab> TJFC_TAB = CREATIVE_MODE_TABS.register("techjofirmacraft", () -> CreativeModeTab.builder()
            .withTabsBefore(CreativeModeTabs.COMBAT)
            .icon(() -> new ItemStack(TJFCItems.MOLDS.get(Mold.BUCKET).get()))
            .title(Component.translatable("creativetab.tjfc.molds"))
            .displayItems((parameters, output) -> {
                for (RegistryObject<Item> item : TJFCItems.ITEMS.getEntries()) {
                output.accept(item.get());
                }
            }).build());
}
