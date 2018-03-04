--[[
made by dalton all rights reserved omni
--]]

local ITEM = Clockwork.item:NEW();

ITEM.name = "Jar of Honey";
ITEM.cost = 17;
ITEM.model = "models/foodnhouseholditems/honey_jar.mdl";
ITEM.weight = 0.7;
ITEM.access = "L";
ITEM.useText = "Consume";
ITEM.category = "Food";
ITEM.business = true;
ITEM.description = "A jar filled with yellow honey.";

function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 5, 0, player:GetMaxHealth() ) );

	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	-- dylan BIIIIIG gay.
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)

end;

ITEM:Register()