local games = {
    [127554353827327] = "Craft Tower Defense.lua",
}

local gameID = game.PlaceId
local repo = "https://raw.githubusercontent.com/Unknownre/Devse-HUB/main/"

if games[gameID] then
    loadstring(game:HttpGet(repo .. games[gameID], true))()
else
    warn("ไม่มีสคริปต์สำหรับเกมนี้")
end
