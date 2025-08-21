package masterang3rfi.tjfc.common.register;

import masterang3rfi.tjfc.common.items.TJFCBasicItem;
import net.minecraft.world.item.Item;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;

public class TJFCItems {


    public static final DeferredRegister<Item> MOLDS = DeferredRegister.create(ForgeRegistries.ITEMS, MODID);


    //All molds to register
    public static final RegistryObject<Item> MOLD_AXE = registerBasicWithStackSize(MOLDS, "mold_axe", 1);
    public static final RegistryObject<Item> MOLD_BLANK = registerBasicWithStackSize(MOLDS, "mold_blank", 1);
    public static final RegistryObject<Item> MOLD_BUCKET = registerBasicWithStackSize(MOLDS, "mold_bucket", 1);
    public static final RegistryObject<Item> MOLD_CHISEL = registerBasicWithStackSize(MOLDS, "mold_chisel", 1);
    public static final RegistryObject<Item> MOLD_DOUBLE_INGOT = registerBasicWithStackSize(MOLDS, "mold_double_ingot", 1);
    public static final RegistryObject<Item> MOLD_HAMMER = registerBasicWithStackSize(MOLDS, "mold_hammer", 1);
    public static final RegistryObject<Item> MOLD_HOE = registerBasicWithStackSize(MOLDS, "mold_hoe", 1);
    public static final RegistryObject<Item> MOLD_JAVELIN = registerBasicWithStackSize(MOLDS, "mold_javelin", 1);
    public static final RegistryObject<Item> MOLD_KNIFE = registerBasicWithStackSize(MOLDS, "mold_knife", 1);
    public static final RegistryObject<Item> MOLD_MACE = registerBasicWithStackSize(MOLDS, "mold_mace", 1);
    public static final RegistryObject<Item> MOLD_PICKAXE = registerBasicWithStackSize(MOLDS, "mold_pickaxe", 1);
    public static final RegistryObject<Item> MOLD_PROSPECTOR_PICK = registerBasicWithStackSize(MOLDS, "mold_prospector_pick", 1);
    public static final RegistryObject<Item> MOLD_SAW = registerBasicWithStackSize(MOLDS, "mold_saw", 1);
    public static final RegistryObject<Item> MOLD_SCYTHE = registerBasicWithStackSize(MOLDS, "mold_scythe", 1);
    public static final RegistryObject<Item> MOLD_SHOVEL = registerBasicWithStackSize(MOLDS, "mold_shovel", 1);
    public static final RegistryObject<Item> MOLD_SWORD = registerBasicWithStackSize(MOLDS, "mold_sword", 1);




    private static RegistryObject<Item> registerBasicWithStackSize(DeferredRegister<Item> registerType, String name, int stackSize) {
        return registerType.register(name, () -> new TJFCBasicItem(new Item.Properties().stacksTo(stackSize)));
    }
    private static RegistryObject<Item> registerBasic(DeferredRegister<Item> registerType, String name) {
        return registerType.register(name, () -> new TJFCBasicItem(new Item.Properties()));
    }


}
