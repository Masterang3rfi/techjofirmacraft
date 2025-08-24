package masterang3rfi.tjfc.common.register;

import masterang3rfi.tjfc.common.enums.TJFCMetal;
import masterang3rfi.tjfc.common.enums.TJFCMold;
import masterang3rfi.tjfc.common.items.TJFCBasicItem;
import net.dries007.tfc.util.Helpers;
import net.minecraft.world.item.Item;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

import java.util.EnumMap;


import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;

public final class TJFCItems {

    public static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, MODID);
    public static final EnumMap<TJFCMold,RegistryObject<Item>> MOLDS;
    public static final EnumMap<TJFCMetal.Default, EnumMap<TJFCMetal.ItemType, RegistryObject<Item>>> METAL_ITEMS;


    static {
        METAL_ITEMS = Helpers.mapOfKeys(TJFCMetal.Default.class, (metal) -> Helpers.mapOfKeys(TJFCMetal.ItemType.class, (itemType -> itemType.has(metal)) ,(itemType -> registerBasic("metal/" + itemType.name().toLowerCase() +"/"+ metal.name().toLowerCase()))));
        MOLDS = Helpers.mapOfKeys(TJFCMold.class,(TJFCMold) -> registerBasicWithStackSize("mold/" + TJFCMold.name().toLowerCase(),1));
    }

    private static RegistryObject<Item> registerBasicWithStackSize(String name, int stackSize) {
        return ITEMS.register(name, () -> new TJFCBasicItem(new Item.Properties().stacksTo(stackSize)));
    }
    private static RegistryObject<Item> registerBasic(String name) {
        return ITEMS.register(name, () -> new TJFCBasicItem(new Item.Properties()));
    }



    //private static <E extends Enum<E>> EnumMap<E,RegistryObject<Item>> registerEnum(Class<E> enumClass, String directory) {
        //return registerEnum(enumClass, directory,64);
   //}
    //private static <E extends Enum<E>> EnumMap<E,RegistryObject<Item>> registerEnum(Class<E> enumClass, String directory, int stackSize) {
        //E[] array = enumClass.getEnumConstants();

        //EnumMap<E, RegistryObject<Item>> enumMap = new EnumMap<>(enumClass);

        //for (E thing : array) {

            //enumMap.put(thing,registerBasicWithStackSize(directory + thing.toString().toLowerCase(),stackSize));

        //}
        //return enumMap;
    //}

}
