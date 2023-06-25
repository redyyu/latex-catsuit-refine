require "Items/ProceduralDistributions"

MOD_NAME = "LatexCatsuitRefine";

local ITEMS_WEIGHT = {
    [".LatexCatsuitMag"]=0.1,
    [".LatexCatsuitFishnet"]=0.6,
    [".LatexCatsuitTightsBlack"]=0.6,
    [".LatexCatsuitTightsBlackSemiTrans"]=0.6,
    [".LatexCatsuitTightsBlackTrans"]=0.6,
    [".LatexCatsuitNude"]=0.6,
    [".LatexCatsuitBlack"]=0.6,
    [".LatexCatsuitRed"]=0.6,
    [".LatexHoodNude"]=0.6,
    [".LatexHoodBlack"]=0.6,
    [".LatexHoodRed"]=0.6,
    [".LatexLeotardNude"]=0.6,
    [".LatexLeotardBlack"]=0.6,
    [".LatexLeotardRed"]=0.6,
    [".LatexLeotardHNude"]=0.6,
    [".LatexLeotardHBlack"]=0.6,
    [".LatexLeotardHRed"]=0.6,
    [".LatexLeotardSNude"]=0.6,
    [".LatexLeotardSBlack"]=0.6,
    [".LatexLeotardSRed"]=0.6,
    [".LatexBoleroNude"]=0.6,
    [".LatexBoleroBlack"]=0.6,
    [".LatexBoleroRed"]=0.6,
    [".LatexPantsNude"]=0.6,
    [".LatexPantsBlack"]=0.6,
    [".LatexPantsRed"]=0.6,
    [".LatexPantsOpenNude"]=0.6,
    [".LatexPantsOpenBlack"]=0.6,
    [".LatexPantsOpenRed"]=0.6,
    [".LatexSkirtBlack"]=0.6,
    [".LatexSkirtRed"]=0.6,
    [".LatexStockingsNude"]=0.6,
    [".LatexStockingsBlack"]=0.6,
    [".LatexStockingsRed"]=0.6,
    [".LatexStockingsHNude"]=0.6,
    [".LatexStockingsHBlack"]=0.6,
    [".LatexStockingsHRed"]=0.6,
    [".LatexGlovesNude"]=0.6,
    [".LatexGlovesBlack"]=0.6,
    [".LatexGlovesRed"]=0.6,
    [".HarnessRope"]=0.6,
    [".HarnessBlack"]=0.6,
    [".HarnessRed"]=0.6,
    [".HarnessWRope"]=0.6,
    [".HarnessWBlack"]=0.6,
    [".HarnessWRed"]=0.6,
    [".CuffsCollar"]=0.6,
    [".Shoes_RedRidingBoots"]=0.6,
    [".Gloves_LeatherGlovesRed"]=0.6,
    [".Bag_LatexBag"]=0.6,
    [".Bag_LatexBagRed"]=0.6,
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
insertTable(ProceduralDistributions.list["LibraryBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["MagazineRackMixed"], ".LatexCatsuitMag", 0.01);
