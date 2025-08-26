package masterang3rfi.tjfc.datagen;

import masterang3rfi.tjfc.TechjoFirmaCraft;

import masterang3rfi.tjfc.common.register.TJFCItems;
import net.minecraft.data.PackOutput;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.item.Item;
import net.minecraftforge.client.model.generators.ItemModelBuilder;
import net.minecraftforge.client.model.generators.ItemModelProvider;
import net.minecraftforge.client.model.generators.ModelFile;
import net.minecraftforge.common.data.ExistingFileHelper;
import net.minecraftforge.registries.RegistryObject;

import static net.minecraft.resources.ResourceLocation.fromNamespaceAndPath;


public class TJFCItemModelProvider extends ItemModelProvider {
    public TJFCItemModelProvider(PackOutput output, ExistingFileHelper existingFileHelper) {
        super(output, TechjoFirmaCraft.MODID, existingFileHelper);
    }

    @Override
    protected void registerModels() {
        for (RegistryObject<Item> item : TJFCItems.ITEMS.getEntries()) {
            assert item.getId() != null;
            basicItem(item.getId());
        }
    }

    public ItemModelBuilder TJFCItemModelBuilder(ResourceLocation item)
    {
        return getBuilder(item.toString())
                .parent(new ModelFile.UncheckedModelFile("item/generated"))
                .texture("layer0",  fromNamespaceAndPath(item.getNamespace(), "item/" + item.getPath()));
    }

}
