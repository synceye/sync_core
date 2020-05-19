AddEventHandler("chatMessage", function(source, author, text)
    PerformHttpRequest(Config.url, function(err, text, header) end, 'POST', 
    json.encode({username = author, content = text, avatar_url = "https://cdn.discordapp.com/attachments/704945700294885396/711567176326184990/95074621_1082269062145427_1168651298428446617_n.jpg"}), {["Content-Type"] = 'application/json'})
end)

-- STAVI ZASEBNU SLIKU ZA SVE LJUDE KOJI SALJU PORUKE