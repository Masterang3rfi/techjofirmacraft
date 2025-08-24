package masterang3rfi.tjfc.datagen;

import masterang3rfi.tjfc.TechjoFirmaCraft;
import net.minecraft.data.PackOutput;
import net.minecraftforge.client.model.generators.BlockStateProvider;
import net.minecraftforge.common.data.ExistingFileHelper;

public class TJFCBlockStateProvider extends BlockStateProvider {
    public TJFCBlockStateProvider(PackOutput output, ExistingFileHelper exFileHelper) {
        super(output, TechjoFirmaCraft.MODID, exFileHelper);
    }

    @Override
    protected void registerStatesAndModels() {

    }
}
