local Util = require("Util")
local MyLaraInfo = require("larainfo")
Util.ShortenTENCalls()


LevelFuncs.OnLoad = function()

    end

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
 
 local LaraAnim = {
    Cut1_1 = 565,
    Cut1_2 = 566,
    Cut1_3 = 567,
    Cut1_4 = 568,
    Cut1_5 = 569,
    Cut1_6 = 570,
    Cut1_7 = 571,
   }
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
        --[[CraneWorker
            CraneWorker = GetMoveableByName("CraneWorker")
            CutsceneStart = GetMoveableByName("Cut1StartPos")
            Cut1StartPos = CutsceneStart:GetPosition()
            Cut1StartRot = CutsceneStart:GetRotation()
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

LevelFuncs.Cut1_Start = function()
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
        CraneWorker:SetRotation(Cut1StartRot)
        end
end
]]



LevelFuncs.Cut1_1 = function() 
    local Cut1_StartPos = GetMoveableByName("Cut1_1pos")
    local Cut1_StartPos2 = Cut1_StartPos:GetPosition()
    local Cut1_StartRoom = Cut1_StartPos:GetRoom()
    local Cut1_StartRot = Cut1_StartPos:GetRotation()
        Cut1_StartPos:Enable()

        player:SetPosition(Cut1_StartPos2)
        player:SetAnim(LaraAnim.Cut1_1)
        player:SetRoom(Cut1_StartRoom)
        player:SetRotation(Cut1_StartRot)
end
LevelFuncs.Cut1_2 = function()
    local Cut1_2pos = GetMoveableByName("Cut1_2pos")
    local Cut1_2pos2 = Cut1_2pos:GetPosition()
    local Cut1_2Room = Cut1_2pos:GetRoom()
    local Cut1_2Rot = Cut1_2pos:GetRotation()
    Cut1_2pos:Enable()
   
           player:SetPosition(Cut1_2pos2)
           player:SetAnim(LaraAnim.Cut1_2)
           player:SetRoom(Cut1_2Room)
           player:SetRotation(Cut1_2Rot) 

    end
end
LevelFuncs.Cut1_3 = function()
    local Cut1_3pos = GetMoveableByName("Cut1_3pos")
    Cut1_3pos:Enable() 
end
LevelFuncs.Cut1_4 = function()
    local Cut1_4pos = GetMoveableByName("Cut1_4pos")
    Cut1_4pos:Enable() 
end
LevelFuncs.Cut1_5 = function()
    local Cut1_5pos = GetMoveableByName("Cut1_5pos")
    Cut1_5pos:Enable() 
end
LevelFuncs.Cut1_6 = function()
    local Cut1_6pos = GetMoveableByName("Cut1_6pos")
    Cut1_6pos:Enable() 
end
LevelFuncs.Cut1_7 = function()
    local Cut1_7pos = GetMoveableByName("Cut1_7pos")
    Cut1_7pos:Enable()
end
