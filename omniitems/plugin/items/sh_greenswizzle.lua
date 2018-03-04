--[[
made by dalton all rights reserved omni
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Green Swizzle";
ITEM.cost = 22;
ITEM.model = "models/green swizzle/green swizzle.mdl";
ITEM.weight = 0.8;
ITEM.access = "L";
ITEM.useText = "Drink";
ITEM.category = "Alcohol";
ITEM.business = true;
ITEM.description = "An alcoholic beverage that is made with rum, lime juice, creme de menthe, mint, and sugar.";

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
