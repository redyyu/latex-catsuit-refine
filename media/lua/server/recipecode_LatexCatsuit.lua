
function Recipe.OnCreate.RestoreLatexBagItems(item, resultItem)

	local transferred_Items = {}; 
	local dItem;
	
	for i = 0, (item:size()-1) do 
		dItem = item:get(i); 
		if instanceof(dItem, "InventoryContainer") then 
			dInv = dItem:getInventory(); 
			newInv = resultItem:getInventory(); 
			dInvItems = dInv:getItems(); 
			if dInvItems:size() >= 1 then 
				for i2 = 0, (dInvItems:size()-1) do
					invItem = dInvItems:get(i2);
					table.insert(transferred_Items, invItem) 
				end
			end
		end
	end
	
	for _, v in ipairs(transferred_Items) do
		dInv:Remove(v); 
		newInv:AddItem(v); 
	end
end

function Recipe.OnTest.IsEquippedLatexBag(item)
    if instanceof(item, "InventoryContainer") then
        return not item:isEquipped();
    end
    return true
end


-- Try to change suit texture dynamic.
-- doesn't end well....

-- local textureMap = {
--     LatexCatsuit = {
--         ['red'] = 'Rubber_Red.png',
--         ['black'] = 'Rubber_Black.png',
--     }
-- }

-- local function getFileName(url)
--     return url:match("^.+[/\\](.+)$");
-- end
  
-- local function getFileExtension(url)
--     return url:match("^.+(%..+)$");
-- end



-- function Recipe.OnCreate.PrintCatsuit(items, result, player)
--     local texture = nil;
--     local dItem = nil;
--     local color_key = 'black'
--     for i = 0, (items:size()-1) do 
-- 		dItem = items:get(i); 
--         if dItem:getType() == 'PaintBlack' then 
--             color_key = 'black';
--         elseif dItem:getType() == 'PaintRed' then
--             color_key = 'red';
--         end
--     end
    
--     print('------------------------------------------')
--     texture = result:getTexture();
--     local texture_name = texture:getName();
--     local texture_file_name = getFileName(texture_name);
--     print(texture_name);
--     print(texture_file_name);
--     local new_texture_name = string.gsub(texture_name, texture_file_name, textureMap.LatexCatsuit[color_key])
--     texture:setName(new_texture_name);

--     if texture then
--         result:setTexture(texture);
--     end
-- end

