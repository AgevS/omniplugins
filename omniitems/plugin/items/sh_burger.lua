--[[
	� 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Cheeseburger";
ITEM.cost = 17;
ITEM.model = "models/foodnhouseholditems/burgersims2.mdl";
ITEM.weight = 0.6;
ITEM.hunger = 35;
ITEM.access = "L";
ITEM.useText = "Consume";
ITEM.category = "Food";
ITEM.business = true;
ITEM.description = "A cheeseburger with just meat and cheese.";

function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 6, 0, player:GetMaxHealth() ) );
	
	player:BoostAttribute(self.name, ATB_ACCURACY, 3, 120);
	-- Pickles are disgusting.
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) 

end;


ITEM:Register();