-- Test level script file
LevelFuncs.OnLoad = function()
   InitializeModules ()
   end
LevelFuncs.OnSave = function() end
LevelFuncs.OnStart = function ()
    InitializeModules ()
        
    myGuide = GetMoveableByName ("guide")
    end
    
function InitializeModules ()
package.path = package.path .. ";Scripts/Utils/?.lua"
package.path = package.path .. ";Scripts/Customs/?.lua"

--Utils
m_Util = require("Util")
m_Util.ShortenTENCalls()    
m_Guide = require ("obj_Guide")

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