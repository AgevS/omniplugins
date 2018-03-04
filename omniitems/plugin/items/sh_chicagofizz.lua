--[[
made by dalton all rights reserved omni
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Chicago Fizz";
ITEM.cost = 23;
ITEM.model = "models/chicago fizz/chicago fizz.mdl";
ITEM.weight = 0.7;
ITEM.access = "L";
ITEM.useText = "Drink";
ITEM.category = "Alcohol";
ITEM.business = true;
ITEM.description = "An alcoholic beverage that is made with rum, port, lemon juice, syrup, and egg whites.";

function ITEM:OnUse(player, itemEntity)
	player:SetSharedVar("antidepressants", CurTime() + 600);
end;

function ITEM:OnUse(player, itemEntity)
  player:SetHealth( math.Clamp( player:Health() + 1, 0, player:GetMaxHealth() ) );

  player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
  -- dalton BIIIIIG gay.
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)

end;

ITEM:Register()
