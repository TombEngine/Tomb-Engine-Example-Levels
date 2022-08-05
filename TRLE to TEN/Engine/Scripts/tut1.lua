local Util = require("Util")
Util.ShortenTENCalls()

function InitSentence()
    local Legend1 = "The Year 2022 , Somewhere in Egypt"
    local text = DisplayString(Legend1, (DisplayString.Center),(DisplayString.Center), Color.new(255,255,255),DisplayString.Shadow)
    
    ShowString(text, 10)
end

LevelFuncs.OnStart = function() 
    InitSentence()
end