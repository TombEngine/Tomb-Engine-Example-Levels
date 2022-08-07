-- Place in this LUA script all the levels of your game
-- Title is mandatory and must be the first level

local Flow = TEN.Flow
local Level = Flow.Level
local Color = TEN.Color
local Rotation = TEN.Rotation
local InventoryItem = Flow.InventoryItem
local InvID = Flow.InvID
local RotationAxis = Flow.RotationAxis
local ItemAction = Flow.ItemAction
local Fog = Flow.Fog 

-- Title level
	Flow.SetIntroImagePath("Screens\\Main.png")
	Flow.SetTitleScreenImagePath("Screens\\Title.png")
	Flow.SetFarView(40)


		title = Level.new();

		--title.ambientTrack = "104";
		title.levelFile = "Data\\title.ten";
		title.scriptFile = "Scripts\\title.lua";
		title.loadScreenFile = "Screens\\rome.jpg";
		title.fog = Flow.Fog.new(Color.new(5,5,5), 15,20)
		title.horizon=true

Flow.AddLevel(title);
--Settomb Level Block
	settomb = Level.new();

		settomb.nameKey = "settomb";
		settomb.scriptFile = "Scripts\\settomb.lua";
		settomb.ambientTrack = "107";
		settomb.levelFile = "Data\\settomb.ten";
		settomb.loadScreenFile = "Screens\\rome.jpg";
		settomb.horizon = false;
		settomb.farView = 25
		settomb.fog = Flow.Fog.new(Color.new(5,5,5), 15,20)
			settomb.objects = {	
			InventoryItem.new(
				"BaCartouche1", --Name in Strings.lua 
				InvID.PUZZLE_ITEM3_COMBO1, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"BaCartouche2", --Name in Strings.lua 
				InvID.PUZZLE_ITEM3_COMBO2, --Name in Constants.lua
				0, --yOffset (negative values move item up)
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"BaCartouche", --Name in Strings.lua 
				InvID.PUZZLE_ITEM3, --Name in Constants.lua
				0,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"eye1", --Name in Strings.lua 
				InvID.PUZZLE_ITEM1_COMBO1, --Name in Constants.lua
				50,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"eye2", --Name in Strings.lua 
				InvID.PUZZLE_ITEM1_COMBO2, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"eye", --Name in Strings.lua 
				InvID.PUZZLE_ITEM1, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"sands", --Name in Strings.lua 
				InvID.PUZZLE_ITEM2, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"gkey", --Name in Strings.lua 
				InvID.PUZZLE_ITEM7, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"RaCartouche", --Name in Strings.lua 
				InvID.PUZZLE_ITEM4, --Name in Constants.lua
				0,--yOffset
				0.5, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),

		}
