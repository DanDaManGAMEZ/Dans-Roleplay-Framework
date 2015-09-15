-- Player Portrait Frame to Display Health, Mana, Name, Level --

hook.Add( "HUDPaint", "PortraitFrame", function()
	
	-- Portrait Frame Name Background -- 

	surface.SetDrawColor( 45, 45, 45, 220 )
	surface.DrawRect( 128 * HudConfig.Scale, 35 * HudConfig.Scale, 200 * HudConfig.Scale, 40 * HudConfig.Scale )

	-- Health Bar & Background -- 

	surface.SetDrawColor( 45, 45, 45, 255 )
	surface.DrawRect( 128 * HudConfig.Scale, 70 * HudConfig.Scale, 200 * HudConfig.Scale, 28 * HudConfig.Scale )
	
	-- Mana Bar & Background --

	surface.DrawRect( 128 * HudConfig.Scale, 95 * HudConfig.Scale, 200 * HudConfig.Scale, 28 * HudConfig.Scale )

	-- Portrait Background & Border --

	surface.DrawRect( 20 * HudConfig.Scale, 20 * HudConfig.Scale, 110 * HudConfig.Scale, 110 * HudConfig.Scale )
	draw.OutlinedBox(20 * HudConfig.Scale, 20 * HudConfig.Scale, 110 * HudConfig.Scale, 110 * HudConfig.Scale,  2, HudConfig.FrameBorderColor )

	-- Name, Health, Mana Borders (In that order) --

	draw.OutlinedBox(128 * HudConfig.Scale, 35 * HudConfig.Scale, 200 * HudConfig.Scale, 40 * HudConfig.Scale,  2, HudConfig.FrameBorderColor )
	draw.OutlinedBox(128 * HudConfig.Scale, 70 * HudConfig.Scale, 200 * HudConfig.Scale, 28 * HudConfig.Scale,  2, HudConfig.FrameBorderColor )
	draw.OutlinedBox(128 * HudConfig.Scale, 95 * HudConfig.Scale, 200 * HudConfig.Scale, 28 * HudConfig.Scale,  2, HudConfig.FrameBorderColor )

	-- Portrait Frame Level -- 

	surface.SetDrawColor( 45, 45, 45, 255 )
	surface.DrawRect( 22 * HudConfig.Scale, 22 * HudConfig.Scale, 35 * HudConfig.Scale, 35 * HudConfig.Scale )
	draw.OutlinedBox(22 * HudConfig.Scale, 22 * HudConfig.Scale, 35 * HudConfig.Scale, 35 * HudConfig.Scale,  2, HudConfig.FrameBorderColor )

	-- Portrait Frame Level Text -- 

	surface.SetFont( "Trebuchet18" )
	surface.SetTextColor( 255, 255, 0, 255 )
	surface.SetTextPos( 29 * HudConfig.Scale, 28 * HudConfig.Scale ) 
	surface.DrawText( HudConfig.levelNum )

	-- Portrait Frame Name --

	surface.SetFont( "Trebuchet24" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( 175 * HudConfig.Scale, 37 * HudConfig.Scale )
	surface.DrawText( HudConfig.Name )
end)

Portrait = vgui.Create( "DModelPanel", PortraitFrame )
	Portrait:SetPos( 25 * HudConfig.Scale, 25 * HudConfig.Scale )
	Portrait:SetSize(104 * HudConfig.Scale, 104 * HudConfig.Scale )
	Portrait:SetPaintBackgroundEnabled( false )
	Portrait:IsDraggable( false )
	Portrait:SetModel( HudConfig.PlayerModel )
	Portrait:SetAnimated(false)

	local eyepos = Portrait.Entity:GetBonePosition( Portrait.Entity:LookupBone( "ValveBiped.Bip01_Head1" ) )
		eyepos:Add( Vector( 0, 0, 2 ) )	
		Portrait:SetLookAt( eyepos )
		Portrait:SetCamPos( eyepos-Vector( -12, 5, 0 ) )
		Portrait.Entity:SetEyeTarget( eyepos-Vector( -12, 0, 0 ) )
	function Portrait.Entity:GetPlayerColor() return end
	function Portrait:LayoutEntity(ent) 
		ent:SetSequence( ent:LookupSequence( "ragdoll" ) )
		Portrait:RunAnimation() 
	return 
end
