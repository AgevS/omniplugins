--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Methamphetamine";
ITEM.cost = 195;
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 1.3;
ITEM.access = "L";
ITEM.useText = "Take";
ITEM.category = "Drugs";
ITEM.business = true;
ITEM.description = "A small box filled with blue Crystal Meth, or 'Crank'. It can be smoked or snorted.";

function ITEM:OnUse(player, itemEntity)
	player:SetSharedVar("antidepressants", CurTime() + 1300);
	player:BoostAttribute(self.name, ATB_ENDURANCE, 50, 1500);
	player:BoostAttribute(self.name, ATB_STAMINA, 50, 1500);

end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) 
  
end;


ITEM:Register();