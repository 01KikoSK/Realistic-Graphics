-- Setting up realistic lighting in Roblox
local Lighting = game:GetService("Lighting")

-- Function to adjust lighting properties
local function setupLighting()
	Lighting.Ambient = Color3.fromRGB(128, 128, 128) -- Soft ambient light
	Lighting.Brightness = 2 -- Increase brightness for better visibility
	Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255) -- Color shift for the bottom
	Lighting.ColorShift_Top = Color3.fromRGB(200, 200, 255) -- Color shift for the top
	Lighting.ExposureCompensation = 1 -- Set exposure compensation

	-- Adding post-processing effects
	local bloomEffect = Instance.new("BloomEffect")
	bloomEffect.Intensity = 1.5
	bloomEffect.Size = 24
	bloomEffect.Threshold = 0.8
	bloomEffect.Parent = Lighting

	local colorCorrection = Instance.new("ColorCorrectionEffect")
	colorCorrection.Brightness = 0.1 -- Light adjustment
	colorCorrection.Contrast = 0.1 -- Contrast adjustment
	colorCorrection.Saturation = 0.5 -- Saturation adjustment
	colorCorrection.Parent = Lighting

	local blurEffect = Instance.new("BlurEffect")
	blurEffect.Size = 10 -- Size of the blur effect
	blurEffect.Parent = Lighting
end

-- Call the function to set up the lighting
setupLighting()