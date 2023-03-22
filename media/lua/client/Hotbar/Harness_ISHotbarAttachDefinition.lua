require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end

local HarnessRig = {
	type = "HarnessRig",
	name = "Harness Rig",
	animset = "holster right",
	attachments = {
		ChestLight = "Harness Rig Light",
		Holster = "Harness Rig Holster",
	},
}
table.insert(ISHotbarAttachDefinition, HarnessRig);


local HarnessLeft = {
	type = "HarnessLeft",
	name = "Harness Left",
	animset = "belt left",
	attachments = {
		Mag = "Harness Mag Left",
	},
}
table.insert(ISHotbarAttachDefinition, HarnessLeft);


local HarnessRight = {
	type = "HarnessRight",
	name = "Harness Right",
	animset = "belt right",
	attachments = {
		Mag = "Harness Mag Right",
	},
}
table.insert(ISHotbarAttachDefinition, HarnessRight);
