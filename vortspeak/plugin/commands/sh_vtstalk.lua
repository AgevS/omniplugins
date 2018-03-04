local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Ves");
COMMAND.tip = "Speak in the vortal-tongue.";
COMMAND.text = "<string speech>";
COMMAND.flags = bit.bor(CMD_DEFAULT);
COMMAND.arguments = 1;

--Thanks nightangel. (hope you get the money ;c)
local soundTable = {
	"vo/npc/vortigaunt/vortigese02.wav",
	"vo/npc/vortigaunt/vortigese03.wav",
	"vo/npc/vortigaunt/vortigese04.wav",
	"vo/npc/vortigaunt/vortigese05.wav",
	"vo/npc/vortigaunt/vortigese07.wav",
	"vo/npc/vortigaunt/vortigese08.wav",
	"vo/npc/vortigaunt/vortigese09.wav",
	"vo/npc/vortigaunt/vortigese13.wav"
};

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:GetFaction() == FACTION_VORT) then
		local speech = arguments[1]

		for k,v in pairs(_player.GetAll()) do
			local distance = v:GetPos():Distance(player:GetPos());
			if (math.floor(distance) <= Clockwork.config:Get("talk_radius"):Get()) then
				if (player:GetFaction() == FACTION_VORT) then
				Clockwork.chatBox:SendColored(v, Color(255, 255, 150, 255), "[Vortessence] "..player:Name()..": "..speech)
			else
				Clockwork.chatBox:SendColored(v, Color(102, 205, 170, 255), player:Name().." speaks in an unknown tongue, it's comprehensible to you.")
				end;
			end;
		end;
	else
		Clockwork.player:Notify(player, "You cannot channel the Vortessence!")
	end;


player:EmitSound(table.Random(soundTable), 100);
end;

COMMAND:Register();
