local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "DEVSE HUB",
    LoadingTitle = "DEVSE HUB",
    LoadingSubtitle = "by Devse",
    ConfigurationSaving = {
        Enabled = false
    },
    Theme = "Ocean",

    Discord = {
        Enabled = true,
        Invite = "xbggxxZyq7",
        RememberJoins = false
     },

    KeySystem = true,
    KeySettings = {
        Title = "Devse HUB",
        Subtitle = "Devse",
        Note = "discord for key https://discord.gg/xbggxxZyq7 ",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"ver 0.1"}
    }
})

local TabMain = Window:CreateTab("Main", 4483362458)
local SectionMain = TabMain:CreateSection("Autofarm")






local TabMisc = Window:CreateTab("Misc", 4483362458)
local SectionMisc = TabMisc:CreateSection("Other Features")

local codes = {
    "DESERT",
    "CHALLENGES",
    "MAP3",
    "NEWUPDATE",
    "UPDATEONE",
    "RELEASE"
}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local redeemFunction = ReplicatedStorage.packages._Index:FindFirstChild("sleitnick_knit@1.7.0").knit.Services.codesService.RF.redeem

TabMisc:CreateButton({
    Name = "Redeem All Codes",
    Callback = function()
        if redeemFunction then
            for _, code in ipairs(codes) do
                local success, result = pcall(function()
                    return redeemFunction:InvokeServer(code)
                end)
                if success then
                    print("[SUCCESS] Redeemed:", code, "Result:", result)
                else
                    warn("[ERROR] Failed to redeem:", code)
                end
                wait(1)
            end
        else
            warn("[ERROR] ไม่พบ RemoteFunction สำหรับ Redeem Code")
        end
    end
})


TabMisc:CreateButton({
    Name = "Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/xbggxxZyq7")
        Rayfield:Notify({
            Title = "Discord Link",
            Content = "ลิงก์ Discord ถูกคัดลอกไปยังคลิปบอร์ดแล้ว!",
            Duration = 5,
            Image = 4483362458
        })
    end
})
