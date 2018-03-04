--[[
made by dalton all rights reserved omni
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Brandy Fizz";
ITEM.cost = 17;
ITEM.model = "models/brandy fizz/brandy fizz.mdl";
ITEM.weight = 0.7;
ITEM.access = "L";
ITEM.useText = "Drink";
ITEM.category = "Alcohol";
ITEM.business = true;
ITEM.description = "An alcoholic beverage made of Cognac, Lemon Juice, Sugar Syrup, and Soda.";

function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 5, 0, player:GetMaxHealth() ) );
	player:SetSharedVar("antidepressants", CurTime() + 600);
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	-- dylan BIIIIIG gay.
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)

end;

ITEM:Register()
