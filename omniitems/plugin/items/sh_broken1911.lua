--[[
    This item was constructed using http://www.ClockworkConstructors.com, a free
    and easy to use web application to make your own Clockwork items, factions,
    plugins, and more! Brought to you by http://www.JonathanDroogh.com, aka RJ.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Broken 1911";
ITEM.description = "A broken, nonfunctional handgun produced by the United States.";
ITEM.model = "models/weapons/s_dmgf_co1911.mdl";
ITEM.category = "Broken Weapons";
ITEM.weight = 1;
ITEM.cost = 350;
ITEM.batch = 5;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
