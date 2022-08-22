local Util = require("Util")
local MyLaraInfo = require("larainfo")
Util.ShortenTENCalls()


LevelFuncs.OnLoad = function()    end

 LevelFuncs.OnSave = function() end

 LevelFuncs.OnStart = function () end

 function larainfo()
    local player
    local playerPos
    local playerRot
    local playerCurrentAnim
    local playerRoot
    local playerRoom
 end
 
LevelFuncs.OnControlPhase= function(dt)
    --LaraWorldInfo
        player,
        playerPos,
        playerRot,
        playerCurrentAnim,
        playerRoot,
        playerRoom
        = MyLaraInfo.LaraInfo()
    --Cutscene 1
        --CraneWorker
            CraneWorker = GetMoveableByName("CraneWorker")
            CutsceneStart = GetMoveableByName("Cut1StartPos")
            Cut1StartPos = CutsceneStart:GetPosition()
            Cut1StartRot = CutsceneStart:GetRotation()
            print(Cut1StartPos)
        --Camera
                --shot1init
                    shot1target=GetMoveableByName("Cut1StartPos")
                    shot1targetCheck = shot1target:GetStatus()
                    shot1targetPos = player:GetJointPosition(0)
            -- Shot 1
            if shot1targetCheck == 1 
                then
                    shot1target:SetPosition(shot1targetPos)             
            end
-- Lara Attacking Crane Worker

LevelFuncs.ClawCutStart = function()
    PlayAudioTrack("xa14_joby1", false)
    --debug
        print(playerPos,playerRot,playerCurrentAnim )
        print(CraneWorkerOCB)
    --CutStart
        --LaraAnim
            CutsceneStart:Enable()
            player:SetAnim(565)
            player:SetRoom(105)
            player:SetPosition(Cut1StartPos)
            player:SetRotation(Cut1StartRot)
            shot1target:Enable()
        --CraneWorkerAnim
        CraneWorker:SetAnim(1)
        end
end
