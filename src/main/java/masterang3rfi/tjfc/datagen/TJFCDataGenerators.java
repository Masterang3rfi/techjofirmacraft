package masterang3rfi.tjfc.datagen;

import com.google.common.eventbus.Subscribe;
import masterang3rfi.tjfc.TechjoFirmaCraft;
import net.minecraft.core.HolderLookup;
import net.minecraft.data.DataGenerator;
import net.minecraft.data.PackOutput;
import net.minecraftforge.common.data.ExistingFileHelper;
import net.minecraftforge.data.event.GatherDataEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;

import java.util.concurrent.CompletableFuture;

@Mod.EventBusSubscriber(modid = TechjoFirmaCraft.MODID, bus = Mod.EventBusSubscriber.Bus.MOD)
public class TJFCDataGenerators {
    @SubscribeEvent
    public static void gatherData(GatherDataEvent event) {
        DataGenerator generator = event.getGenerator();
        PackOutput packOutput = generator.getPackOutput();
        ExistingFileHelper existingFileHelper = event.getExistingFileHelper();
        CompletableFuture<HolderLookup.Provider> lookupProvider = event.getLookupProvider();

        //generator.addProvider(event.includeServer(), new TJFCRecipeProvider(packOutput));
        //generator.addProvider(event.includeServer(), TJFCLootTableProvider.);

        //generator.addProvider(event.includeClient(), new TJFCBlockStateProvider(packOutput,existingFileHelper));
        //generator.addProvider(event.includeClient(), new TJFCItemModelProvider(packOutput,existingFileHelper));

        //TJFCBlockTagProvider blockTagProvider = generator.addProvider(event.includeServer(), new TJFCBlockTagProvider(packOutput, lookupProvider, existingFileHelper));
        //generator.addProvider(event.includeServer(), new TJFCItemTagProvider(packOutput,lookupProvider,blockTagProvider.contentsGetter(),existingFileHelper);

    }
}