Flow.AddLevel(settomb);		
---karnak Level Block
		karnak = Level.new();

		karnak.nameKey = "karnak";
		karnak.scriptFile = "Scripts\\karnak.lua";
		karnak.ambientTrack = "110";
		karnak.levelFile = "Data\\karnak.ten";
		karnak.loadScreenFile = "Screens\\rome.jpg";
		karnak.horizon = true
		karnak.farView = 2010
		karnak.layer1 = Flow.SkyLayer.new(Color.new(128,96,64), 7)
			karnak.objects = {	
			InventoryItem.new(
				"jar1", --Name in Strings.lua 
				InvID.PUZZLE_ITEM2, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"jar2", --Name in Strings.lua 
				InvID.PUZZLE_ITEM3, --Name in Constants.lua
				0, --yOffset (negative values move item up)
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"sunT", --Name in Strings.lua 
				InvID.PUZZLE_ITEM1, --Name in Constants.lua
				0,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"sunD", --Name in Strings.lua 
				InvID.PUZZLE_ITEM1_COMBO1, --Name in Constants.lua
				50,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"sunG", --Name in Strings.lua 
				InvID.PUZZLE_ITEM1_COMBO2, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"vraeus", --Name in Strings.lua 
				InvID.PUZZLE_ITEM5, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"pguard", --Name in Strings.lua 
				InvID.PUZZLE_ITEM7, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"hkey", --Name in Strings.lua 
				InvID.KEY_ITEM2, --Name in Constants.lua
				-50,--yOffset
				0.5, -- Scale
				Rotation.new(90,90, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"horseG", --Name in Strings.lua 
				InvID.PUZZLE_ITEM6, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
		}
Flow.AddLevel(karnak);	
---coastal Level Block
	coastal = Level.new();
	coastal.nameKey = "coastal";
	coastal.scriptFile = "Scripts\\coastal.lua";
	coastal.ambientTrack = "110";
	coastal.levelFile = "Data\\coastal.ten";
	coastal.loadScreenFile = "Screens\\rome.jpg";
	coastal.horizon = true
	coastal.layer1 = Flow.SkyLayer.new(Color.new(128,128,128),-8)
		coastal.objects = {	
		InventoryItem.new(
			"token", --Name in Strings.lua 
			InvID.KEY_ITEM1, --Name in Constants.lua
			-50,--yOffset
			1.5, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"gate1", --Name in Strings.lua 
			InvID.KEY_ITEM10, --Name in Constants.lua
			-50,--yOffset
			1.5, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(coastal);	
---catacomb Level Block
	catacomb = Level.new();

	catacomb.nameKey = "catacombs";
	catacomb.scriptFile = "Scripts\\catacomb.lua";
	catacomb.ambientTrack = "1080";
	catacomb.levelFile = "Data\\catacombs.ten";
	catacomb.loadScreenFile = "Screens\\rome.jpg";
	catacomb.horizon = false
	catacomb.farView = 20
		catacomb.objects = {	
		InventoryItem.new(
			"pguard", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"handle", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5_COMBO1, --Name in Constants.lua
			0, --yOffset (negative values move item up)
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"hath", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5_COMBO2, --Name in Constants.lua
			0,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"star", --Name in Strings.lua 
			InvID.PUZZLE_ITEM3, --Name in Constants.lua
			50,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"horseG", --Name in Strings.lua 
			InvID.PUZZLE_ITEM6, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"pknot", --Name in Strings.lua 
			InvID.PUZZLE_ITEM10, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"ppillar", --Name in Strings.lua 
			InvID.PUZZLE_ITEM11, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetleb", --Name in Strings.lua 
			InvID.PICKUP_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			InvID.PUZZLE_ITEM12, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"token", --Name in Strings.lua 
			InvID.KEY_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"gate1", --Name in Strings.lua 
			InvID.KEY_ITEM10, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"trident", --Name in Strings.lua 
			InvID.PUZZLE_ITEM1, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"music", --Name in Strings.lua 
			InvID.PUZZLE_ITEM2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(catacomb);
-- Level Block
	cleopal = Level.new();

	cleopal.nameKey = "cleopal";
	cleopal.scriptFile = "Scripts\\cleopal.lua";
	cleopal.ambientTrack = "1080";
	cleopal.levelFile = "Data\\cleopal.ten";
	cleopal.loadScreenFile = "Screens\\rome.jpg";
	cleopal.horizon = false
	cleopal.farView = 20
		cleopal.objects = {	
		InventoryItem.new(
			"pguard", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"handle", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5_COMBO1, --Name in Constants.lua
			0, --yOffset (negative values move item up)
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"hath", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5_COMBO2, --Name in Constants.lua
			0,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"specs", --Name in Strings.lua 
			InvID.PICKUP_ITEM2, --Name in Constants.lua
			50,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"horseG", --Name in Strings.lua 
			InvID.PUZZLE_ITEM6, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"pknot", --Name in Strings.lua 
			InvID.PUZZLE_ITEM10, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"ppillar", --Name in Strings.lua 
			InvID.PUZZLE_ITEM11, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetleb", --Name in Strings.lua 
			InvID.PICKUP_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			InvID.PUZZLE_ITEM12, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			InvID.KEY_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			InvID.KEY_ITEM10, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"music", --Name in Strings.lua 
			InvID.PUZZLE_ITEM2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(cleopal);	
---city Level Block
	city = Level.new();
	city.nameKey = "city";
	city.scriptFile = "Scripts\\city.lua";
	city.ambientTrack = "102";
	city.levelFile = "Data\\city.ten";
	city.loadScreenFile = "Screens\\rome.jpg";
	city.horizon = true
	city.layer1 = Flow.SkyLayer.new(Color.new(56,72,8),16)
	city.farView = 20
		city.objects = {	
		InventoryItem.new(
			"nitro1", --Name in Strings.lua 
			InvID.PUZZLE_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"cjack", --Name in Strings.lua 
			InvID.PUZZLE_ITEM2, --Name in Constants.lua
			-25, --yOffset (negative values move item up)
			1, -- Scale
			Rotation.new(0, 0, 90),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"roofK", --Name in Strings.lua 
			InvID.PUZZLE_ITEM4, --Name in Constants.lua
			0,
			1,
			Rotation.new(-45, 180, 90),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"code1", --Name in Strings.lua 
			InvID.PUZZLE_ITEM5, --Name in Constants.lua
			50,
			1,
			Rotation.new(-90, 0, 90),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"mine", --Name in Strings.lua 
			InvID.PUZZLE_ITEM8, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"valve1", --Name in Strings.lua 
			InvID.PUZZLE_ITEM1_COMBO1, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"ppillar", --Name in Strings.lua 
			InvID.PUZZLE_ITEM11, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"nitro2", --Name in Strings.lua 
			InvID.PUZZLE_ITEM1_COMBO2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"cjackb", --Name in Strings.lua 
			InvID.PUZZLE_ITEM2_COMBO1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"chandle", --Name in Strings.lua 
			InvID.PUZZLE_ITEM2_COMBO2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"mine1", --Name in Strings.lua 
			InvID.PUZZLE_ITEM8_COMBO1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"mine2", --Name in Strings.lua 
			InvID.PUZZLE_ITEM8_COMBO2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 90),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(city);	
-----[[]]----angkor Level Block
	--angkor = Level.new();

	--angkor.nameKey = "angkor";
	--angkor.scriptFile = "Scripts\\angkor.lua";
	--angkor.ambientTrack = "110";
	--angkor.levelFile = "Data\\angkor.ten";
	--angkor.loadScreenFile = "Screens\\rome.jpg";
	--angkor.horizon = true
	--angkor.farView = 20
	--angkor.laraType = Young
	--angkor.layer1 = Flow.SkyLayer.new(Color.new(160,160,192),7)
	--angkor.objects = {	
		--InventoryItem.new(
			--"goldskull", --Name in Strings.lua 
			--InvID.PUZZLE_ITEM1, --Name in Constants.lua
			--0,--yOffset
			--1, -- Scale
			--Rotation.new(0, 0, 90),
			--RotationAxis.Y,
			---1,
			--ItemAction.EXAMINE
		--),


	
--Flow.AddLevel(angkor);	
--[[---LDN1 Level Block
	LDN1 = Level.new();

	LDN1.nameKey = "LDN1";
	LDN1.scriptFile = "Scripts\\LDN1.lua";
	--LDN1.ambientTrack = "73_Old_Smokey";
	LDN1.levelFile = "Data\\LDN1.ten";
	LDN1.loadScreenFile = "Screens\\rome.jpg";
	LDN1.horizon = true
	LDN1.layer1 = Flow.SkyLayer.new(Color.new(0,0,0), 7)
	LDN1.weather = 1
	LDN1.weatherStrength = 2
	LDN1.fog = Flow.Fog.new(Color.new(0,0,0), 1,10)
	
Flow.AddLevel(LDN1);	
--]]