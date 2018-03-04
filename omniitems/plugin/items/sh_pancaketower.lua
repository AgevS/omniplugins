--[[
made by dalton all rights reserved omni
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Pancake Tower";
ITEM.cost = 17;
ITEM.model = "models/foodnhouseholditems/pancakes.mdl";
ITEM.weight = 1.7;
ITEM.access = "L";
ITEM.useText = "Consume";
ITEM.category = "Food";
ITEM.business = true;
ITEM.description = "A massive tower of pancakes on a paper plate. They are drenched maple syrup.";

function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 5, 0, player:GetMaxHealth() ) );

	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	-- dylan BIIIIIG gay.
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)

end;

ITEM:Register()
