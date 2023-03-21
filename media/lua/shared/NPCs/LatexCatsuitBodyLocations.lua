local function setHideBodyLocation(group, cover_locations, hidden_location)
    for i=1, #cover_locations do
        group:setHideModel(cover_locations[i], hidden_location);
    end
end 

-- Locations must be declared in render-order.
-- Location IDs must match BodyLocation= and CanBeEquipped= values in items.txt.
local group = BodyLocations.getGroup("Human")



group:getOrCreateLocation("Harness");


group:getOrCreateLocation("Harness"):setAttachmentName("harness_rig_light");


-- DONT NEED HIDDEN FROM MODELED OUTER BODY LOCATIONS.

-- local outer_body_locations = {
--     "Boilersuit",
--     "BathRobe",
--     "Jacket",
--     "JacketSuit",
--     "Jacket_Bulky",
--     "Jacket_Down",
--     "JacketHat",
--     "JacketHat_Bulky",
--     "FullSuitHead",
--     "TorsoExtraVest",
-- }

-- setHideBodyLocation(group, outer_body_locations, "Harness");

-- group:setMultiItem("UnderwearExtra2", true) -- might cause duplicetd items on same location.
