package masterang3rfi.tjfc.datagen;

import masterang3rfi.tjfc.TechjoFirmaCraft;

import masterang3rfi.tjfc.common.register.TJFCItems;
import net.minecraft.data.PackOutput;


import net.minecraft.world.item.Item;
import net.minecraftforge.client.model.generators.ItemModelProvider;
import net.minecraftforge.common.data.ExistingFileHelper;
import net.minecraftforge.registries.RegistryObject;

public class TJFCItemModelProvider extends ItemModelProvider {
    public TJFCItemModelProvider(PackOutput output, ExistingFileHelper existingFileHelper) {
        super(output, TechjoFirmaCraft.MODID, existingFileHelper);
    }

    @Override
    protected void registerModels() {
        for (RegistryObject<Item> item : TJFCItems.ITEMS.getEntries()) {
            basicItem(item.getId());
        }
    }
}
