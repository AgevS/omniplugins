--[[
 wait a second how did u find this?
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Super Bleach";
ITEM.cost = 20000;
ITEM.model = "models/props_junk/plasticcontainer02.mdl";
ITEM.plural = "Super Bleaches";
ITEM.weight = 2;
ITEM.access = "v";
ITEM.useText = "Drink";
ITEM.business = true;
ITEM.category = "Consumables";
ITEM.description = "A bottle of super bleach, a weapon to destroy mankind itself.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth(99999999, player, player);
	Clockwork.player:Notify(ply, "Alert, the Super Bleach has been used. Be weary and cautious of the user. -... --- --- -- .-.-.-")
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();