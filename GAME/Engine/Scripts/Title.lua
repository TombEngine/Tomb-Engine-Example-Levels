-- Title script file
LevelFuncs.OnLoad = function() end
LevelFuncs.OnSave = function() end
LevelFuncs.OnStart = function() end
LevelFuncs.OnControlPhase = function() end
LevelFuncs.OnEnd = function() end

LevelFuncs.bridge = function()
    
		local cutPos = GetMoveableByName("cutLaraStart"):GetPosition()
		cutPos:print()
		Lara:SetPosition(cutPos)
		Lara:SetAnim(565)
		Lara:SetState(89)

	end


