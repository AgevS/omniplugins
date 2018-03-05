--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local COMMAND = Clockwork.command:New("Rad");
COMMAND.tip = "Out of character radio chat.";
COMMAND.text = "<string Message>";
COMMAND.flags = CMD_DEFAULT;
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local msg = table.concat(arguments, " ")
	local listeners = {}
	
	if(msg) then
		if(player:HasItemByID("handheld_radio")) then
			if(player:GetCharacterData("frequency") != nil) then
				for k, v in pairs(_player.GetAll()) do
					if(IsValid(v) and v:HasInitialized() and v:GetCharacterData("frequency") == player:GetCharacterData("frequency")) then
						table.insert(listeners, v)
					end;
				end;
				Clockwork.chatBox:SendColored(listeners, Color(0, 110, 255), player:Name(), ": ", Color(247, 247, 247), msg)
			else
				Clockwork.player:Notify(player, "You don't have a frequency set!")
			end;
		else
			Clockwork.player:Notify(player, "You don't own a radio!")
		end;
	else
		Clockwork.player:Notify(player, "You didn't specify a message!")
	end;
end;

COMMAND:Register();