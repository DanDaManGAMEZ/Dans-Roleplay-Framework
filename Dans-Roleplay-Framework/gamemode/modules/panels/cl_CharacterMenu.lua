-- The Player's Character Menu. Displays Armor Slots, Stats, ect... -- 

function makeCharMenu()

CharacterMenu = vgui.Create( "DFrame" )
CharacterMenu:SetTitle( "" )
CharacterMenu:SetPos( 10 * HudConfig.Scale, 150 * HudConfig.Scale )
CharacterMenu:SetSize( 600 * HudConfig.Scale, 725 * HudConfig.Scale )
CharacterMenu:SetDraggable( false ) 
CharacterMenu:ShowCloseButton( false ) 		
CharacterMenu:SetVisible( true )
CharacterMenu:SetDeleteOnClose(false)
CharacterMenu.Paint = function( self, w, h )

		surface.SetDrawColor( 45, 45, 45, 255 ) -- Background Color
		surface.DrawRect( 50 * HudConfig.Scale, 50 * HudConfig.Scale, 550 * HudConfig.Scale, 675 * HudConfig.Scale ) -- Background
		draw.OutlinedBox( 50 * HudConfig.Scale, 50 * HudConfig.Scale, 550 * HudConfig.Scale, 675 * HudConfig.Scale, 2, Color( 0, 100, 255 ) ) -- Border
		surface.SetDrawColor( 25, 25, 25, 255 ) -- Secondary Background Color
		surface.DrawRect( 58 * HudConfig.Scale, 135 * HudConfig.Scale, 530 * HudConfig.Scale, 580 * HudConfig.Scale ) -- Secondary Background
		surface.SetDrawColor( 0, 0, 0, 255 ) -- Bottom Line Color
		surface.DrawRect( 58 * HudConfig.Scale, 665 * HudConfig.Scale, 530 * HudConfig.Scale, 2 * HudConfig.Scale) -- Bottom Line

		
		surface.SetDrawColor( 0, 100, 255, 255 ) -- Name Bar Color
		surface.DrawRect( 80 * HudConfig.Scale, 75 * HudConfig.Scale, 530 * HudConfig.Scale, 3 * HudConfig.Scale ) -- Name Bar 
		surface.DrawRect( 555 * HudConfig.Scale, 62 * HudConfig.Scale, 30 * HudConfig.Scale, 5 * HudConfig.Scale ) -- Minimize Button
		
		surface.SetFont( "Trebuchet18" ) -- Font for Name
		surface.SetTextColor( 255, 255, 255, 255 ) -- Text Color for Name
		surface.SetTextPos( 290 * HudConfig.Scale, 51 * HudConfig.Scale ) -- Name Pos
		surface.DrawText( HudConfig.Name ) -- Name

		surface.SetFont( "Trebuchet18" )
		surface.SetTextColor( 255, 255, 0, 255 ) -- Text Color for Name
		surface.SetTextPos( 225 * HudConfig.Scale, 100 * HudConfig.Scale ) -- Name Pos
		surface.DrawText( HudConfig.levelText .. " " .. HudConfig.specText .. " " .. HudConfig.classText )
		
		surface.SetMaterial( HudConfig.classIcon )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.DrawTexturedRect( 0 * HudConfig.Scale, 0 * HudConfig.Scale, 125 * HudConfig.Scale, 125 * HudConfig.Scale ) -- HudConfig.classText Icon
		draw.OutlinedBox( 0 * HudConfig.Scale, 0 * HudConfig.Scale, 127 * HudConfig.Scale, 127 * HudConfig.Scale, 2, Color( 0, 100, 255 ) ) -- Border
		
		--- Armor Slots ---
		surface.SetMaterial( HudConfig.armorIcon )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 600 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Bracer
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 535 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Tabard
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 470 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Shirt
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 405 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Chest
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 340 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Cape
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 275 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Shoulder
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 210 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Neck
		surface.DrawTexturedRect( 67 * HudConfig.Scale, 145 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Head
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 600 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Trink 2
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 535 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Trink 1
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 470 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Ring 2
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 405 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Ring 1
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 340 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Boots
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 275 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Legs
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 210 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Belt
		surface.DrawTexturedRect( 525 * HudConfig.Scale, 145 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Gloves
		surface.DrawTexturedRect( 200 * HudConfig.Scale, 635 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Main Hand
		surface.DrawTexturedRect( 300 * HudConfig.Scale, 635 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Off Hand
		surface.DrawTexturedRect( 400 * HudConfig.Scale, 635 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale ) -- Relic

		draw.OutlinedBox( 67 * HudConfig.Scale, 600 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.bracerRarity ) -- Bracer Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 535 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Tabard Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 470 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Shirt Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 405 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Chest Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 340 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Cape Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 275 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Shoulder Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 210 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Neck Border
		draw.OutlinedBox( 67 * HudConfig.Scale, 145 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Head Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 600 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Trink 2 Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 535 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Trink 1 Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 470 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Ring 2 Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 405 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Ring 1 Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 340 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Boots Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 275 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Legs Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 210 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Belt Border
		draw.OutlinedBox( 525 * HudConfig.Scale, 145 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Gloves Border
		draw.OutlinedBox( 200 * HudConfig.Scale, 635 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- MainH Border
		draw.OutlinedBox( 300 * HudConfig.Scale, 635 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- OffH Border
		draw.OutlinedBox( 400 * HudConfig.Scale, 635 * HudConfig.Scale, 58 * HudConfig.Scale, 58 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Relic Border
		
		--- Background of Character ---
		
		surface.SetMaterial( HudConfig.classBG )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.DrawTexturedRect( 150 * HudConfig.Scale, 160 * HudConfig.Scale, 350 * HudConfig.Scale, 460 * HudConfig.Scale ) -- Character Background
		draw.OutlinedBox( 150 * HudConfig.Scale, 160 * HudConfig.Scale, 350 * HudConfig.Scale, 460 * HudConfig.Scale, 2, HudConfig.itemRarity ) -- Character Background Border
	end

	BracerButton = vgui.Create("DButton", CharacterMenu)
	BracerButton:SetText( "" )
	BracerButton:SetSize( 58 * HudConfig.Scale, 58 * HudConfig.Scale )
	BracerButton:SetPos( 67 * HudConfig.Scale, 600 * HudConfig.Scale )
	BracerButton:SetTextColor( Color(255,255,255) )
	BracerButton.Paint = function( self, w, h )
		draw.RoundedBox(0, 0, 0, w, h, Color(255,255,255,0) )  
		if BracerButton:IsHovered() then
			if input.IsMouseDown( MOUSE_LEFT ) then
				HudConfig.bracerRarity = Color(255, 255, 255, 255)
			else
				HudConfig.bracerRarity = Color(0, 200, 255, 255)
			end
		else
			HudConfig.bracerRarity = HudConfig.itemRarity
		end
	end

	Character = vgui.Create( "DModelPanel", CharacterMenu )
	Character:SetPos( 132 * HudConfig.Scale, 185 * HudConfig.Scale )
	Character:SetSize(390* HudConfig.Scale, 390 * HudConfig.Scale )
	Character:SetPaintBackgroundEnabled( false )
	Character:IsDraggable( false )
	Character:SetModel( HudConfig.PlayerModel )
	Character:SetCamPos(Vector(65, 0, 45))	
	
	function Character.Entity:GetPlayerColor() return end
	
	function Character:LayoutEntity(ent)
		return
	end
end

function draw.OutlinedBox( x, y, w, h, thickness, clr )
	surface.SetDrawColor( clr )
	for i=0, thickness - 1 do
		surface.DrawOutlinedRect( x + i, y + i, w - i * 2, h - i * 2 )
	end
end

local checkfor = { KEY_C }

function KeyPressed( key )
	print("PRESS", key)
	if !CharacterMenu:IsValid() then
		CharacterMenu:MakePopup()
	else
		CharacterMenu:Remove()
	end
end

function KeyReleased( key )
	print("RELEASE", key)
	if !CharacterMenu:IsValid() then
		CharacterMenu:MakePopup()
	else
		CharacterMenu:Remove()
	end
end

local lastStates = {}
hook.Add("Move", "ToggleStuff", function( ply )
	if vgui.GetKeyboardFocus() == nil and !gui.IsGameUIVisible() then 
		for k, v in pairs(checkfor) do 
			local down = input.IsKeyDown(v) 
			
			lastStates[v] = lastStates[v] or false 
			
			if down != lastStates[v] then 
				
				if down then 
					KeyPressed( v )
				else 
					KeyReleased( v )
				end
				
				lastStates[v] = down 
			end
		end
	end
end)


--[[	ExitCharacterMenu = vgui.Create("DButton", CharacterMenu)
	ExitCharacterMenu:SetText( "" )
	ExitCharacterMenu:SetTextColor( Color(255,255,255) )
	ExitCharacterMenu:SetSize( 50 * HudConfig.Scale, 50 * HudConfig.Scale )
	ExitCharacterMenu:SetPos( 550 * HudConfig.Scale, 50 * HudConfig.Scale )
	ExitCharacterMenu.Paint = function( self, w, h )
		draw.RoundedBox(0, 0, 0, w, h, Color(0,0,0,0) ) 
	end
	if ExitCharacterMenu:IsHovered() then
		if input.IsMouseDown( MOUSE_LEFT ) then
			CharacterMenu:SetVisible( false )
		else
			return
		end
		return
	end



	local border = HudConfig.BorderColor

	CharacterMenuOpen = vgui.Create("DButton")
	CharacterMenuOpen:SetText( "C" )
	CharacterMenuOpen:SetSize( 58 * HudConfig.Scale, 58 * HudConfig.Scale )
	CharacterMenuOpen:SetPos( ScrW()/2, ScrH()/2 )
	CharacterMenuOpen:SetTextColor( Color(255,255,255) )
	CharacterMenuOpen.Paint = function( self, w, h )

		draw.RoundedBox(0, 0, 0, w, h, Color( 25, 25, 25, 255 ) ) 
		draw.OutlinedBox(0, 0, w, h, 2, border )

		if CharacterMenuOpen:IsHovered() then
			if input.IsMouseDown( MOUSE_LEFT ) then
				border = HudConfig.ClickedBorderColor
			else
				border = HudConfig.HoverBorderColor
			end
		else
			border = HudConfig.BorderColor
		end

		function CharacterMenuOpen:DoClick()
			if !CharacterMenu:IsValid() then
				makeCharMenu()
			else
				CharacterMenu:Remove()
			end
		end
		end]]
