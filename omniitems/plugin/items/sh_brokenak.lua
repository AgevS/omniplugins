--[[
    This item was constructed using http://www.ClockworkConstructors.com, a free
    and easy to use web application to make your own Clockwork items, factions,
    plugins, and more! Brought to you by http://www.JonathanDroogh.com, aka RJ.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Broken AK-47";
ITEM.description = "A broken, nonfunctional assault rifle of Soviet origin, mass produced throughout the second half of the 1900s.";
ITEM.model = "models/weapons/w_ak47_m9k.mdl";
ITEM.category = "Broken Weapons";
ITEM.weight = 3;
ITEM.cost = 550;
ITEM.batch = 5;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
