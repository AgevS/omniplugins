--[[
	� 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Pineaple Drink";
ITEM.cost = 17;
ITEM.model = "models/foodnhouseholditems/pineapple_drink.mdl";
ITEM.weight = 0.6;
ITEM.access = "L";
ITEM.thirst = 10;
ITEM.useText = "Consume";
ITEM.category = "Food";
ITEM.business = true;
ITEM.description = "A drink created using a pineapple, filled with some form of liqour and pineapple juice. It has a little umbrella next to the straw.";

function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 6, 0, player:GetMaxHealth() ) );

	player:BoostAttribute(self.name, ATB_ACCURACY, 3, 120);

end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)

end;


ITEM:Register();