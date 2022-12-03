-- Title level
	Flow.SetIntroImagePath("Screens\\Main.png")
	Flow.SetTitleScreenImagePath("Screens\\Main.png")
	Flow.EnableMassPickup(true)

--Title Level Block
		title = Level.new();

		--title.ambientTrack = "104";
		title.levelFile = "Data\\title.ten" ;
		title.scriptFile = "Scripts\\title.lua" ;
		title.loadScreenFile = "Screens\\title.png" ;
		title.fog = Flow.Fog.new(Color.new (0,0,0), 15,20)
		title.horizon=true

		Flow.AddLevel(title) ;
		
--Settomb Level Block
	settomb = Level.new();

		settomb.nameKey = "settomb";
		settomb.scriptFile = "Scripts\\settomb.lua";
		settomb.ambientTrack = "107";
		settomb.levelFile = "Data\\settomb.ten";
		settomb.loadScreenFile = "Screens\\settomb.png";
		settomb.horizon = false;
		settomb.farView = 20
		settomb.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
		settomb.objects = {	
			InventoryItem.new( "eye", ObjID.PUZZLE_ITEM1, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),			
				InventoryItem.new( "eye1", ObjID.PUZZLE_ITEM1_COMBO1, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE	),
				InventoryItem.new( "eye2", ObjID.PUZZLE_ITEM1_COMBO2, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE	),
			InventoryItem.new( "sands", ObjID.PUZZLE_ITEM2, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),

						}
						
	Flow.AddLevel(settomb);	

