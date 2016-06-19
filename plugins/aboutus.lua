local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'My Best Friends 👥', callback_data = '!owners'},
			},
			{
			{text = 'My Friends 👥', callback_data = '!members'},
			},
			{
			{text = 'My BotMates 🌹', callback_data = '!friends'},
			},
			{
	    {text = '🔙', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_owners()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '● ParsaAlemi ●', url = 'http://telegram.me/parsaalemi'},},
			{{text = '● Valtman ●', url = 'http://telegram.me/Valtman'},},
			{{text = '● Raman ●', url = 'http://telegram.me/ThisisRaman'},},
			{{text = '🔙', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_members()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = '● Amir SbsS ●' , url = 'telegram.me/amir_h'},
			{text = '● Mr Jan123 ●', url = 'telegram.me/i_am_jan123'},
			},
			{
			{text = '● Mehdi ●', url = 'telegram.me/Mehdi'},
			{text = '● Parham ●' , url = 'telegram.me/UnFriendlly'},
			{text = '● Raman ●' , url = 'telegram.me/Raman'},
			},
			{
			{text = '● MrHaliX ●' , url = 'telegram.me/mrhalix'},
			{text = '● Pukeram ●', url = 'telegram.me/Pukeram'},
			},
			{
			{text = '● Amir ●', url = 'telegram.me/Alfroshotak'},
			{text = '● PuKeR ●', url = 'telegram.me/pukers'},
			{text = '● AmirHoseinF ●', url = 'telegram.me/AmirHo3ein_F'},
			},
			{
			{text = '● IDeaCtiVe ●', url = 'telegram.me/Ideactive'},
			{text = '● YellowHat ●', url = 'telegram.me/yellowhat'},
			},
			{
	    {text = '🔙', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local function do_keyboard_friends()
    local keyboard = {}
    keyboard.inline_keyboard = {
	        {
			{text = '● ShabGarD ●', url = 'telegram.me/night_011'},
			},
			{
			{text = '● Empix ●', url = 'telegram.me/empix'},
			{text = '● CreeD ●' , url = 'telegram.me/mute_all'},
			},
			{
						{text = '● ReZaHextor ●', url = 'telegram.me/hextor_admin'},
},
			{
	    {text = '🔙', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local action = function(msg,blocks)
local msg_id = msg.message_id
local chat = msg.chat.id
local query = blocks[1]
    if msg.cb then
	if query == 'aboutus' then
		local keyboard = do_keyboard_aboutus()
		local text = [[_Please select an option ..._]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'owners' then
		local keyboard = do_keyboard_owners()
		local text = [[*My Friends 🌹 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'members' then
		local keyboard = do_keyboard_members()
		local text = [[*My Best Friends 👥 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'friends' then
		local keyboard = do_keyboard_friends()
		local text = [[*My Botmates 📍 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(owners)',
	    '^###cb:!(members)',
	    '^###cb:!(friends)',
    }
}
