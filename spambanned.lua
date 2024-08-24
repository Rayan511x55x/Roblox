local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Ensure that the chat services exist
if not TextChatService then
    error("TextChatService not found")
end

if not ReplicatedStorage then
    error("ReplicatedStorage not found")
end

local function chatMessage(message)
    message = tostring(message)

    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        if TextChatService.TextChannels and TextChatService.TextChannels.RBXGeneral then
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
            error("RBXGeneral channel not found")
        end
    else
        if ReplicatedStorage.DefaultChatSystemChatEvents and ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest then
            ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        else
            error("SayMessageRequest event not found")
        end
    end
end

-- Replace the empty string with a desired message you want to send.
repeat 
    wait(1)
    chatMessage("nigger fuck you nigger fuck you") -- Change the message as needed
until false  -- This creates an infinite loop; please adjust as needed.