-- karnak Level Block

	karnak = Level.new();	
	karnak.nameKey = "karnak";
	karnak.scriptFile = "Scripts\\karnak.lua";
	karnak.ambientTrack = "110";
	karnak.levelFile = "Data\\karnak.ten";
	karnak.loadScreenFile = "Screens\\karnak.png";
	karnak.horizon = true
	karnak.farView = 20
	karnak.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	karnak.layer1 = Flow.SkyLayer.new(Color.new(128,96,64), 7)
	karnak.objects = {	
		
			InventoryItem.new( "sunT", ObjID.PUZZLE_ITEM1, 0, 1, Rotation.new (0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
				InventoryItem.new( "sunD", ObjID.PUZZLE_ITEM1_COMBO1, 50, 1, Rotation.new (0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),
				InventoryItem.new( "sunG", ObjID.PUZZLE_ITEM1_COMBO2, 50, 0.5, Rotation.new (0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),
			InventoryItem.new( "jar1", ObjID.PUZZLE_ITEM2, 0, 1, Rotation.new (0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "jar2", ObjID.PUZZLE_ITEM3, 0, 1, Rotation.new (0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "vraeus", ObjID.PUZZLE_ITEM5, 50,	0.5, Rotation.new (0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),
			InventoryItem.new( "horseG", ObjID.PUZZLE_ITEM6, 50, 0.5, Rotation.new (0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),
			InventoryItem.new( "pguard", ObjID.PUZZLE_ITEM7, 0, 1, Rotation.new (0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "hkey", ObjID.KEY_ITEM2, -50, 0.5, Rotation.new (90,90, 0), RotationAxis.Y, -1, ItemAction.USE ),
				
						}
				
	Flow.AddLevel(karnak);
	
-- coastal Level Block

	coastal = Level.new();
	coastal.nameKey = "coastal";
	coastal.scriptFile = "Scripts\\coastal.lua";
	coastal.ambientTrack = "110";
	coastal.levelFile = "Data\\coastal.ten";
	coastal.loadScreenFile = "Screens\\coastal.png";
	coastal.horizon = true
	coastal.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	coastal.layer1 = Flow.SkyLayer.new(Color.new(128,128,128),-8)
	coastal.objects = {	
	
			InventoryItem.new( "token", ObjID.KEY_ITEM1, -50, 1.5, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "gate1", ObjID.KEY_ITEM10, -50, 1.5, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			
						}
					
	Flow.AddLevel(coastal);	
	
---catacomb Level Block

	catacomb = Level.new();

	catacomb.nameKey = "catacombs";
	catacomb.scriptFile = "Scripts\\catacomb.lua";
	catacomb.ambientTrack = "108";
	catacomb.levelFile = "Data\\catacombs.ten";
	catacomb.loadScreenFile = "Screens\\catacombs.png";
	catacomb.horizon = false
	catacomb.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	catacomb.farView = 20
	catacomb.objects = {

			InventoryItem.new( "trident", ObjID.PUZZLE_ITEM1, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),

						}
						
	Flow.AddLevel(catacomb);
	
-- Cleopatra's Palace Level Block

	cleopal = Level.new();

	cleopal.nameKey = "cleopal";
	cleopal.scriptFile = "Scripts\\cleopal.lua";
	cleopal.ambientTrack = "1080";
	cleopal.levelFile = "Data\\cleopal.ten";
	cleopal.loadScreenFile = "Screens\\cleopal.png";
	cleopal.horizon = false
	cleopal.farView = 20
	cleopal.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	cleopal.objects = {	
	
		InventoryItem.new( "beetleb", ObjID.PICKUP_ITEM1, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		
		InventoryItem.new( "pguard", ObjID.PUZZLE_ITEM5, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "handle", ObjID.PUZZLE_ITEM5_COMBO1, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "hath", ObjID.PUZZLE_ITEM5_COMBO2, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "pknot", ObjID.PUZZLE_ITEM10, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),
		InventoryItem.new( "ppillar", ObjID.PUZZLE_ITEM11, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "beetle", ObjID.PUZZLE_ITEM12, 0, 1,	Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "beetle", ObjID.KEY_ITEM1, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "beetle", ObjID.KEY_ITEM10, 0, 1, Rotation.new(0, 0, 0),	RotationAxis.Y, -1, ItemAction.USE ),

						}
						
	Flow.AddLevel(cleopal);	
	
---city Level Block

	city = Level.new();
	city.nameKey = "city";
	city.scriptFile = "Scripts\\city.lua";
	city.ambientTrack = "102";
	city.levelFile = "Data\\city.ten";
	city.loadScreenFile = "Screens\\city.png";
	city.horizon = true
	city.layer1 = Flow.SkyLayer.new(Color.new(56,72,8),16)
	city.farView = 20
	city.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	city.objects = {	
	
		InventoryItem.new( "nitro1", ObjID.PUZZLE_ITEM1, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "valve1", ObjID.PUZZLE_ITEM1_COMBO1, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),		
			InventoryItem.new( "nitro2", ObjID.PUZZLE_ITEM1_COMBO2, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "cjack", ObjID.PUZZLE_ITEM2, -25, 1, Rotation.new(0, 0, 90), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "cjackb", ObjID.PUZZLE_ITEM2_COMBO1, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "chandle", ObjID.PUZZLE_ITEM2_COMBO2, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "roofK", ObjID.PUZZLE_ITEM4, 0, 1, Rotation.new(-45, 180, 90), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "code1", ObjID.PUZZLE_ITEM5, 50, 1, Rotation.new(-90, 0, 90), RotationAxis.Y, 2, ItemAction.USE ),
		InventoryItem.new( "mine", ObjID.PUZZLE_ITEM8, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),
			InventoryItem.new( "mine1", ObjID.PUZZLE_ITEM8_COMBO1, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
			InventoryItem.new( "mine2", ObjID.PUZZLE_ITEM8_COMBO2, 0, 1, Rotation.new(0, 0, 90), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "ppillar", ObjID.PUZZLE_ITEM11, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1,	ItemAction.USE ),

					}
	
	Flow.AddLevel(city);	

-- Guardian of Semerkhet level block 

	guard = Level.new()
	
	guard.nameKey = "guard"
	guard.scriptFile = "Scripts\\guard.lua"
	guard.ambientTrack = "107"
	guard.horizon = false
	guard.levelFile = "Data\\guard.ten"
	guard.loadScreenFile = "Screens\\rome.jpg"

	Flow.AddLevel(guard);

-- The Lost Library level block

	library = Level.new()

	library.nameKey = "library"
	library.scriptFile = "Scripts\\library.lua"
	library.ambientTrack = "108"
	library.horizon = false
	library.levelFile = "Data\\library.ten"
	library.loadScreenFile = "Screens\\rome.jpg"
	library.fog = Flow.Fog.new(Color.new(30,0,0),5,20)
	library.objects = {	
	
		InventoryItem.new( "music", ObjID.PUZZLE_ITEM2, 0, 1, Rotation.new(0, 0, 0), RotationAxis.Y, -1, ItemAction.USE ),
		InventoryItem.new( "horseG", ObjID.PUZZLE_ITEM6, 50, 0.5, Rotation.new(0, 0, 0), RotationAxis.Y, 2, ItemAction.USE ),

						}

	Flow.AddLevel(library)
