--[[
    This item was constructed using http://www.ClockworkConstructors.com, a free
    and easy to use web application to make your own Clockwork items, factions,
    plugins, and more! Brought to you by http://www.JonathanDroogh.com, aka RJ.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Broken Remington 1858";
ITEM.description = "A broken, nonfunctional civil war era revolver.";
ITEM.model = "models/weapons/w_remington_1858.mdl";
ITEM.category = "Broken Weapons";
ITEM.weight = 1;
ITEM.cost = 300;
ITEM.batch = 5;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
