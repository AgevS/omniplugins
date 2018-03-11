--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Insurgent Ration";
ITEM.model = "models/foodnhouseholditems/paperbag4.mdl";
ITEM.weight = 2;
ITEM.useText = "Open";
ITEM.description = "A brown paper bag full of tangible goodies.";

-- Called when a player attempts to pick up the item.
function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "You do not have enough inventory space!");
			
			return false;
		end;
	end;
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (Schema:PlayerIsCombine(player)) then
		Clockwork.player:Notify(player, "You cannot open this ration!");
		
		return false;
	elseif (player:GetFaction() == FACTION_ADMIN) then
		Clockwork.player:Notify(player, "You cannot open this ration!");
		
		return false;
	else
		Clockwork.player:GiveCash(player, 100, "ration packet");
		
		player:GiveItem(Clockwork.item:CreateInstance("sandwich"), true);
		player:GiveItem(Clockwork.item:CreateInstance("coke"), true);
		player:GiveItem(Clockwork.item:CreateInstance("vodka"), true);		
		
		Clockwork.plugin:Call("PlayerUseRation", player);
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();