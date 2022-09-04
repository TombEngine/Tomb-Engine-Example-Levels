local Util = require("Util")
Util.ShortenTENCalls()
--require("LDN1_Flipeffects")
--require("LaraJointNumbers")
LaraJoint = 
{
    Pelvis=0,
    R_Thigh=1,
    R_Shin=2,
    R_Foot=3,
    L_Thigh=4,
    L_Shin=5,
    L_Foot=6,
    Chest=7,
    R_Shoulder=8,
    R_Forearm=9,
    R_Hand=10,
    L_Shoulder=11,
    L_Forearm=12,
    L_Hand=13,
    Head=14,
}
-- Test level script file
LevelFuncs.OnLoad = function() end
LevelFuncs.OnSave = function() end
LevelFuncs.OnStart = function()
    lara = GetMoveableByName("lara")
    lara:SetAnim(565)
end

LevelFuncs.OnControlPhase =function()
    larajointpos= lara:GetJointPosition(LaraJoint.Chest)
    laralefthand= lara:GetJointPosition(LaraJoint.L_Hand)
    lararighthand= lara:GetJointPosition(LaraJoint.R_Hand)
    laraLfoot = lara:GetJointPosition(LaraJoint.L_Foot)
    laraRfoot = lara:GetJointPosition(LaraJoint.R_Foot)
    laracam1= GetMoveableByName("camtarget1")
    laracam1:SetPosition(larajointpos)
    laracam1:Enable()
    laraanimframe = lara:GetFrame() 
    laraanim = lara:GetAnim()
    local gunflash = Color(255,255,255)

           --SFX Shot 1
        --Lara's Guns
            if laraanimframe == 72 and laraanim == (565)
             then
            PlaySound(8, laralefthand)
                PlaySound(144, laralefthand)
             end
            if laraanimframe == 81  and laraanim == (565)then
                PlaySound(8, laralefthand)
                PlaySound(144, laralefthand)
            end
            if laraanimframe == 97  and laraanim == (565) then
                PlaySound(8, laralefthand)
                PlaySound(144, laralefthand)
            end
            if laraanimframe == 98  and laraanim == (565)then
                PlaySound(8, laralefthand)
                PlaySound(144, laralefthand)
            end
        --holsters
            if laraanimframe == 56  and laraanim == (565)then
                PlaySound(6, laralefthand)
            end
        --larafeet
    if laraanimframe == 6  and laraanim == (565)then
        PlaySound(0, laraRfoot)
    end
    if laraanimframe == 20  and laraanim == (565)then
        PlaySound(6, laraLfoot)
    end
    if laraanimframe == 28  and laraanim == (565)then
        PlaySound(0, laraRfoot) end
    if laraanimframe == 41  and laraanim == (565)then
        PlaySound(0, laraLfoot)end
    end

                            
