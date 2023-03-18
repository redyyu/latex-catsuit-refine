require "Items/ProceduralDistributions"

MOD_NAME = "LatexCatsuitRefine";

local ITEMS_WEIGHT = {
    [".LatexCatsuitMag"]=0.1,
    [".LatexCatsuitFishnet"]=1,
    [".LatexCatsuitTightsBlack"]=1,
    [".LatexCatsuitNude"]=1,
    [".LatexCatsuitBlack"]=1,
    [".LatexCatsuitRed"]=1,
    [".LatexHoodNude"]=1,
    [".LatexHoodBlack"]=1,
    [".LatexHoodRed"]=1,
    [".LatexLeotardNude"]=1,
    [".LatexLeotardBlack"]=1,
    [".LatexLeotardRed"]=1,
    [".LatexLeotardHNude"]=1,
    [".LatexLeotardHBlack"]=1,
    [".LatexLeotardHRed"]=1,
    [".LatexLeotardSNude"]=1,
    [".LatexLeotardSBlack"]=1,
    [".LatexLeotardSRed"]=1,
    [".LatexBoleroNude"]=1,
    [".LatexBoleroBlack"]=1,
    [".LatexBoleroRed"]=1,
    [".LatexPantsNude"]=1,
    [".LatexPantsBlack"]=1,
    [".LatexPantsRed"]=1,
    [".LatexPantsOpenNude"]=1,
    [".LatexPantsOpenBlack"]=1,
    [".LatexPantsOpenRed"]=1,
    [".LatexSkirtBlack"]=1,
    [".LatexSkirtRed"]=1,
    [".LatexStockingsNude"]=1,
    [".LatexStockingsBlack"]=1,
    [".LatexStockingsRed"]=1,
    [".LatexStockingsHNude"]=1,
    [".LatexStockingsHBlack"]=1,
    [".LatexStockingsHRed"]=1,
    [".LatexGlovesNude"]=1,
    [".LatexGlovesBlack"]=1,
    [".LatexGlovesRed"]=1,
    [".HarnessRope"]=1,
    [".HarnessBlack"]=1,
    [".HarnessRed"]=1,
    [".HarnessWRope"]=1,
    [".HarnessWBlack"]=1,
    [".HarnessWRed"]=1,
    [".CuffsCollar"]=1,
}


local function insertTable(table_obj, key, weight)
    if key:find(".", 1, true) == 1 then
        key = MOD_NAME..key
    end
    
    if weight == nil and weight ~= 0 then
        weight = 1
    end

    if table_obj and table_obj.items then
        table.insert(table_obj.items, key);
        table.insert(table_obj.items, weight);
    end
end 

local function insertDistributionList(table_obj, ITEMS_WEIGHT, rate)
    for k, v in pairs(ITEMS_WEIGHT) do
        insertTable(table_obj, k, v*rate);
    end
end


insertDistributionList(ProceduralDistributions.list.BedroomDresser, ITEMS_WEIGHT, 0.1);
insertDistributionList(ProceduralDistributions.list.WardrobeWoman, ITEMS_WEIGHT, 0.1);
insertDistributionList(ProceduralDistributions.list.StripClubDressers, ITEMS_WEIGHT, 15);

insertTable(ProceduralDistributions.list["CrateBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["BookstoreMisc"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["CrateMagazines"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["LibraryBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["MagazineRackMixed"], ".LatexCatsuitMag", 0.01);
