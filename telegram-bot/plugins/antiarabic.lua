
local function run(msg)
    local issudo = is_sudo(msg)
    if issudo == false then
        delete_msg(msg.id, ok_cb, false)
        send_msg('channel#id'..msg.to.id, ' @'..msg.from.username..' ('..msg.from.id..') El arabe no esta permitido .', ok_cb, true)
        if msg.to.type == 'chat' then
           -- chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        --elseif msg.to.type == 'channel' then
             --channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        end
    end    
end

return {patterns = {
    "([\216-\219][\128-\191])"
    }, run = run}