--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "MRE";
ITEM.model = "models/warz/consumables/bag_mre.mdl";
ITEM.weight = 4;
ITEM.useText = "Open";
ITEM.description = "A little package filled with bland tasting food.";

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
		Clockwork.player:Notify(player, "You cannot open this MRE!");

		return false;
	elseif (player:GetFaction() == FACTION_ADMIN) then
		Clockwork.player:Notify(player, "You cannot open this MRE!");

		return false;
	else
		Clockwork.player:GiveCash(player, 0, "MRE packet");

		player:GiveItem(Clockwork.item:CreateInstance("beans"), true);
		player:GiveItem(Clockwork.item:CreateInstance("water_bottle"), true);
		player:GiveItem(Clockwork.item:CreateInstance("chicken_wrap"), true);
		player:GiveItem(Clockwork.item:CreateInstance("peanuts"), true);
		player:GiveItem(Clockwork.item:CreateInstance("monster"), true);
		player:GiveItem(Clockwork.item:CreateInstance("jar_of_peanut_butter"), true);

		Clockwork.plugin:Call("PlayerUseRation", player);
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
