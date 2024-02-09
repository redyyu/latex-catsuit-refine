require "Items/ProceduralDistributions"

MOD_NAME = "LatexCatsuitRefine";

local ITEMS_WEIGHT = {
    [".LatexCatsuitMag"]=0.05,
    [".LatexCatsuitFishnet"]=0.1,
    [".LatexCatsuitTightsBlack"]=0.1,
    [".LatexCatsuitTightsBlackSemiTrans"]=0.1,
    [".LatexCatsuitTightsBlackTrans"]=0.1,
    [".LatexCatsuitNude"]=0.1,
    [".LatexCatsuitBlack"]=0.1,
    [".LatexCatsuitRed"]=0.1,
    [".LatexHoodNude"]=0.1,
    [".LatexHoodBlack"]=0.1,
    [".LatexHoodRed"]=0.1,
    [".LatexLeotardNude"]=0.1,
    [".LatexLeotardBlack"]=0.1,
    [".LatexLeotardRed"]=0.1,
    [".LatexLeotardHNude"]=0.1,
    [".LatexLeotardHBlack"]=0.1,
    [".LatexLeotardHRed"]=0.1,
    [".LatexLeotardSNude"]=0.1,
    [".LatexLeotardSBlack"]=0.1,
    [".LatexLeotardSRed"]=0.1,
    [".LatexBoleroNude"]=0.1,
    [".LatexBoleroBlack"]=0.1,
    [".LatexBoleroRed"]=0.1,
    [".LatexPantsNude"]=0.1,
    [".LatexPantsBlack"]=0.1,
    [".LatexPantsRed"]=0.1,
    [".LatexPantsOpenNude"]=0.1,
    [".LatexPantsOpenBlack"]=0.1,
    [".LatexPantsOpenRed"]=0.1,
    [".LatexSkirtBlack"]=0.1,
    [".LatexSkirtRed"]=0.1,
    [".LatexStockingsNude"]=0.1,
    [".LatexStockingsBlack"]=0.1,
    [".LatexStockingsRed"]=0.1,
    [".LatexStockingsHNude"]=0.1,
    [".LatexStockingsHBlack"]=0.1,
    [".LatexStockingsHRed"]=0.1,
    [".LatexGlovesNude"]=0.1,
    [".LatexGlovesBlack"]=0.1,
    [".LatexGlovesRed"]=0.1,
    [".HarnessRope"]=0.1,
    [".HarnessBlack"]=0.1,
    [".HarnessRed"]=0.1,
    [".HarnessWRope"]=0.1,
    [".HarnessWBlack"]=0.1,
    [".HarnessWRed"]=0.1,
    [".CuffsCollar"]=0.1,
    [".Bag_LatexBag"]=0.1,
    [".Bag_LatexBagRed"]=0.1,
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


insertDistributionList(ProceduralDistributions.list.BedroomDresser, ITEMS_WEIGHT, 0.01);
insertDistributionList(ProceduralDistributions.list.WardrobeWoman, ITEMS_WEIGHT, 0.01);
insertDistributionList(ProceduralDistributions.list.StripClubDressers, ITEMS_WEIGHT, 6);

insertTable(ProceduralDistributions.list["CrateBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["BookstoreMisc"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["CrateMagazines"], ".LatexCatsuitMag", 0.01);
-- insertTable(ProceduralDistributions.list["LibraryBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["MagazineRackMixed"], ".LatexCatsuitMag", 0.01);
