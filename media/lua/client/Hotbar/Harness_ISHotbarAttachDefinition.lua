require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end

local HarnessRig = {
	type = "HarnessRig",
	name = "Harness Rig",
	animset = "belt left",
	attachments = {
		ChestLight = "Harness Rig Light",
	},
}
table.insert(ISHotbarAttachDefinition, HarnessRig);
