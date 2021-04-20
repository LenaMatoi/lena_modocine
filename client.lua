local movieview
local UI = { 
	x =  0.000 ,
	y = -0.001 ,
}

---------------------------------------------------------------------------
-- Cambias el modo de vision --
---------------------------------------------------------------------------

RegisterCommand("cine", function()
	if not movieView then
		movieview = true
	else
		movieView = false
	end
end, false)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if movieview then
			HideHUDThisFrame()
			drawRct(UI.x + 0.0, 	UI.y + 0.0, 1.0,0.15,0,0,0,255) -- Top Bar
			drawRct(UI.x + 0.0, 	UI.y + 0.85, 1.0,0.151,0,0,0,255) -- Bottom Bar
		end
	end
end)

function drawRct(x,y,width,height,r,g,b,a)
	DrawRect(x + width/2, y + height/2, width, height, r, g, b, a)
end

--FUNCIONES--
function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(1)
	HideHudComponentThisFrame(2)
	HideHudComponentThisFrame(3)
	HideHudComponentThisFrame(4)
	HideHudComponentThisFrame(6)
	HideHudComponentThisFrame(7)
	HideHudComponentThisFrame(8)
	HideHudComponentThisFrame(9)
	HideHudComponentThisFrame(13)
	HideHudComponentThisFrame(11)
	HideHudComponentThisFrame(12)
	HideHudComponentThisFrame(15)
	HideHudComponentThisFrame(18)
	HideHudComponentThisFrame(19)
end
