require "Items/ProceduralDistributions"
require "Items/SuburbsDistributions"

MOD_NAME = "LatexCatsuitRefine";

local SUB_BLACK_ITEMS = {
    [".LatexCatsuitMag"]=1,
    [".LatexCatsuitFishnet"]=15,
    [".LatexCatsuitTightsBlack"]=15,
    [".LatexCatsuitTightsBlackSemiTrans"]=15,
    [".LatexCatsuitTightsBlackTrans"]=15,
    [".LatexCatsuitNude"]=15,
    [".LatexCatsuitBlack"]=30,
    [".LatexHoodNude"]=5,
    [".LatexHoodBlack"]=10,
    [".LatexLeotardNude"]=5,
    [".LatexLeotardBlack"]=10,
    [".LatexLeotardHNude"]=5,
    [".LatexLeotardHBlack"]=10,
    [".LatexLeotardSNude"]=5,
    [".LatexLeotardSBlack"]=10,
    [".LatexBoleroNude"]=5,
    [".LatexBoleroBlack"]=10,
    [".LatexPantsNude"]=5,
    [".LatexPantsBlack"]=10,
    [".LatexPantsOpenNude"]=5,
    [".LatexPantsOpenBlack"]=10,
    [".LatexSkirtBlack"]=15,
    [".LatexStockingsNude"]=5,
    [".LatexStockingsBlack"]=10,
    [".LatexStockingsHNude"]=5,
    [".LatexStockingsHBlack"]=10,
    [".LatexGlovesNude"]=5,
    [".LatexGlovesBlack"]=10,
    [".HarnessRope"]=5,
    [".HarnessBlack"]=5,
    [".HarnessWRope"]=5,
    [".HarnessWBlack"]=5,
    [".CuffsCollar"]=10,
}

local SUB_RED_ITEMS = {
    [".LatexCatsuitMag"]=1,
    [".LatexCatsuitFishnet"]=15,
    [".LatexCatsuitTightsBlackSemiTrans"]=15,
    [".LatexCatsuitTightsBlackTrans"]=15,
    [".LatexCatsuitNude"]=15,
    [".LatexCatsuitRed"]=30,
    [".LatexHoodNude"]=5,
    [".LatexHoodRed"]=10,
    [".LatexLeotardNude"]=5,
    [".LatexLeotardRed"]=10,
    [".LatexLeotardHNude"]=5,
    [".LatexLeotardHRed"]=10,
    [".LatexLeotardSNude"]=5,
    [".LatexLeotardSRed"]=10,
    [".LatexBoleroNude"]=5,
    [".LatexBoleroRed"]=10,
    [".LatexPantsNude"]=5,
    [".LatexPantsRed"]=10,
    [".LatexPantsOpenNude"]=5,
    [".LatexPantsOpenRed"]=10,
    [".LatexSkirtRed"]=15,
    [".LatexStockingsNude"]=5,
    [".LatexStockingsRed"]=10,
    [".LatexStockingsHNude"]=5,
    [".LatexStockingsHRed"]=10,
    [".LatexGlovesNude"]=5,
    [".LatexGlovesRed"]=10,
    [".HarnessRope"]=5,
    [".HarnessRed"]=5,
    [".HarnessWRope"]=5,
    [".HarnessWRed"]=5,
    [".CuffsCollar"]=10,
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


insertTable(ProceduralDistributions.list["CrateBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["BookstoreMisc"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["CrateMagazines"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["LibraryBooks"], ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list["MagazineRackMixed"], ".LatexCatsuitMag", 0.01);

insertTable(ProceduralDistributions.list.BedroomDresser, ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list.WardrobeWoman, ".LatexCatsuitMag", 0.01);
insertTable(ProceduralDistributions.list.StripClubDressers, ".LatexCatsuitMag", 0.01);


local function insertSuburbsItems(key, items, weight)
    if weight == nil and weight ~= 0 then
        weight = 1
    end

    SuburbsDistributions[key] = {
        rolls = 4,
        items = {},
        junk = {
            rolls = 1,
            items = {
                
            }
        },
        fillRand = 0,
    }

    for k, v in pairs(items) do
        if k:find(".", 1, true) == 1 then
            k = MOD_NAME..k
        end
        table.insert(SuburbsDistributions[key].items, k);
	    table.insert(SuburbsDistributions[key].items, v * weight);
    end
    
end

-- !!! DO NOT add package name before items when injuect SuburbsDistributions table.
insertSuburbsItems('Bag_LatexBagBlack', SUB_BLACK_ITEMS, 1)
insertSuburbsItems('Bag_LatexBagRed', SUB_RED_ITEMS, 1)


insertTable(ProceduralDistributions.list.BedroomDresser, ".Bag_LatexBagBlack", 0.025);
insertTable(ProceduralDistributions.list.BedroomDresser, ".Bag_LatexBagRed", 0.025);

insertTable(ProceduralDistributions.list.WardrobeWoman, ".Bag_LatexBagBlack", 0.025);
insertTable(ProceduralDistributions.list.WardrobeWoman, ".Bag_LatexBagRed", 0.025);

insertTable(ProceduralDistributions.list.StripClubDressers, ".Bag_LatexBagBlack", 0.5);
insertTable(ProceduralDistributions.list.StripClubDressers, ".Bag_LatexBagRed", 0.5);

