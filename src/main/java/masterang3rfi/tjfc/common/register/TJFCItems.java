package masterang3rfi.tjfc.common.register;

import masterang3rfi.tjfc.common.enums.Mold;
import masterang3rfi.tjfc.common.items.TJFCBasicItem;
import net.minecraft.world.item.Item;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import java.util.EnumMap;


import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;

public final class TJFCItems {

    public static DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, MODID);
    public static EnumMap<Mold,RegistryObject<Item>> MOLDS;

    static {
        MOLDS = registerEnum(Mold.class,MOLDS);
    }





    private static RegistryObject<Item> registerBasicWithStackSize(String name, int stackSize) {
        return ITEMS.register(name, () -> new TJFCBasicItem(new Item.Properties().stacksTo(stackSize)));
    }
    private static RegistryObject<Item> registerBasic(String name) {
        return ITEMS.register(name, () -> new TJFCBasicItem(new Item.Properties()));
    }

    private static <E extends Enum<E>> EnumMap<E,RegistryObject<Item>> registerEnum(Class<E> enumClass,EnumMap<E,RegistryObject<Item>> enumMap) {
        enumMap = registerEnum(enumClass,enumMap,"");
        return enumMap;
    }
    private static <E extends Enum<E>> EnumMap<E,RegistryObject<Item>> registerEnum(Class<E> enumClass,EnumMap<E,RegistryObject<Item>> enumMap,String prefixDirectory) {
        E[] array = enumClass.getEnumConstants();

        if (enumMap == null) {
            enumMap = new EnumMap<>(enumClass);
        }

        for (E thing : array) {
            String rootName = enumClass.getSimpleName().toLowerCase();
            if (rootName.endsWith("s")) {
                rootName = rootName.substring(0,rootName.length() - 1);
            }

            enumMap.put(thing,registerBasicWithStackSize(prefixDirectory + rootName + "/" + thing.toString().toLowerCase(),1));
        }
        return enumMap;
    }

}
