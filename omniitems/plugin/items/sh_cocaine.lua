--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Cocaine";
ITEM.cost = 100;
ITEM.model = "models/cocn.mdl";
ITEM.weight = 1;
ITEM.access = "L";
ITEM.useText = "Snort";
ITEM.category = "Drugs";
ITEM.business = true;
ITEM.description = "A kilogram package of cocaine. This is the big boy shit right here.";

function ITEM:OnUse(player, itemEntity)
	player:SetSharedVar("antidepressants", CurTime() + 1000);

	player:BoostAttribute(self.name, ATB_AGILITY, 25, 1500);
	player:BoostAttribute(self.name, ATB_STAMINA, 25, 1500);
	player:BoostAttribute(self.name, ATB_ENDURANCE, 25, 1500);
	player:BoostAttribute(self.name, ATB_ACROBATICS, 25, 1500);

end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) 

end;


ITEM:Register();