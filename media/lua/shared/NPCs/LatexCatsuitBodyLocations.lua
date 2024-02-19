-- Locations must be declared in render-order.
-- Location IDs must match BodyLocation= and CanBeEquipped= values in items.txt.
local group = BodyLocations.getGroup("Human")

group:getOrCreateLocation("Harness")

local groupAttached = AttachedLocations.getGroup("Human")
groupAttached:getOrCreateLocation("Harness Rig Light"):setAttachmentName("harness_rig_light")
groupAttached:getOrCreateLocation("Harness Rig Holster"):setAttachmentName("harness_rig_holster")
groupAttached:getOrCreateLocation("Harness Mag Left"):setAttachmentName("harness_mag_left")
groupAttached:getOrCreateLocation("Harness Mag Right"):setAttachmentName("harness_mag_right")


group:getOrCreateLocation("TightMask")  -- for hood mask wearing with FullHat, Masks or Glasses.

-- DONT NEED HIDDEN FROM MODELED OUTER BODY LOCATIONS.

-- local function setHideBodyLocation(group, cover_locations, hidden_location)
--     for i=1, #cover_locations do
--         group:setHideModel(cover_locations[i], hidden_location);
--     end
-- end 

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
