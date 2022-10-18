local function SetGraphicsSettings()
	rfg.Terrain.FadeStart = 90
	rfg.Terrain.FadeEnd = 200
	rfg.Terrain.SpecularEnable = false
	rfg.Terrain.DetailMapEnable = false
	rfg.Terrain.MedLod = false
	rfg.Shadows.CloudShadowEnabled = false
	rfg.Shadows.ShadowMapMaxDist = 50
	rfg.Shadows.TerrainShadowMaxDist = 100
	rfg.LodInfo.Dist = 0
	rfg.Hdr.Enable = false
	rfg.Hdr.BloomAlternate = false
	rfg.Hdr.BloomNew = false
	rfg.SetFarClip(300)
	rfg.SetHighLodFarClip(150)
end

local function Initialized()
	SetGraphicsSettings()
end

local function OnLoad()
	SetGraphicsSettings()
end

rfg.RegisterEvent("Initialized", Initialized, "Init event")

rfg.RegisterEvent("Load", OnLoad, "Save load event")

rfg.Misc.FxaaEnabled = false