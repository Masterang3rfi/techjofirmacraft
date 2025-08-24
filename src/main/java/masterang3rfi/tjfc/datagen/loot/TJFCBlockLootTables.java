package masterang3rfi.tjfc.datagen.loot;

import masterang3rfi.tjfc.TechjoFirmaCraft;
import net.minecraft.data.PackOutput;
import net.minecraftforge.client.model.generators.BlockStateProvider;
import net.minecraftforge.common.data.ExistingFileHelper;

import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;

public class TJFCBlockLootTables extends BlockStateProvider {
    public TJFCBlockLootTables(PackOutput output, ExistingFileHelper exFileHelper) {
        super(output, TechjoFirmaCraft.MODID, exFileHelper);
    }

    @Override
    protected void registerStatesAndModels() {

    }
}
