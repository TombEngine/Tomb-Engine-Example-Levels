--Helper Script to Get Lara's Info WIP

local LaraInfoTable = { 
    LaraInfo = function()
        local player = GetMoveableByName("lara");
        local playerPos = player:GetPosition();
        local playerRot = player:GetRotation();
        local playerCurrentAnim = player:GetAnim();
        local playerRoot = player:GetJointPosition(0)
        local playerRoom = player:GetRoom()

    return player , playerPos , playerRot , playerCurrentAnim, playerRoot, playerRoom
end
}

return LaraInfoTable
