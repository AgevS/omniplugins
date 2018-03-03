--[[
    This item was constructed using http://www.ClockworkConstructors.com, a free
    and easy to use web application to make your own Clockwork items, factions,
    plugins, and more! Brought to you by http://www.JonathanDroogh.com, aka RJ.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Broken Coach Gun";
ITEM.description = "A broken, nonfunctional double barreled shotgun";
ITEM.model = "models/weapons/w_double_barrel_shotgun.mdl";
ITEM.category = "Broken Weapons";
ITEM.weight = 3;
ITEM.cost = 400;
ITEM.batch = 5;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
