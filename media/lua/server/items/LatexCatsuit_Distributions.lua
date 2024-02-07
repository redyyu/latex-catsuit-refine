require "Items/ProceduralDistributions"

MOD_NAME = "LatexCatsuitRefine";

local ITEMS_WEIGHT = {
    [".LatexCatsuitMag"]=0.1,
    [".LatexCatsuitFishnet"]=0.2,
    [".LatexCatsuitTightsBlack"]=0.2,
    [".LatexCatsuitTightsBlackSemiTrans"]=0.2,
    [".LatexCatsuitTightsBlackTrans"]=0.2,
    [".LatexCatsuitNude"]=0.2,
    [".LatexCatsuitBlack"]=0.2,
    [".LatexCatsuitRed"]=0.2,
    [".LatexHoodNude"]=0.2,
    [".LatexHoodBlack"]=0.2,
    [".LatexHoodRed"]=0.2,
    [".LatexLeotardNude"]=0.2,
    [".LatexLeotardBlack"]=0.2,
    [".LatexLeotardRed"]=0.2,
    [".LatexLeotardHNude"]=0.2,
    [".LatexLeotardHBlack"]=0.2,
    [".LatexLeotardHRed"]=0.2,
    [".LatexLeotardSNude"]=0.2,
    [".LatexLeotardSBlack"]=0.2,
    [".LatexLeotardSRed"]=0.2,
    [".LatexBoleroNude"]=0.2,
    [".LatexBoleroBlack"]=0.2,
    [".LatexBoleroRed"]=0.2,
    [".LatexPantsNude"]=0.2,
    [".LatexPantsBlack"]=0.2,
    [".LatexPantsRed"]=0.2,
    [".LatexPantsOpenNude"]=0.2,
    [".LatexPantsOpenBlack"]=0.2,
    [".LatexPantsOpenRed"]=0.2,
    [".LatexSkirtBlack"]=0.2,
    [".LatexSkirtRed"]=0.2,
    [".LatexStockingsNude"]=0.2,
    [".LatexStockingsBlack"]=0.2,
    [".LatexStockingsRed"]=0.2,
    [".LatexStockingsHNude"]=0.2,
    [".LatexStockingsHBlack"]=0.2,
    [".LatexStockingsHRed"]=0.2,
    [".LatexGlovesNude"]=0.2,
    [".LatexGlovesBlack"]=0.2,
    [".LatexGlovesRed"]=0.2,
    [".HarnessRope"]=0.2,
    [".HarnessBlack"]=0.2,
    [".HarnessRed"]=0.2,
    [".HarnessWRope"]=0.2,
    [".HarnessWBlack"]=0.2,
    [".HarnessWRed"]=0.2,
    [".CuffsCollar"]=0.2,
    [".Bag_LatexBag"]=0.2,
    [".Bag_LatexBagRed"]=0.2,
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
