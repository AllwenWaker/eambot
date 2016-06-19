local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'My Best Friends🤓', callback_data = '!owners'},
			},
			{
			{text = My Friends 👥', callback_data = '!members'},
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
    		{text = '● ParsaAlemi ●', url = 'http://telegram.me/ParsaAlemi'},},
			{{text = '● Raman ●', url = 'http://telegram.me/thisisraman'},},
			{{text = '● Seyed ●', url = 'http://telegram.me/nulluser'},},
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
			{text = '● MehdiHS ●', url = 'telegram.me/mehdihs'},
			{text = '● ThisisAmirh ●' , url = 'telegram.me/mr_amirh'},
			{text = '● Paraste ●' , url = 'telegram.me/Nort_Admin'},
			},
			{
			{text = '● MrHaliX ●' , url = 'telegram.me/mrhalix'},
			{text = '● The PoKeR ●', url = 'telegram.me/UnFriendlly'},
			},
			{
			{text = '● AmircC ●', url = 'telegram.me/Amircc_CreeD'},
			{text = '● PuKeR ●', url = 'telegram.me/pukers'},
			{text = '● PediW ●', url = 'telegram.me/pediw'},
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
			{text = '● Kiarash ●', url = 'telegram.me/kiarash_gh14'},
			},
			{
			{text = '● Empix ●', url = 'telegram.me/empix'},
			{text = '● Mute All ●' , url = 'telegram.me/mute_all'},
			},
			{
						{text = '● ReZa ●', url = 'telegram.me/hextor_admin'},
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
		local text = [[*My Best Friends 🤓 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'members' then
		local keyboard = do_keyboard_members()
		local text = [[*My Friends admins 👥 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'friends' then
		local keyboard = do_keyboard_friends()
		local text = [[*My Botmates 🌹 :*]]
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
