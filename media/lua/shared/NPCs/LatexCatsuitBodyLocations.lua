local function setHide(group, cover_locations, hidden_location)
    for i=0, cover_locations:size() - 1 do
        group:setHideModel(cover_locations:get(i), hidden_location);
    end
end 

-- Locations must be declared in render-order.
-- Location IDs must match BodyLocation= and CanBeEquipped= values in items.txt.
local group = BodyLocations.getGroup("Human")



group:getOrCreateLocation("Harness");


local outer_locations = {
    "Boilersuit",
    "BathRobe",
    "Jacket",
    "JacketSuit",
    "Jacket_Bulky",
    "Jacket_Down",
    "JacketHat",
    "JacketHat_Bulky",
    "FullSuitHead",
    "TorsoExtraVest",
}

setHide(group, "Harness");


-- group:setMultiItem("UnderwearExtra2", true) -- might cause duplicetd items on same location.
