local Util = require("Util")
Util.ShortenTENCalls()

LevelFuncs.OnControlPhase = function()
--[[    ShivaBossJoints = -- looking at ShivaBoss face on . S=ShivaBoss
       {
       SPelvis = 0,
           SR_Thigh = 1,
               SR_Shin = 2,
                   SR_Foot = 3,
           SL_Thigh= 4,
               SL_Shin = 5,
                   SL_Foot = 6,
       S_Chest = 7,
           SRB_Shoulder= 8,
               SRB_Forearm= 9,
                   SRB_Blade = 10,
           SRM_Shoulder = 11,
               SRM_Forearm = 12,
                   SRM_Blade = 13,
           SRT_Shoulder = 14,
               SRT_Forearm= 15,
                   SRT_Blade = 16,
           SLT_Shoulder = 17,
               SLT_Forearm= 18,
                   SLT_Blade = 19,
           SLM_Shoulder = 20,
               SLM_Forearm = 21,
                   SLM_Blade = 22,
           SLB_Shoulder= 23,
               SLB_Forearm= 24,
                   SLB_Blade = 25,
       SHead=26,
       }
   
    ShivaBossStatueJoints = -- looking at ShivaBoss face on . SS=Shivstatue
           {
           SSPelvis= 0,
               SSR_high = 1,
                   SR_Shin = 2,
                      SSR_Foot = 3,
               SSL_high= 4,
                   SL_Shin = 5,
                      SSL_Foot = 6,
           SS_Chest= 7,
               SSRBShoulder= 8,
                   SRB_Forearm= 9,
                      SSRB_Blade = 10,
               SSRMShoulder = 11,
                   SRM_Forearm = 12,
                      SSRM_Blade = 13,
               SSRTShoulder = 14,
                   SRT_Forearm= 15,
                      SSRT_Blade = 16,
               SSLTShoulder = 17,
                   SLT_Forearm= 18,
                      SSLT_Blade = 19,
               SSLMShoulder = 20,
                   SLM_Forearm = 21,
                      SSLM_Blade = 22,
               SSLBShoulder= 23,
                   SLB_Forearm= 24,
                      SSLB_Blade = 25,
           SSHead=2,
   }
]]
--lara--
local lara = GetMoveableByName("lara")
local laraPos = lara:GetPosition()
local laraRoom = lara:GetRoom()
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
--[[=================Shiva Boss Start========================================
function explode()
    local ShivaBoss = GetMoveableByName("ShivaBoss")
        local ShivaBossPos = ShivaBoss:GetPosition()
        local ShivaBossRoom = ShivaBoss:GetRoom()
        local ShivaBossRot = ShivaBoss:GetRotation()
        ShivaBoss:MakeInvisible()
        local item = Moveable(
            ObjID.SHIVA_STATUE,
            "ShivaStatueEND",
            ShivaBossPos,
            ShivaBossRot,
            ShivaBossRoom,
            1,
            0,
            0,
            0,
            {0,0,0,0,0,0}
        )
        local ShivaStatue2 = GetMoveableByName("ShivaStatueEND")
        ShivaStatue2:Enable()
    --ShivaBoss:GetObjectID()
    --ShivaBoss:SetObjectID(245)
    end

LevelFuncs.Shiva = function()
        --Shiva Editor References
            local ShivaStatue = GetMoveableByName("ShivaStatue")
                local ShivaStatueStatus =ShivaStatue:GetStatus()
                local ShivaStatuePos= ShivaStatue:GetPosition()
                ShivaStatue:GetRoom()
                ShivaStatue:GetAnim()
            local ShivaBoss = GetMoveableByName("ShivaBoss")
            local ShivaStatus = ShivaBoss:GetActive()
            local ShivaBossStatus = ShivaBoss:GetStatus()

        --ShivaEffects If Shiva is alive, Statue and lights are off / Shiva is not 
            if ShivaBossStatus == (3) then
                local ShivaSmokeStartColor=Color(209,106,16,0)
                local randomsmokeend = math.random(0,50)
                local ShivaSmokeEndColor=Color(randomsmokeend,randomsmokeend,randomsmokeend,0)
                AddParticle(
                            2,
                            ShivaStatuePos,
                            Vec3(-10,0,0),
                            1,
                            0,
                            ShivaSmokeStartColor,
                            ShivaSmokeEndColor,
                            2,
                            math.random(40,100),
                            math.random(200,1000),
                            math.random(30,100),false,false)
                            --ShivaStatueSmoke: forward
                AddParticle(
                    2,
                    ShivaStatuePos,
                    Vec3(0,-100,0),
                    1,
                    0,
                    ShivaSmokeStartColor,
                    ShivaSmokeEndColor,
                    2,
                    math.random(1,255),
                    math.random(200,1000),
                    math.random(30,100),false,false)
                AddLight(
                    (ShivaStatuePos),
                    Color(209,106,16),
                    15)
            end
            if ShivaBossStatus ==(1) then
                ShivaStatue:MakeInvisible()
            end
            if ShivaBossStatus == (2) then
                explode()
            end
            
    --LevelFuncs.ShivaStatueExplode = function() --may not be required? 
        local ShivaStatue = GetMoveableByName("ShivaStatue")
        local ShivaSmokeStartColor=Color(209,106,16,0)
        local ShivaStatue = GetMoveableByName("ShivaStatue")
        local ShivaBoss = GetMoveableByName("ShivaBoss")
                local ShivaBossPos = ShivaBoss:GetPosition()
                local ShivaBossStatus = ShivaBoss:GetStatus()
                local ShivaBossActive = ShivaBoss:GetActive()
        print(ShivaBossStatus)
        if ShivaBossActive == true --1=Alive, 2= Dead, 3=Untriggered.
        then
            ShivaBoss:Enable()
            ShivaStatue:MakeInvisible()
                AddExplosion(ShivaBossPos,2000,true)
                PlaySound(106,ShivaBossPos)
                PlaySound(784,ShivaBossPos)
        else if ShivaBossActive == false
        then
            return
        end
        
    end--]]
function InitClaw2local()
    
    local Claw=GetMoveableByName("claw")
        local ClawOn=Claw:GetStatus()
        local ClawPos = Claw:GetPosition()
    local ClawTop = GetMoveableByName("claw_top")
        local ClawTopOn=ClawTop:GetStatus()
        local ClawTopPos = ClawTop:GetPosition()
    local ClawChain = GetMoveableByName("claw_chain")
        local ClawChainOn=ClawChain:GetStatus()
        local ClawChainPos = ClawChain:GetPosition()
    local ClawFloorTarget = GetMoveableByName("ClawFloorTarget")
        local ClawFloorTargetPos = ClawFloorTarget:GetPosition()
    --lighting
        local clawoncolor = Color(255,0,0)
        if ClawOn == 1 
        then 
        Effects.EmitLight(ClawPos,clawoncolor,1000)
end
end
LevelFuncs.InitClaw = function()
    InitClaw2local()
    end



LevelFuncs.ClawMovement = function()
    --InitClaw2local()
end

LevelFuncs.ClawStop = function()
---=================Shiva Boss End=====================

--==================Elevator==================

    LevelFuncs.Lift = function()
        local lara = GetMoveableByName("lara")
        local laraPos = lara:GetPosition()
        local laraRoom = lara:GetRoom()
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
end
end