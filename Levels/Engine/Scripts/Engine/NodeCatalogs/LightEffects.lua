-- !Name "Add Dynamic Light to Moveable"
-- !Section "Light Effects"
-- !Conditional "False"
-- !Description "Add A Dynamic Light To A Moveable's mesh. (Version 1.0)"
-- !Arguments "NewLine,Moveables,Select Moveable To Attach Light To" ,"Numerical,30, Select Mesh Number of Moveable \n This can be found in the Animation Editor within Wadtool."
-- !Arguments "NewLine,Color,70","Numerical,30,Select Range of Light \n(Range is in blocks from origin"
-- !Arguments "NewLine,Boolean,Add Sound Effect,30" , "SoundEffects,70"
-- !Arguments "NewLine,Boolean,Add a Random Effect to the light? "

LevelFuncs.Engine.Node.DynamicLightMesh = function(Moveable,MeshNumber,LightColor,Range,RandomCheck,SoundEffectCheck,SoundEffect)

        local Moveable = GetMoveableByName(Moveable)
    local MoveableMeshPos =Moveable:GetJointPosition(MeshNumber)
        if RandomCheck == false then 
    TEN.Effects.EmitLight(MoveableMeshPos,LightColor,Range)
    else
        TEN.Effects.EmitLight(MoveableMeshPos, LightColor, math.random())
    end
    if SoundEffectCheck == true then
    TEN.Misc.PlaySound(SoundEffect,MoveableMeshPos)
    end
end

-- !Name "Add Dynamic Light to Static"
-- !Section "Light Effects"
-- !Conditional "False"
-- !Description "Add A Dynamic Light To A Static Object. (Version 1.0)"
-- !Arguments "NewLine,Statics,Select Static To Attach Light To" ,
-- !Arguments "NewLine,Color,70","Numerical,30,Select Range of Light \n(Range is in blocks from origin"
-- !Arguments "NewLine,Boolean,Add Sound Effect,30" , "SoundEffects,70"
-- !Arguments "NewLine,Boolean,Add a Random Effect to the light? "
LevelFuncs.Engine.Node.DynamicLightStaticMesh = function(Static, LightColor, Range, RandomCheck,SoundEffectCheck, SoundEffect)
    local Static = GetStaticByName(Static)
    local StaticPos = Static:GetPosition()
    if RandomCheck == false then
        TEN.Effects.EmitLight(StaticPos, LightColor, Range)
    else
        TEN.Effects.EmitLight(StaticPos, LightColor, math.random(Range))
    end
    if SoundEffectCheck == true then
        TEN.Misc.PlaySound(SoundEffect, StaticPos)
    end
end
