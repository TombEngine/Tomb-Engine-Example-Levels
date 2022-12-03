local Util = require("Util")
Util.ShortenTENCalls()

function InitSentence()
    local Legend = "Cambodia , 1984"
    local text = DisplayString(Legend, (DisplayString.Center),(DisplayString.Center), Color.new(255,255,255),DisplayString.Shadow)
    ShowString(text, 10)
end

LevelFuncs.OnStart = function() 
    InitSentence()
end