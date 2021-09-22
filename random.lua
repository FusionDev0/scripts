--[[by fusiondev]]
--[[instances:]]
local ScreenGui = Instance.new("ScreenGui"); local Frame = Instance.new("Frame");
local TextBox = Instance.new("TextBox"); local TextBox2 = Instance.new("TextBox");
local TextButton = Instance.new("TextButton"); local PogRemote = game.ReplicatedStorage:FindFirstChild("FunRemote");
--[[properties:]]
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"); ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = ScreenGui; Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0); Frame.Position = UDim2.new(0.0119791673, 0, 0.0194624644, 0); Frame.Size = UDim2.new(0, 674, 0, 418);
TextBox.Parent = Frame; TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
TextBox.Size = UDim2.new(0, 200, 0, 50); TextBox.Font = Enum.Font.SourceSans; TextBox.Text = "Player1"; TextBox.TextColor3 = Color3.fromRGB(0, 0, 0); TextBox.TextSize = 14.000;
TextBox2.Name = "TextBox2"; TextBox2.Parent = Frame; TextBox2.BackgroundColor3 = Color3.fromRGB(255, 255, 255); TextBox2.Position = UDim2.new(0, 0, 0.203349277, 0);
TextBox2.Size = UDim2.new(0, 200, 0, 65); TextBox2.Font = Enum.Font.SourceSans; TextBox2.Text = "Player2"; TextBox2.TextColor3 = Color3.fromRGB(0, 0, 0);
TextBox2.TextSize = 14.000; TextButton.Parent = Frame; TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255); TextButton.Position = UDim2.new(0, 0, 0.464114845, 0);
TextButton.Size = UDim2.new(0, 200, 0, 50); TextButton.Font = Enum.Font.SourceSans; TextButton.Text = "done"; TextButton.TextColor3 = Color3.fromRGB(0, 0, 0);
TextButton.TextSize = 14.000;
--[[functions/connect:]]
if PogRemote == nil then; x(); end;	
function Rscript(); local p1 = TextBox.Text; local p2 = TextBox2.Text; PogRemote:FireServer(p1, p2); end; 
TextButton.MouseButton1Click:Connect(Rscript)
--[[note:  you MUST execute the correstponding script in a serverside executor for it to work:
https://raw.githubusercontent.com/FusionDev0/scripts/main/random2.lua
]]
function x(); warn("Execute The SS Script in an SS Executor before Executing this script: https://raw.githubusercontent.com/FusionDev0/scripts/main/random2.lua"); error(); end;
