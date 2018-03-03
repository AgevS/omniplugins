--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Lean";
ITEM.cost = 20;
ITEM.model = "models/jellik/lean.mdl";
ITEM.weight = 1.1;
ITEM.thirst = 5;
ITEM.access = "L";
ITEM.useText = "Drink";
ITEM.category = "Drugs";
ITEM.business = true;
ITEM.description = "A party drink created in the early 2000's in Houston, Texas. It contains Codeine, Soda - Up To The Mixer -, and Jolly Rancher flavoring.";

function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 1, 0, player:GetMaxHealth() ) );
	
	-- This won't get you drunk. Meh.
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) 

end;


ITEM:Register();