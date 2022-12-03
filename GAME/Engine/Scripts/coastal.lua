-- Test level script file
LevelFuncs.OnLoad = function() end
LevelFuncs.OnSave = function() end
LevelFuncs.OnControlPhase = function()

    local BlinkingLight1 = GetMoveableByName("bl1")
local BlinkingLight1Status=BlinkingLight1:GetStatus()
    if BlinkingLight1Status ==math.random(0,1) then
        local BlinkingLightPos = BlinkingLight1:GetPosition()
        local BlinkingLightColor = Color(math.random(155,255),math.random(75,150), 0)
        TEN.Effects.EmitLight(BlinkingLightPos, BlinkingLightColor, math.random(3,4))
        TEN.Misc.PlaySound(1001,BlinkingLightPos)
    end

    local BlinkingLight2 = GetMoveableByName("bl2")
local BlinkingLight2Status = BlinkingLight2:GetStatus()
if BlinkingLight2Status == math.random(0, 1) then
    local BlinkingLightPos = BlinkingLight2:GetPosition()
    local BlinkingLightColor = Color(math.random(155, 255), math.random(75, 150), 0)

    TEN.Effects.EmitLight(BlinkingLightPos, BlinkingLightColor, math.random(3, 4))
end

local BlinkingLight3 = GetMoveableByName("bl3")
local BlinkingLight3Status = BlinkingLight3:GetStatus()
if BlinkingLight3Status == math.random(0, 1) then
    local BlinkingLight3Pos = BlinkingLight3:GetPosition()
    local BlinkingLight3Color = Color(math.random(155, 255), math.random(75, 150), 0)

    TEN.Effects.EmitLight(BlinkingLight3Pos, BlinkingLight3Color, math.random(3, 4))
    TEN.Misc.PlaySound(1001, BlinkingLight3Pos)

end

local BlinkingLight4 = GetMoveableByName("bl4")
local BlinkingLight4Status = BlinkingLight4:GetStatus()
if BlinkingLight4Status == 1 then
    local BlinkingLight4Pos = BlinkingLight4:GetPosition()
    local BlinkingLight4Color = Color(math.random(155, 255), math.random(75, 150), 0)

    TEN.Effects.EmitLight(BlinkingLight4Pos, BlinkingLight4Color, math.random(3, 4))
    TEN.Misc.PlaySound(1001, BlinkingLight4Pos)

end

local BlinkingLight5 = GetMoveableByName("bl5")
local BlinkingLight5Status = BlinkingLight5:GetStatus()
if BlinkingLight5Status == math.random(0, 1) then
    local BlinkingLight5Pos = BlinkingLight5:GetPosition()
    local BlinkingLight5Color = Color(math.random(155, 255), math.random(75, 150), 0)

    TEN.Effects.EmitLight(BlinkingLight5Pos, BlinkingLight5Color, math.random(3, 4))
    TEN.Misc.PlaySound(1001, BlinkingLight5Pos)

end

local BlinkingLight6 = GetMoveableByName("bl6")
local BlinkingLight6Status = BlinkingLight6:GetStatus()
if BlinkingLight6Status == math.random(0, 1) then
    local BlinkingLight6Pos = BlinkingLight6:GetPosition()
    local BlinkingLight6Color = Color(math.random(155, 255), math.random(75, 150), 0)

    TEN.Effects.EmitLight(BlinkingLight6Pos, BlinkingLight6Color, math.random(3, 4))
    TEN.Misc.PlaySound(1001, BlinkingLight6Pos)

end

local BlinkingLight7 = GetMoveableByName("bl7")
local BlinkingLight7Status = BlinkingLight7:GetStatus()
if BlinkingLight7Status == math.random(0, 1) then
    local BlinkingLight7Pos = BlinkingLight7:GetPosition()
    local BlinkingLight7Color = Color(math.random(155, 255), math.random(75, 150), 0)

    TEN.Effects.EmitLight(BlinkingLight7Pos, BlinkingLight7Color, math.random(3, 4))
    TEN.Misc.PlaySound(1001, BlinkingLight7Pos)

end



end
LevelFuncs.OnEnd = function() end

LevelFuncs.OnStart = function()

end

