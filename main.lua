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
keylabel1.Text = "Revo RIVALS"
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
	if keytextBox.Text == "Revo on RIVALS" then
		keyscreenGui:Destroy()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local RunService = game:GetService("RunService")
		local playerGui = player:WaitForChild("PlayerGui")
		local UserInputService = game:GetService("UserInputService")

		local old = playerGui:FindFirstChild("CustomUI")
		if old then
			old:Destroy()
		end

		-- instances
		local screenGui = Instance.new("ScreenGui")
		local helpscreenGui = Instance.new("ScreenGui")
		local mainFrame = Instance.new("Frame")
		local sidebar = Instance.new("TextButton")
		local close = Instance.new("TextButton")
		local title = Instance.new("TextLabel")
		local frameCorner = Instance.new("UICorner")
		local sidebarframe = Instance.new("Frame")
		local sidebarbuttonframe = Instance.new("Frame")
		local sidebarborder1 = Instance.new("Frame")
		local sidebarborder2 = Instance.new("Frame")
		local sidebarclose = Instance.new("TextButton")
		local help = Instance.new("TextLabel")
		local helpstroke = Instance.new("UIStroke")

		-- zindex
		mainFrame.ZIndex = 100
		title.ZIndex = 101
		sidebar.ZIndex = 102
		close.ZIndex = 102
		sidebarframe.ZIndex = 103
		sidebarbuttonframe.ZIndex = 104
		sidebarborder1.ZIndex = 105
		sidebarborder2.ZIndex = 105
		sidebarclose.ZIndex = 106
		help.ZIndex = 1000000

		-- names
		helpscreenGui.Name = "helpgui"
		screenGui.Name = "main"
		mainFrame.Name = "frame"
		sidebar.Name = "sidebar"
		close.Name = "close"
		title.Name = "title"
		sidebarframe.Name = "sidebarframe"
		sidebarbuttonframe.Name = "sidebarbuttonframe"
		sidebarborder1.Name = "sidebarborder1"
		sidebarborder2.Name = "sidebarborder2"
		sidebarclose.Name = "sidebarclose"
		help.Name = "help"

		-- sizes
		mainFrame.Size = UDim2.new(0, 300, 0, 350)
		sidebar.Size = UDim2.new(0, 30, 0, 30)
		sidebarframe.Size = UDim2.new(0, 100, 0, 347)
		sidebarbuttonframe.Size = UDim2.new(0, 30, 0, 315)
		sidebarborder1.Size = UDim2.new(0, 0, 0, 347)
		sidebarborder2.Size = UDim2.new(0, 0, 0, 347)
		sidebarclose.Size = UDim2.new(0, 132, 0, 30)
		close.Size = UDim2.new(0, 30, 0, 30)
		title.Size = UDim2.new(0, 235,0, 30)
		help.Size = UDim2.new(0, 200, 0, 50)

		-- positions
		mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		sidebar.Position = UDim2.new(0.006, 0, 0.006, 0)
		sidebarframe.Position = UDim2.new(-0.333, 0, 0.01, 0)
		sidebarbuttonframe.Position = UDim2.new(0, 1, 0, 32)
		sidebarborder1.Position = UDim2.new(0, 135, 0, -1)
		sidebarborder2.Position = UDim2.new(0, 33, 0, -1)
		sidebarclose.Position = UDim2.new(0,2, 0, -1)
		close.Position = UDim2.new(0.893, 0, 0.006, 0)
		title.Position = UDim2.new(0.107, 0, 0.006, 0)
		help.Position = UDim2.new(0.84, 0, 0.92, 0)

		-- anchor points
		mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		sidebar.AnchorPoint = Vector2.new(0, 0)
		sidebarframe.AnchorPoint = Vector2.new(0, 0)
		sidebarbuttonframe.AnchorPoint = Vector2.new(0, 0)
		sidebarborder1.AnchorPoint = Vector2.new(0, 0)
		sidebarborder2.AnchorPoint = Vector2.new(0, 0)
		sidebarclose.AnchorPoint = Vector2.new(0, 0)
		close.AnchorPoint = Vector2.new(0, 0)
		title.AnchorPoint = Vector2.new(0, 0)
		help.AnchorPoint = Vector2.new(0, 0)

		-- texts
		sidebar.Text = "R"
		sidebarclose.Text = " R"
		close.Text = "x"
		title.Text = "   Revo SCRIPTS"
		help.Text = "Press R to open Revo UI"

		-- colors
		local backgroundcolor15 = Color3.fromRGB(15,15,15)
		local textcolor100 = Color3.fromRGB(100,100,100)
		local bordercolor64 = BrickColor.new(646464)
		helpstroke.Color = Color3.fromRGB(255, 255, 255)
		help.TextColor3 = Color3.fromRGB(0, 0, 0)
		mainFrame.BackgroundColor3 = backgroundcolor15
		sidebar.BackgroundColor3 = backgroundcolor15
		sidebarframe.BackgroundColor3 = backgroundcolor15
		sidebarbuttonframe.BackgroundColor3 = backgroundcolor15
		sidebarclose.BackgroundColor3 = backgroundcolor15
		close.BackgroundColor3 = backgroundcolor15
		title.BackgroundColor3 = backgroundcolor15
		sidebar.TextColor3 = textcolor100
		sidebarclose.TextColor3 = textcolor100
		close.TextColor3 = textcolor100
		title.TextColor3 = textcolor100
		sidebar.BorderColor = bordercolor64
		sidebarborder1.BorderColor = bordercolor64
		sidebarborder2.BorderColor = bordercolor64
		sidebarclose.BorderColor = bordercolor64
		close.BorderColor = bordercolor64
		title.BorderColor = bordercolor64

		-- parents
		helpscreenGui.Parent = playerGui
		screenGui.Parent = playerGui
		mainFrame.Parent = screenGui
		help.Parent = helpscreenGui
		frameCorner.Parent = mainFrame
		sidebar.Parent = mainFrame
		close.Parent = mainFrame
		title.Parent = mainFrame
		sidebarframe.Parent = mainFrame
		sidebarbuttonframe.Parent = sidebarframe
		sidebarborder1.Parent = sidebarframe
		sidebarborder2.Parent = sidebarframe
		sidebarclose.Parent = sidebarframe
		helpstroke.Parent = help

		-- text sizes
		sidebar.TextSize = 25
		sidebarclose.TextSize = 25
		close.TextSize = 25
		title.TextSize = 20
		help.TextSize = 20

		-- fonts
		title.Font = Enum.Font.FredokaOne
		help.Font = Enum.Font.FredokaOne
		sidebar.Font = Enum.Font.IndieFlower
		sidebarclose.Font = Enum.Font.IndieFlower
		close.Font = Enum.Font.IndieFlower

		-- borders
		mainFrame.BorderSizePixel = 0
		sidebarframe.BorderSizePixel = 0
		sidebarbuttonframe.BorderSizePixel = 0
		sidebarborder1.BorderSizePixel = 1
		sidebarborder2.BorderSizePixel = 1
		helpstroke.Thickness = 1
		sidebar.BorderSizePixel = 2
		sidebarclose.BorderSizePixel = 2
		close.BorderSizePixel = 2
		title.BorderSizePixel = 2

		-- main
		title.TextXAlignment = Enum.TextXAlignment.Left
		frameCorner.CornerRadius = UDim.new(0, 3)
		screenGui.ResetOnSpawn = false
		screenGui.Enabled = true
		mainFrame.Visible = true
		close.Visible = true
		title.Visible = true
		sidebar.Visible = true
		sidebarframe.Visible = false
		sidebarborder1.Visible = false
		sidebarborder2.Visible = false
		sidebarclose.Visible = false
		help.Visible = false
		help.BackgroundTransparency = 1
		sidebarclose.TextXAlignment = Enum.TextXAlignment.Left


		-- functions
		UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed then return end
			if input.KeyCode == Enum.KeyCode.R and screenGui.Enabled == false then
				screenGui.Enabled = true
				help.Visible = false
			end
		end)

		close.MouseButton1Click:Connect(function()
			screenGui.Enabled = false
			sidebarframe.Visible = false
			sidebarborder1.Visible = false
			sidebarborder2.Visible = false
			sidebarclose.Visible = false
			sidebar.Visible = true
			help.Visible = true
		end)

		sidebar.MouseButton1Click:Connect(function()
			sidebarframe.Visible = true
			sidebarborder1.Visible = true
			sidebarborder2.Visible = true
			sidebarclose.Visible = true
			sidebar.Visible = false
		end)

		sidebarclose.MouseButton1Click:Connect(function()
			sidebarframe.Visible = false
			sidebarborder1.Visible = false
			sidebarborder2.Visible = false
			sidebarclose.Visible = false
			sidebar.Visible = true
		end)
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
	setclipboard("https://discord.gg/PKmvd5bMj")
	keybutton2.Text = "Link copied!"
	task.wait(5)
	keybutton2.Text = "Get KEY..."
end)
