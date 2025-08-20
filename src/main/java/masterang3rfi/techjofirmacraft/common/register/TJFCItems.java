package masterang3rfi.techjofirmacraft.common.register;

import masterang3rfi.techjofirmacraft.common.items.Molds;
import net.minecraft.world.item.Item;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

import static masterang3rfi.techjofirmacraft.techjofirmacraft.MODID;

public class TJFCItems {

    public static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, MODID);

    public static final RegistryObject<Item> MOLD_BUCKET = ITEMS.register("mold_bucket", () -> new Molds(new Item.Properties()));
    public static final RegistryObject<Item> MOLD_DOUBLE_INGOT = ITEMS.register("mold_double_ingot", () -> new Molds(new Item.Properties()));
    public static final RegistryObject<Item> MOLD_BLANK = ITEMS.register("mold_blank", () -> new Molds(new Item.Properties()));

}
