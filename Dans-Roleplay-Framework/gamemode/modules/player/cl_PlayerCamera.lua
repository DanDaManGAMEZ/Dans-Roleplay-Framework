if ( CLIENT ) then
	local zoomForward = 130

	hook.Add( "ShouldDrawLocalPlayer", "ThirdPersonDrawPlayer", function()
		if LocalPlayer():Alive() then
			return true
		end
		end )

	hook.Add( "CalcView", "ThirdPersonView", function( ply, pos, angles, fov )	
		if ply:Alive() then
			local view = {}
			view.origin = pos - ( angles:Forward() * zoomForward ) + ( angles:Right() * 6 ) + ( angles:Up() * 1 )
			view.angles = ply:EyeAngles() + Angle( 1, 1, 0 )
			view.fov = fov
			view.filter = ply
			local tr_wall = util.TraceLine( {start=ply:GetShootPos(), endpos=view.origin, filter=player.GetAll(), mask = MASK_SOLID} )
			if tr_wall.Hit and tr_wall.HitPos then
				view.origin = tr_wall.HitPos + (ply:GetShootPos()-tr_wall.HitPos):GetNormal()*7
			end
			return GAMEMODE:CalcView( ply, view.origin, view.angles, view.fov )
		end	
		end )

	hook.Add("PlayerBindPress", "zooming", function(ply, bind, pressed)
		if not pressed then return end

		if string.find(bind, "invnext") then
			zoomForward = math.Clamp( zoomForward + 5, 0, 200 )
			return false
		elseif string.find(bind, "invprev") then
			zoomForward = math.Clamp( zoomForward - 5, 20, 200 )
			return false
		end
		end )
end

--[[function HoveringName()
	for _, target in pairs(player.GetAll()) do
		if target:Alive() then
			local guild = "Undying Fury"
			local targetPos = target:GetPos() + Vector(0,0,84)
			local targetDistance = math.floor((LocalPlayer():GetPos():Distance( targetPos ))/40)
			local targetScreenpos = targetPos:ToScreen()
			draw.SimpleText(target:Nick(), "Trebuchet24", tonumber(targetScreenpos.x), tonumber(targetScreenpos.y), Color(50,50,255,255), TEXT_ALIGN_CENTER)			
		end
	end
end
hook.Add("HUDPaint", "HoveringName", HoveringName)

function HoveringGuild()
	for _, target in pairs(player.GetAll()) do
		if target:Alive() then
			local guild = "Undying Fury"
			local targetPos = target:GetPos() + Vector(0,0,79)
			local targetDistance = math.floor((LocalPlayer():GetPos():Distance( targetPos ))/40)
			local targetScreenpos = targetPos:ToScreen()
			draw.SimpleText("<" .. guild .. ">", "Trebuchet24", tonumber(targetScreenpos.x), tonumber(targetScreenpos.y), Color(50,50,255,255), TEXT_ALIGN_CENTER)
		end
	end
end
hook.Add("HUDPaint", "HoveringGuild", HoveringGuild)
]]

local tr = util.TraceLine( {
	start = EyePos(), 
	endpos = EyePos() + EyeAngles():Forward() * 10000, 
	filter = LocalPlayer(),
	} )

for k, v in pairs(player.GetAll()) do

	if v != LocalPlayer() and v:Team() == LocalPlayer():Team() and v:LookupBone("ValveBiped.Bip01_Head1") then
		local pos = v:GetBonePosition(v:LookupBone("ValveBiped.Bip01_Head1"))

		pos = pos or (v:GetPos() + Vector(0, 0, 64))

		local scrn = pos:ToScreen()
		if scrn.visible then
			v._NameLight = math.Clamp((v._NameLight or 0) + FrameTime() * 4, 0, 1)
		else
			v._NameLight = math.Clamp((v._NameLight or 0) - FrameTime() * 4, 0, 1)			
		end
	elseif tr.Hit and IsValid(tr.Entity) and tr.Entity:IsPlayer() and tr.Entity:Alive() and tr.Entity:Team() != TEAM_SPECTATOR and tr.Entity == v then
		v._NameLight = math.Clamp((v._NameLight or 0) + FrameTime() * 4, 0, 1)
	else
		v._NameLight = math.Clamp((v._NameLight or 0) - FrameTime() * 4, 0, 1)
	end
end

for k, v in pairs(player.GetAll()) do
	if v != LocalPlayer() and v._NameLight and v._NameLight > 0 then
		local bone = v:LookupBone("ValveBiped.Bip01_Head1")

		if bone then
			local pos = v:GetBonePosition(bone)

			pos = pos and (pos + Vector(0, 0, 12)) or (v:GetPos() + Vector(0, 0, 64))

			local scrn = pos:ToScreen()

			scrn.x = math.Round( scrn.x )
			scrn.y = math.Round( scrn.y )

			if scrn.visible then

				local col = HudConfig.TextColor

				draw.SimpleText( v:Name(), "Trebuchet24", scrn.x, scrn.y - 24, Color(0, 0, 0, 100 * v._NameLight), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )

			end
		end
	end 
end 


hook.Add("Think", "RightMouse", function()

	local mousePosX, mousePosY = input.GetCursorPos()
	if input.IsMouseDown( MOUSE_RIGHT ) then
		gui.EnableScreenClicker( false )
	else
		gui.EnableScreenClicker( true )
	end
	end)

hook.Add("Think", "AutoWalk", function()
	local mright = input.IsMouseDown( MOUSE_RIGHT )
	local mleft = input.IsMouseDown( MOUSE_LEFT )
	local wwalk = input.IsKeyDown( 33 )
	if mright and mleft or wwalk then
		LocalPlayer():ConCommand( "+forward" )
	else
		LocalPlayer():ConCommand( "-forward" )
	end
	end)

function hidehud(name)
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", "CHudCrosshair"}) do
		if name == v then return false end
	end
end
hook.Add("HUDShouldDraw", "HideHud", hidehud)


--[[hook.Add( "CalcView", "ThirdPersonView", function( ply, pos, angles, fov )	
		if ply:Alive() then

			local vAngle = ply:GetAimVector()
			local newAngle = vAngle:Angle():Right():Angle()

			local view = {}
			view.origin = pos - ( angles:Forward() * 100 ) + ( angles:Right() * 6 ) + ( angles:Up() * 1 )
			view.angles = newAngle:RotateAroundAxis(vAngle:Angle():Right(), 180)  
			view.fov = fov
			return GAMEMODE:CalcView( ply, view.origin, view.angles, view.fov )
		end	
	end )

	hook.Add( "ShouldDrawLocalPlayer", "ThirdPersonDrawPlayer", function()
		if LocalPlayer():Alive() then
			return true
		end
		end )]]


--[[
hook.Add( "HUDPaint", "DrawCustomCursor", function()
	
	local isvisible = vgui.CursorVisible()
	local mx, my = gui.MousePos()
	local mat = Material( "icon16/user.png" )
	
	if isvisible then
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( mat ) -- If you use Material, cache it!
	surface.DrawTexturedRect( mx - 8, my - 5, 30, 30 )
	else
	return
end
end )]]