-- Test level script file
LevelFuncs.OnLoad = function()
   end
LevelFuncs.OnSave = function() end
LevelFuncs.OnStart = function ()
        
    myGuide = GetMoveableByName ("guide")
    
function InitializeModules ()
package.path = package.path .. ";Scripts/Utils/?.lua"
package.path = package.path .. ";Scripts/Customs/?.lua"

--Utils
m_Util = require("Util")
m_Util.ShortenTENCalls()    
m_Guide = require ("obj_Guide")

end
local obj_Guide = {}

-- FUNCTIONS IN THIS MODULE
-------------------------------------------------------------------------
-- Test_Text()
-- GoToNode(moveableObject, nodeId)
-- GoDirectlyToNode(moveableObject, nodeId)
-- GoNextNode(moveableObject)
-- Flag_NewBehaviour(moveableObject, isNewBehaviour)
-- Flag_WaitForLara(moveableObject, isWaitingForLara)
-- Flag_RunDefault(moveableObject, isRunDefault)
-- Flag_ScaryAction(moveableObject, isScaryAction = true)

-------------------------------------------------------------------------

-- ITEMFLAGS GUIDE
-------------------------------------------------------------------------
-- [0] unused
-- [1] Torch status: (0) Look for torch, (1) Switch on torch, (2) Posees a torch so it behaves normally.
-- [2] Flags: (0) NewBehaviour, (1) IgnoreLaraDistance, (2) RunDefault, (3) RetryNodeSearch, (4) ScaryInscription
-- [3] Current Node
-- [4] Goal Node
-- [5] unused
-- [6] unused
-- [7] unused

-------------------------------------------------------------------------


function obj_Guide.Test_Text()
    local TextTimerEnd = "Text from GUIDE module"
    local text = DisplayString(TextTimerEnd, 100, 200, Color.new(250,250,250))
    ShowString(text, 5)
end

--Make the guide moves through its AI_Follow path till the indicated value.
function obj_Guide.GoToNode(moveableObject, nodeId)
    obj_Guide.Flag_NewBehaviour(moveableObject, true)

	if (nodeId <= moveableObject:GetItemFlags (4)) then
	
        moveableObject:SetItemFlags (nodeId, 3)
        local flagResult = moveableObject:GetItemFlags(2) | (1 << 3) -- turn on bit 3 for flag_RetryNodeSearch
        moveableObject:SetItemFlags( flagResult, 2 )
    end
    moveableObject:SetItemFlags (nodeId, 4)
end

-- Make the guide moves directly to the indicated AI_Follow object, ignoring the other nodes in the way.
function obj_Guide.GoDirectlyToNode(moveableObject, nodeId)
    obj_Guide.Flag_NewBehaviour(moveableObject, true)
    moveableObject:SetItemFlags (nodeId, 3)
    local flagResult = moveableObject:GetItemFlags(2) | (1 << 3) -- turn on bit 3 for flag_RetryNodeSearch
    moveableObject:SetItemFlags( flagResult, 2 )
    moveableObject:SetItemFlags (nodeId, 4)
   
end

-- Make the actor moves to the AI_Follow object with the next ocb value
function obj_Guide.GoNextNode(moveableObject)
    obj_Guide.Flag_NewBehaviour(moveableObject, true)
    local nextNode = moveableObject:GetItemFlags (4) + 1
    moveableObject:SetItemFlags (nextNode, 4)
end

-- Make the guide follow his own path goal, instead of follow the communal path moved with flipeffect 30. Set to false to reactivate classic behaviour.
function obj_Guide.Flag_NewBehaviour(moveableObject, isNewBehaviour)
    local flagResult = 0
    if (isNewBehaviour == true) then
        flagResult = moveableObject:GetItemFlags(2) | (1 << 0) -- turn on bit 0 for flag_NewBehaviour
    else
        flagResult = moveableObject:GetItemFlags(2) & ~(1 << 0) -- turn off bit 0 for flag_NewBehaviour
    end
    moveableObject:SetItemFlags( flagResult, 2 )
end

--  Make the guide to wait for Lara to be near before to activate a heavy trigger action.
function obj_Guide.Flag_WaitForLara(moveableObject, isWaitingForLara)
    local flagResult = 0
    if (isWaitingForLara == true) then
        flagResult = moveableObject:GetItemFlags(2) & ~(1 << 1) -- turn off bit 1 for flag_IgnoreLaraDistance
    else
        flagResult = moveableObject:GetItemFlags(2) | (1 << 1) -- turn on bit 1 for flag_IgnoreLaraDistance
    end
    moveableObject:SetItemFlags( flagResult, 2 )   
end

--  Make the guide to run instead of walk.
function obj_Guide.Flag_RunDefault(moveableObject, isRunDefault)
    local flagResult = 0
    if (isRunDefault == true) then
        flagResult = moveableObject:GetItemFlags(2) | (1 << 2) -- turn on bit 2 for flag_RunDefault
    else
        flagResult = moveableObject:GetItemFlags(2) & ~(1 << 2) -- turn off bit 2 for flag_RunDefault
    end
    moveableObject:SetItemFlags( flagResult, 2 )   
end

--  The next time the guide reads an inscription, it will activate his scared routine.
function obj_Guide.Flag_ScaryAction(moveableObject, isScaryAction)
    local inputFlag = isScaryAction or true
    local flagResult = 0
    if (inputFlag == true) then
        flagResult = moveableObject:GetItemFlags(2) | (1 << 4) -- turn on bit 4 for flag_ScaryInscription
    else
        flagResult = moveableObject:GetItemFlags(2) & ~(1 << 4) -- turn off bit 4 for flag_ScaryInscription
    end
    moveableObject:SetItemFlags( flagResult, 2 )    
end

LevelFuncs.ScareGuide = function(Triggerer, Arg)
    m_Guide.Flag_ScaryAction(myGuide)
end
	function ShowAmmoCounter()
		    local holdWeapon = Lara:GetHandStatus()
		    
		    local ammoMessage = DisplayString("Ammo: " .. Lara:GetAmmoCount(), 100, 300, Color(0,255,128))
		
		    if (Lara:GetAmmoCount() == -1) then
		        unlimited = true
		    else
		        unlimited = false
		    end
		
		    if not unlimited then
		        if holdWeapon == 4 then
		            ShowString(ammoMessage)
		        else
		            HideString(ammoMessage)
		        end
		    end
		end
LevelFuncs.OnControlPhase = function()

end

return obj_Guide
end