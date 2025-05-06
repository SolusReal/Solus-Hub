-- Services
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Prevent duplicate GUIs
if playerGui:FindFirstChild("SolusHubGui") then
	playerGui.SolusHubGui:Destroy()
end

-- Create main GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SolusHubGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Thick outline logo
local function createThickLogo(parent)
	local base = Instance.new("Frame")
	base.Size = UDim2.new(0, 800, 0, 250)
	base.AnchorPoint = Vector2.new(0.5, 0.5)
	base.Position = UDim2.new(0.5, 0, 0.6, 0)
	base.BackgroundTransparency = 1
	base.Parent = parent

	for dx = -4, 4 do
		for dy = -4, 4 do
			if dx ~= 0 or dy ~= 0 then
				local shadow = Instance.new("TextLabel")
				shadow.Size = UDim2.new(1, 0, 1, 0)
				shadow.Position = UDim2.new(0, dx, 0, dy)
				shadow.BackgroundTransparency = 1
				shadow.Text = "Solus Hub"
				shadow.TextColor3 = Color3.new(0, 0, 0)
				shadow.Font = Enum.Font.PermanentMarker
				shadow.TextScaled = true
				shadow.TextTransparency = 1
				shadow.Parent = base
			end
		end
	end

	local mainText = Instance.new("TextLabel")
	mainText.Size = UDim2.new(1, 0, 1, 0)
	mainText.Position = UDim2.new(0, 0, 0, 0)
	mainText.BackgroundTransparency = 1
	mainText.Text = "Solus Hub"
	mainText.TextColor3 = Color3.new(1, 1, 1)
	mainText.Font = Enum.Font.PermanentMarker
	mainText.TextScaled = true
	mainText.TextTransparency = 1
	mainText.Parent = base

	return base, mainText
end

-- Subtitle
local function createSubtitle(parent)
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(0, 300, 0, 60)
	label.AnchorPoint = Vector2.new(0.5, 0)
	label.Position = UDim2.new(0.5, 0, 0.8, 0)
	label.BackgroundTransparency = 1
	label.Text = "made by frix\nand dev team"
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	label.Font = Enum.Font.Cartoon
	label.TextScaled = true
	label.TextTransparency = 1
	label.TextStrokeTransparency = 1
	label.Parent = parent
	return label
end

-- Animate text fade
local function tweenText(obj, trans, time)
	TweenService:Create(obj, TweenInfo.new(time, Enum.EasingStyle.Quad), {
		TextTransparency = trans,
		TextStrokeTransparency = trans
	}):Play()
end

-- Fade full logo
local function fadeLogo(base, target, duration)
	for _, v in ipairs(base:GetChildren()) do
		if v:IsA("TextLabel") then
			tweenText(v, target, duration)
		end
	end
end

-- Run intro animation
local logoBase, logoText = createThickLogo(screenGui)
local subtitle = createSubtitle(screenGui)
fadeLogo(logoBase, 0, 2)
tweenText(subtitle, 0, 2)
task.wait(2.5)
fadeLogo(logoBase, 1, 3)
tweenText(subtitle, 1, 3)
task.wait(3.2)
logoBase:Destroy()
subtitle:Destroy()

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 400)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Visible = true
frame.Parent = screenGui

-- Rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

-- Outline
local outline = Instance.new("UIStroke")
outline.Thickness = 5
outline.Color = Color3.new(0, 0, 0)
outline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
outline.Parent = frame

-- ✅ Manual Gradient (black to gray)
for i = 0, 39 do
	local strip = Instance.new("Frame")
	strip.Size = UDim2.new(1, 0, 0, 10)
	strip.Position = UDim2.new(0, 0, 0, i * 10)
	strip.BorderSizePixel = 0
	local gray = math.floor(i * (150 / 39))
	strip.BackgroundColor3 = Color3.fromRGB(gray, gray, gray)
	strip.ZIndex = 0
	strip.Parent = frame
end

-- X destroy button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 24, 0, 24)
closeButton.Position = UDim2.new(1, -28, 0, 4)
closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.BorderSizePixel = 0
closeButton.ZIndex = 2
closeButton.AutoButtonColor = true
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

-- Toggle visibility with "V"
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.V then
		frame.Visible = not frame.Visible
	end
end)

