-- Services
local TweenService      = game:GetService("TweenService")
local UserInputService  = game:GetService("UserInputService")
local player            = game.Players.LocalPlayer
local playerGui         = player:WaitForChild("PlayerGui")

-- Prevent duplicate GUIs
if playerGui:FindFirstChild("SolusHubGui") then
    playerGui.SolusHubGui:Destroy()
end

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name            = "SolusHubGui"
screenGui.ResetOnSpawn    = false
screenGui.Parent          = playerGui

-- ─── INTRO LOGO ───────────────────────────────────────────────────────────────
local function createThickLogo(parent)
    local base = Instance.new("Frame", parent)
    base.Size               = UDim2.new(0, 800, 0, 250)
    base.AnchorPoint        = Vector2.new(0.5, 0.5)
    base.Position           = UDim2.new(0.5, 0, 0.6, 0)
    base.BackgroundTransparency = 1

    for dx = -4, 4 do
        for dy = -4, 4 do
            if dx ~= 0 or dy ~= 0 then
                local shadow = Instance.new("TextLabel", base)
                shadow.Size             = UDim2.new(1, 0, 1, 0)
                shadow.Position         = UDim2.new(0, dx, 0, dy)
                shadow.BackgroundTransparency = 1
                shadow.Text             = "Solus Hub"
                shadow.TextColor3       = Color3.new(0, 0, 0)
                shadow.Font             = Enum.Font.PermanentMarker
                shadow.TextScaled       = true
                shadow.TextTransparency = 1
            end
        end
    end

    local mainText = Instance.new("TextLabel", base)
    mainText.Size               = UDim2.new(1, 0, 1, 0)
    mainText.BackgroundTransparency = 1
    mainText.Text               = "Solus Hub"
    mainText.TextColor3         = Color3.new(1, 1, 1)
    mainText.Font               = Enum.Font.PermanentMarker
    mainText.TextScaled         = true
    mainText.TextTransparency   = 1

    return base, mainText
end

local function createSubtitle(parent)
    local lbl = Instance.new("TextLabel", parent)
    lbl.Size                   = UDim2.new(0, 300, 0, 60)
    lbl.AnchorPoint            = Vector2.new(0.5, 0)
    lbl.Position               = UDim2.new(0.5, 0, 0.8, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text                   = "made by frix\nand dev team"
    lbl.TextColor3             = Color3.new(1, 1, 1)
    lbl.TextStrokeTransparency = 0
    lbl.TextStrokeColor3       = Color3.new(0, 0, 0)
    lbl.Font                   = Enum.Font.Cartoon
    lbl.TextScaled             = true
    lbl.TextTransparency       = 1
    lbl.TextStrokeTransparency = 1
    return lbl
end

local function tweenText(obj, t, dur)
    TweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Quad), {
        TextTransparency = t,
        TextStrokeTransparency = t
    }):Play()
end

local function fadeLogo(base, t, dur)
    for _, v in ipairs(base:GetChildren()) do
        if v:IsA("TextLabel") then
            tweenText(v, t, dur)
        end
    end
end

local logoBase, logoText = createThickLogo(screenGui)
local subtitle = createSubtitle(screenGui)
fadeLogo(logoBase, 0, 2); tweenText(subtitle, 0, 2)
task.wait(2.5)
fadeLogo(logoBase, 1, 3); tweenText(subtitle, 1, 3)
task.wait(3.2)
logoBase:Destroy(); subtitle:Destroy()

-- ─── MAIN FRAME ────────────────────────────────────────────────────────────────
local frame = Instance.new("Frame", screenGui)
frame.Size               = UDim2.new(0, 500, 0, 400)
frame.AnchorPoint        = Vector2.new(0.5, 0.5)
frame.Position           = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3   = Color3.new(0, 0, 0)
frame.ClipsDescendants   = true
frame.Active             = true
frame.Draggable          = true

-- Rounded corners
local frameCorner = Instance.new("UICorner", frame)
frameCorner.CornerRadius = UDim.new(0, 30)

-- Background Image
local background = Instance.new("ImageLabel", frame)
background.Size               = UDim2.new(1, 0, 1, 0)
background.Position           = UDim2.new(0, 0, 0, 0)
background.BackgroundTransparency = 1
background.Image              = "rbxassetid://92996754787170"

-- Also round the image itself
local bgCorner = Instance.new("UICorner", background)
bgCorner.CornerRadius = UDim.new(0, 30)

-- Close Button (25px SW from top-right)
local closeButton = Instance.new("TextButton", frame)
closeButton.Size               = UDim2.new(0, 24, 0, 24)
closeButton.Position           = UDim2.new(1, -49, 0, 25)
closeButton.BackgroundColor3   = Color3.new(0, 0, 0)
closeButton.Text               = "X"
closeButton.TextColor3         = Color3.new(1, 1, 1)
closeButton.Font               = Enum.Font.SourceSansBold
closeButton.TextSize           = 18
closeButton.BorderSizePixel    = 0
closeButton.AutoButtonColor    = true

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Toggle with V
UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.V then
        frame.Visible = not frame.Visible
    end
end)
