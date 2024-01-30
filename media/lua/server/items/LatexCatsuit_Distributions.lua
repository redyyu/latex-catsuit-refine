require "Items/ProceduralDistributions"

MOD_NAME = "LatexCatsuitRefine";

local ITEMS_WEIGHT = {
    [".LatexCatsuitMag"]=0.1,
    [".LatexCatsuitFishnet"]=0.4,
    [".LatexCatsuitTightsBlack"]=0.4,
    [".LatexCatsuitTightsBlackSemiTrans"]=0.4,
    [".LatexCatsuitTightsBlackTrans"]=0.4,
    [".LatexCatsuitNude"]=0.4,
    [".LatexCatsuitBlack"]=0.4,
    [".LatexCatsuitRed"]=0.4,
    [".LatexHoodNude"]=0.4,
    [".LatexHoodBlack"]=0.4,
    [".LatexHoodRed"]=0.4,
    [".LatexLeotardNude"]=0.4,
    [".LatexLeotardBlack"]=0.4,
    [".LatexLeotardRed"]=0.4,
    [".LatexLeotardHNude"]=0.4,
    [".LatexLeotardHBlack"]=0.4,
    [".LatexLeotardHRed"]=0.4,
    [".LatexLeotardSNude"]=0.4,
    [".LatexLeotardSBlack"]=0.4,
    [".LatexLeotardSRed"]=0.4,
    [".LatexBoleroNude"]=0.4,
    [".LatexBoleroBlack"]=0.4,
    [".LatexBoleroRed"]=0.4,
    [".LatexPantsNude"]=0.4,
    [".LatexPantsBlack"]=0.4,
    [".LatexPantsRed"]=0.4,
    [".LatexPantsOpenNude"]=0.4,
    [".LatexPantsOpenBlack"]=0.4,
    [".LatexPantsOpenRed"]=0.4,
    [".LatexSkirtBlack"]=0.4,
    [".LatexSkirtRed"]=0.4,
    [".LatexStockingsNude"]=0.4,
    [".LatexStockingsBlack"]=0.4,
    [".LatexStockingsRed"]=0.4,
    [".LatexStockingsHNude"]=0.4,
    [".LatexStockingsHBlack"]=0.4,
    [".LatexStockingsHRed"]=0.4,
    [".LatexGlovesNude"]=0.4,
    [".LatexGlovesBlack"]=0.4,
    [".LatexGlovesRed"]=0.4,
    [".HarnessRope"]=0.4,
    [".HarnessBlack"]=0.4,
    [".HarnessRed"]=0.4,
    [".HarnessWRope"]=0.4,
    [".HarnessWBlack"]=0.4,
    [".HarnessWRed"]=0.4,
    [".CuffsCollar"]=0.4,
    [".Shoes_RedRidingBoots"]=0.4,
    [".Bag_LatexBag"]=0.4,
    [".Bag_LatexBagRed"]=0.4,
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
