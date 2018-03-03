--[[
    This item was constructed using http://www.ClockworkConstructors.com, a free
    and easy to use web application to make your own Clockwork items, factions,
    plugins, and more! Brought to you by http://www.JonathanDroogh.com, aka RJ.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Broken SVT-40";
ITEM.description = "A broken, nonfunctional rifle produced by the Soviet Union in the 1940s.";
ITEM.model = "models/weapons/w_svt_40.mdl";
ITEM.category = "Broken Weapons";
ITEM.weight = 4;
ITEM.cost = 500;
ITEM.batch = 5;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
