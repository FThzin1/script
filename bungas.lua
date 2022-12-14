-- It detect a SPAWNED fruit only if u are on the same island with that fruit. Also u must be atleast 300 meters away


-- Made by MrKix#1233
-- Instances:
local BullShit = Instance.new("ScreenGui")
local MyFrame = Instance.new("Frame")
local ESP = Instance.new("TextLabel")
BullShit.Name = "BullShit"
BullShit.Parent = game.CoreGui
BullShit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MyFrame.Name = "MyFrame"
MyFrame.Parent = BullShit
MyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MyFrame.BackgroundTransparency = 1.000
MyFrame.Position = UDim2.new(0.683068037, 0, 0.885974944, 0)
MyFrame.Size = UDim2.new(0, 438, 0, 100)
ESP.Name = "ESP"
ESP.Parent = MyFrame
ESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESP.BackgroundTransparency = 0.400
ESP.Position = UDim2.new(0.119, 0, 0.37, 0)
ESP.Size = UDim2.new(0, 350, 0, 50)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "Waiting for a fruit to detect..."
ESP.TextColor3 = Color3.fromRGB(0, 0, 0)
ESP.TextSize = 16.000
script.Parent = ESP
print('Made by MrKix#1233')
local guranteedsuke = game.Workspace.Env.Settings:FindFirstChild('Folder')
if guranteedsuke then 
    for i, v in pairs(guranteedsuke:GetDescendants()) do 
        if v:IsA("Model") then 
            spawn(function()
                while wait() and guranteedsuke.Parent ~= nil do
                    local plr = game.Players.LocalPlayer
                    local chara = plr.Character
                    local fruitpos = v.PrimaryPart.Position
                    local mypos = chara.HumanoidRootPart.Position
                    ESP.Text = 'Distance: '..tostring(((fruitpos-mypos).Magnitude))
                end
            end)
        end 
    end 
end

