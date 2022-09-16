-- !Name "Flash screen"
-- !Section "Particles"
-- !Description "Flashes screen with specified color and for specified duration.\nDuration value of 1 takes 1 second to flash."
-- !Arguments "Color, 10, Flash color" "Numerical, 20, [ 0.1 | 10 | 2 | 0.1 | 0.5 ], Flash speed" 

LevelFuncs.FlashScreen = function(color, duration)
    TEN.Particles.FlashScreen(color, duration)
end