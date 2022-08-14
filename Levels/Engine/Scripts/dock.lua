local Util = require("Util")
Util.ShortenTENCalls()

LevelFuncs.OnControlPhase = function()

--lara--
lara = GetMoveableByName("lara")
laraPos = lara:GetPosition()
laraRoom = lara:GetRoom()
laraCurrentAnim = lara:GetAnim()


function ElevatorDefinitions()--Doors--
    --Ground Floor
        local LiftDoor_0_L = GetMoveableByName("LiftDoor_0_L")
            local LiftDoor_0_L_Check = LiftDoor_0_L: GetStatus()
        local LiftDoor_0_R = GetMoveableByName("LiftDoor_0_R")
            local LiftDoor_0_R_Check = LiftDoor_0_R: GetStatus()
    --1st Floor
        local LiftDoor_1_L = GetMoveableByName("LiftDoor_1_L")
            local LiftDoor_1_LCheck = LiftDoor_1_L: GetStatus()
        local LiftDoor_1_R = GetMoveableByName("LiftDoor_1_R")
            local LiftDoor_1_RCheck = LiftDoor_1_R: GetStatus()
    --Pushable Table --
    local Table1 = GetMoveableByName("Table1")
    local Table1Pos = Table1:GetPosition()
    local Table1Room = Table1:GetRoom()
    --Lift--
    local LiftGF = 51
    local Lift1F = 53
    --Logic--

    if 
    laraRoom == LiftGF and laraPos
        then
            LiftDoor_0_L:SetStatus(0)
            LiftDoor_1_L:SetStatus(0)
            LiftDoor_0_R:SetStatus(0)
            LiftDoor_1_R:SetStatus(0)
            lara.y = laraPos.y
            lara:GetPosition()
            lara:SetPosition(lara.y + 3072)
            lara:GetRoom()
            lara:SetRoom(53)
            Table1: SetRoom (Lift1F)
            Table1.y= Table1Pos.y
            Table1:SetPosition(Table1.y + 3072)
    end
end

LevelFuncs.Cut1 = function()
    local laraextraanim = Moveable(ObjID.LARA_EXTRA_ANIMS, "extraanim", Vec3(0,0,0), Rotation(0,0,0), 0,0,0,0,0,{0,0,0,0,0,0})
    local laraCutAnim = laraextraanim:GetAnim(16)
    local laraCutinit = lara:SetAnim(laraCutAnim)
end

function InitClaw2local()
    
     Claw=GetMoveableByName("claw")
         ClawOn=Claw:GetStatus()
         ClawPos = Claw:GetPosition()
     ClawTop = GetMoveableByName("claw_top")
         ClawTopOn=ClawTop:GetStatus()
         ClawTopPos = ClawTop:GetPosition()
     ClawChain = GetMoveableByName("claw_chain")
         ClawChainOn=ClawChain:GetStatus()
         ClawChainPos = ClawChain:GetPosition()
     ClawFloorTarget = GetMoveableByName("ClawFloorTarget")
         ClawFloorTargetPos = ClawFloorTarget:GetPosition()
        
    --lighting
        LightRandomness = math.random(1,4)
    --Logic
        local clawoncolor = Color(255,0,0)
        if ClawOn == 1 
        then 
        Effects.EmitLight(ClawPos,clawoncolor,LightRandomness)
        end
    end

LevelFuncs.Cut1Start = function()

    local CraneMan = GetMoveableByName("CraneWorker")
    CraneMan:SetAnim(1)
    local CutsceneStartPoint= GetMoveableByName("CutSceneStart")
    CutsceneStartPoint:Enable()
    local CutsceneStartPos = CutsceneStartPoint:GetPosition()
    local CutsceneStartrot = CutsceneStartPoint:GetRotation()
    local CutsceneStartRoom = CutsceneStartPoint:GetRoom()

        lara:SetPosition(CutsceneStartPos)
        lara:SetRoom(105)
        lara:SetRotation(CutsceneStartrot)
        lara:SetAnim(565)
    lara:SetState(89)
    PlayAudioTrack("xa14_joby1", false)

    --CraneMan:Enable()
end
LevelFuncs.Cut1Cam =function()
    local lararoot = lara:GetJointPosition(0)
    local lararootroom = lara:GetRoom()
    --local CamTarget = GetMoveableByName("cam_target")
    --local CamTargetPos = CamTarget:SetPosition(lararoot)
    --CamTarget:Enable()
    --CamTarget:SetRoom(lararootroom)
end
end 
