local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local TextService = game:GetService("TextService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local old = playerGui:FindFirstChild("CustomUI")

if old then
	old:Destroy()
end

-- instances
local keyscreenGui = Instance.new("ScreenGui")
local keymainFrame = Instance.new("Frame")
local keyframeCorner = Instance.new("UICorner")
local keyframeGradient = Instance.new("UIGradient")
local keybutton1 = Instance.new("TextButton")
local keybutton2 = Instance.new("TextButton")
local keytextBox = Instance.new("TextBox")
local keylabel1 = Instance.new("TextLabel")
local keylabel2 = Instance.new("TextLabel")
local keybutton1Corner = Instance.new("UICorner")
local keybutton2Corner = Instance.new("UICorner")
local keytextBoxCorner = Instance.new("UICorner")
local keybutton1Stroke = Instance.new("UIStroke")
local keybutton2Stroke = Instance.new("UIStroke")
local keytextBoxStroke = Instance.new("UIStroke")
local keylabel1Stroke = Instance.new("UIStroke")
local keylabel2Stroke = Instance.new("UIStroke")

-- names
keyscreenGui.Name = "main"
keymainFrame.Name = "frame"
keybutton1.Name = "check_key"
keybutton2.Name = "discord"
keytextBox.Name = "InputBox"
keylabel1.Name = "label1"
keylabel2.Name = "label2"

-- sizes
keymainFrame.Size = UDim2.new(0, 500, 0, 250)
keybutton1.Size = UDim2.new(0, 213, 0, 55)
keybutton2.Size = UDim2.new(0, 213, 0, 55)
keytextBox.Size = UDim2.new(0, 200, 0, 50)
keylabel1.Size = UDim2.new(0, 500, 0, 50)
keylabel2.Size = UDim2.new(0, 500, 0, 50)

-- positions
keymainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
keybutton1.Position = UDim2.new(0.05, 0, 0.676, 0)
keybutton2.Position = UDim2.new(0.523, 0, 0.676, 0)
keytextBox.Position = UDim2.new(0.3, 0, 0.4, 0)
keylabel1.Position = UDim2.new(0, 0, 0.032, 0)
keylabel2.Position = UDim2.new(0, 0, 0.15, 0)

-- anchor points
keymainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

-- texts
keybutton1.Text = "Check KEY"
keybutton2.Text = "Get KEY"
keytextBox.PlaceholderText = "Enter KEY..."
keytextBox.Text = ""
keylabel1.Text = "Frix owns RIVALS"
keylabel2.Text = "Key system"

-- colors
keymainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybutton1.BackgroundColor3 = Color3.fromRGB(0, 125, 0)
keybutton2.BackgroundColor3 = Color3.fromRGB(40, 79, 118)
keytextBox.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
keybutton1.TextColor3 = Color3.fromRGB(255, 255, 255)
keybutton2.TextColor3 = Color3.fromRGB(255, 255, 255)
keytextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
keytextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
keylabel1.TextColor3 = Color3.fromRGB(188, 188, 188)
keylabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
keybutton1Stroke.Color = Color3.fromRGB(255, 255, 255)
keybutton2Stroke.Color = Color3.fromRGB(255, 255, 255)
keytextBoxStroke.Color = Color3.fromRGB(255, 255, 255)
keylabel1Stroke.Color = Color3.fromRGB(0, 0, 0)
keylabel2Stroke.Color = Color3.fromRGB(255, 255, 255)
keyframeGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(40, 40, 40)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 15))
}

-- parents
keyscreenGui.Parent = playerGui
keymainFrame.Parent = keyscreenGui
keyframeCorner.Parent = keymainFrame
keyframeGradient.Parent = keymainFrame
keybutton1.Parent = keymainFrame
keybutton2.Parent = keymainFrame
keytextBox.Parent = keymainFrame
keylabel1.Parent = keymainFrame
keylabel2.Parent = keymainFrame
keybutton1Corner.Parent = keybutton1
keybutton2Corner.Parent = keybutton2
keytextBoxCorner.Parent = keytextBox
keybutton1Stroke.Parent = keybutton1
keybutton2Stroke.Parent = keybutton2
keytextBoxStroke.Parent = keytextBox
keylabel1Stroke.Parent = keylabel1
keylabel2Stroke.Parent = keylabel2

-- text sizes
keybutton1.TextSize = 23
keybutton2.TextSize = 23
keytextBox.TextSize = 25
keylabel1.TextSize = 30
keylabel2.TextSize = 23

-- fonts
keybutton1.Font = Enum.Font.FredokaOne
keybutton2.Font = Enum.Font.FredokaOne
keytextBox.Font = Enum.Font.Sarpanch
keylabel1.Font = Enum.Font.BuilderSans
keylabel2.Font = Enum.Font.BuilderSans

-- borders
keymainFrame.BorderSizePixel = 0
keybutton1.BorderSizePixel = 0
keybutton2.BorderSizePixel = 0
keytextBox.BorderSizePixel = 0
keylabel1.BorderSizePixel = 0
keylabel2.BorderSizePixel = 0
keybutton1Stroke.Thickness = 1.5
keybutton2Stroke.Thickness = 1.5
keytextBoxStroke.Thickness = 0.75
keylabel1Stroke.Thickness = 1
keylabel2Stroke.Thickness = 1

-- corners
keyframeCorner.CornerRadius = UDim.new(0, 3)
keybutton1Corner.CornerRadius = UDim.new(0, 8)
keybutton2Corner.CornerRadius = UDim.new(0, 8)
keytextBoxCorner.CornerRadius = UDim.new(0, 8)

-- transparency
keylabel1.BackgroundTransparency = 1
keylabel2.BackgroundTransparency = 1
keybutton1Stroke.Transparency = 0.5
keybutton2Stroke.Transparency = 0.5
keytextBoxStroke.Transparency = 0.6
keylabel1Stroke.Transparency = 0
keylabel2Stroke.Transparency = 0.55

-- main
keyscreenGui.ResetOnSpawn = false
keyscreenGui.Enabled = true
keyframeGradient.Rotation = 45
keybutton1.TextScaled = false
keybutton2.TextScaled = false
keytextBox.TextScaled = false
keylabel1.TextScaled = false
keylabel2.TextScaled = false

-- functions
keybutton1.MouseButton1Click:Connect(function()
	print("checking key...")
	if keytextBox.Text == "4n8fj-p2x7k-6qv3m-z1r9t-c5hgb" or "t7m2q-w8f4k-3zj9n-v6p1x-r5c8d" or "h4k9v-2m7qx-b3t8n-z6p1f-j5rwg" then
		keyscreenGui:Destroy()
		loadstring(game:HttpGet("https://pastebin.com/raw/tffyi0uA"))()
		print("script executed")
	else
		print("key incorrect")
		keytextBox.Text = ""
		keytextBox.PlaceholderText = "Incorrect key..."
		task.wait(3)
		keytextBox.PlaceholderText = "Enter KEY..."
	end
end)

keybutton2.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/ZxcCNKxz")
	keybutton2.Text = "Link copied!"
	task.wait(5)
	keybutton2.Text = "Get KEY..."
end)
