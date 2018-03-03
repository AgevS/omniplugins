--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Fentanyl";
ITEM.cost = 105;
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 1.5;
ITEM.access = "L";
ITEM.useText = "Take";
ITEM.category = "Drugs";
ITEM.business = true;
ITEM.description = "A wrapped up package of Fentanyl.";

function ITEM:OnUse(player, itemEntity)
	player:SetSharedVar("antidepressants", CurTime() + 1000);

	player:BoostAttribute(self.name, ATB_ENDURANCE, 25, 240);

end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) 

end;


ITEM:Register();