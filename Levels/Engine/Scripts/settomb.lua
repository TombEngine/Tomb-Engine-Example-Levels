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

LevelFuncs.OnControlPhase = function() end
LevelFuncs.OnEnd = function() end
