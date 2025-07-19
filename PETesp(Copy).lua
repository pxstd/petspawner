-- TON X Loader

local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create screen GUI
local gui = Instance.new("ScreenGui")
gui.Name = "TONX_Loading"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = playerGui

-- Background frame
local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bg.BorderSizePixel = 0
bg.Parent = gui

-- Loading text
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Font = Enum.Font.Code
textLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
textLabel.Text = "TON X HUB - Initializing..."
textLabel.Parent = bg

-- Techy words to display
local words = {
    "Injecting C++ layer...",
    "Unpacking bytecode...",
    "Stabilizing memory...",
    "Creating virtual threads...",
    "Bypassing checksum...",
    "Compiling Lua payload...",
    "Optimizing runtime...",
    "Hooking functions...",
    "Injecting pet ESP...",
    "Validating hardware..."
}

-- Update text every 3–7 seconds
task.spawn(function()
    while gui.Parent do
        textLabel.Text = "TON X HUB - " .. words[math.random(1, #words)]
        task.wait(math.random(3, 7))
    end
end)

-- Delay before loading the obfuscated main script
task.delay(math.random(6, 10), function()
    pcall(function()
        gui:Destroy()
    end)
    
    -- Load your main obfuscated petspawner script
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pxstd/petspawner/refs/heads/main/petspawner.lua"))()
end)