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

    function cut1_1()
    local Cut1_StartPos = GetMoveableByName("Cut1_1pos")
    local Cut1_StartPos2 = Cut1_StartPos:GetPosition()
    local Cut1_StartRoom = Cut1_StartPos:GetRoom()
    local Cut1_StartRot = Cut1_StartPos:GetRotation()
        player:SetPosition(Cut1_StartPos2)
        player:SetAnim(LaraAnim.Cut1_1)
        player:SetRoom(Cut1_StartRoom)
        player:SetRotation(Cut1_StartRot)
    end

function cut1_2()
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

function cut1_3()
    local Cut1_3pos = GetMoveableByName("Cut1_3pos")
    local Cut1_3pos2 = Cut1_3pos:GetPosition()
    local Cut1_3Room = Cut1_3pos:GetRoom()
    local Cut1_3Rot = Cut1_3pos:GetRotation()
        Cut1_3pos:Enable()   
            player:SetPosition(Cut1_3pos2)
            player:SetAnim(LaraAnim.Cut1_3)
            player:SetRoom(Cut1_3Room)
            player:SetRotation(Cut1_3Rot)
end

function cut1_4()
    local Cut1_4pos = GetMoveableByName("Cut1_4pos")
    local Cut1_4pos2 = Cut1_4pos:GetPosition()
    local Cut1_4Room = Cut1_4pos:GetRoom()
    local Cut1_4Rot = Cut1_4pos:GetRotation()
        Cut1_4pos:Enable()
            player:SetPosition(Cut1_4pos2)
            player:SetAnim(LaraAnim.Cut1_4)
            player:SetRoom(Cut1_4Room)
            player:SetRotation(Cut1_4Rot)
end

function cut1_5()
    local Cut1_5pos = GetMoveableByName("Cut1_5pos")
    local Cut1_5pos2 = Cut1_5pos:GetPosition()
    local Cut1_5Room = Cut1_5pos:GetRoom()
    local Cut1_5Rot = Cut1_5pos:GetRotation()
        Cut1_5pos:Enable()   
            player:SetPosition(Cut1_5pos2)
            player:SetAnim(LaraAnim.Cut1_5)
            player:SetRoom(Cut1_5Room)
            player:SetRotation(Cut1_5Rot)
end

function cut1_6()
    local Cut1_6pos = GetMoveableByName("Cut1_6pos")
    local Cut1_6pos2 = Cut1_6pos:GetPosition()
    local Cut1_6Room = Cut1_6pos:GetRoom()
    local Cut1_6Rot = Cut1_6pos:GetRotation()
        Cut1_6pos:Enable()   
            player:SetPosition(Cut1_6pos2)
            player:SetAnim(LaraAnim.Cut1_6)
            player:SetRoom(Cut1_6Room)
            player:SetRotation(Cut1_6Rot)
end

function cut1_7()
    local Cut1_7pos = GetMoveableByName("Cut1_7pos")
    local Cut1_7pos2 = Cut1_7pos:GetPosition()
    local Cut1_7Room = Cut1_7pos:GetRoom()
    local Cut1_7Rot = Cut1_7pos:GetRotation()
        Cut1_7pos:Enable()   
            player:SetPosition(Cut1_7pos2)
            player:SetAnim(LaraAnim.Cut1_7)
            player:SetRoom(Cut1_7Room)
            player:SetRotation(Cut1_7Rot)
end
    --Cutscene 1

    LevelFuncs.Cut1Init = function()
        --CraneWorker
        CraneWorker = GetMoveableByName("CraneWorker")
        CraneWorkerAnim = CraneWorker:GetAnim()
        CraneWorker:SetAnim(1)
        FadeIn(2)
end

LevelFuncs.Cut1Anims =function()
local CraneWorkerAnimFrame = CraneWorker:GetFrame()
--Lara Animation Switch Depending On CraneWorker Anim Frame...
    if CraneWorkerAnimFrame == 1
        then
        cut1_1()
        PlayAudioTrack("xa14_joby1",false)
        end
    if CraneWorkerAnimFrame == 120 
        then
            cut1_2()                        
                    end
    end
    if playerCurrentAnim == LaraAnim.Cut1_4 then
        cut1_4()
    elseif playerCurrentAnim ==LaraAnim.Cut1_5 then
        cut1_5()
    elseif playerCurrentAnim ==LaraAnim.Cut1_6 then
        cut1_6()
    elseif playerCurrentAnim ==LaraAnim.Cut1_7 then
        cut1_7()    
    end
end

LevelFuncs.Movenull = function()
    local Cut1_2pos = GetMoveableByName("Cut1_2pos")
        local Cut1_2pos2 = Cut1_2pos:GetPosition()
        local Cut1_2Room = Cut1_2pos:GetRoom()
        local Cut1_2Rot = Cut1_2pos:GetRotation()
    local Cut1_4pos = GetMoveableByName("Cut1_4pos")
        local Cut1_4pos2 = Cut1_4pos:GetPosition()
        local Cut1_4Room = Cut1_4pos:GetRoom()
        local Cut1_4Rot = Cut1_4pos:GetRotation()
    Cut1_4pos:SetPosition(Cut1_2pos2)
        Cut1_4pos:SetRoom(Cut1_2Room)
        Cut1_4pos:SetRotation(Cut1_2Rot)
        Cut1_4pos:Enable()

end
