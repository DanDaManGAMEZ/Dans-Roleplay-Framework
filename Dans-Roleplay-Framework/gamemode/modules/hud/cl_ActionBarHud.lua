-- Actiion Bar Frame to hold all Ability's and Bags as well as some other misc Stuff --

hook.Add( "HUDPaint", "MainHUD", function()

	-- Main Background & Border --

	surface.SetDrawColor( 25, 25, 25, 255 )
	surface.DrawRect( ScrW()/2 - 600 * HudConfig.Scale, ScrH() - 80 * HudConfig.Scale, 1200 * HudConfig.Scale, 81 * HudConfig.Scale )
	draw.OutlinedBox( ScrW()/2 - 600 * HudConfig.Scale, ScrH() - 80 * HudConfig.Scale, 1200 * HudConfig.Scale, 81 * HudConfig.Scale, 2, Color(0, 100, 255, 255) )

	-- End Caps --

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( HudConfig.endcapIconLeft )
	surface.DrawTexturedRect( ScrW()/2 - 680 * HudConfig.Scale, ScrH() - 125 * HudConfig.Scale, 160 * HudConfig.Scale, 160 * HudConfig.Scale )
	surface.SetMaterial( HudConfig.endcapIconRight )
	surface.DrawTexturedRect( ScrW()/2 + 530 * HudConfig.Scale, ScrH() - 125 * HudConfig.Scale, 160 * HudConfig.Scale, 160 * HudConfig.Scale )

	-- Ability Icons --

	surface.SetMaterial( HudConfig.abilitiesMat[1] )
	surface.DrawTexturedRect(ScrW()/2 - 350 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 - 280 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 - 210 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 - 140 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 - 70 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 + 0 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 + 70 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 + 140 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 + 210 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW()/2 + 280 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale)

	-- Bind Text --

	surface.SetFont( "Trebuchet18" )
	surface.SetTextColor( 255, 255, 255, 255 ) 
	surface.SetTextPos( ScrW()/2 - 305 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale) 
	surface.DrawText( HudConfig.spellBinds[1] )
	surface.SetTextPos(ScrW()/2 - 235 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[2] )
	surface.SetTextPos(ScrW()/2 - 165 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[3] ) 
	surface.SetTextPos(ScrW()/2 - 95 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[4] )
	surface.SetTextPos(ScrW()/2 - 25 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[5] )
	surface.SetTextPos(ScrW()/2 + 45 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[6] ) 
	surface.SetTextPos(ScrW()/2 + 115 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[7] ) 
	surface.SetTextPos(ScrW()/2 + 185 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[8] ) 
	surface.SetTextPos(ScrW()/2 + 255 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[9] ) 
	surface.SetTextPos(ScrW()/2 + 325 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale)
	surface.DrawText( HudConfig.spellBinds[10] )

	-- Spell Borders --

	draw.OutlinedBox(ScrW()/2 - 350 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 - 280 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 - 210 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 - 140 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 - 70 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 + 0 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 + 70 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 + 140 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 + 210 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW()/2 + 280 * HudConfig.Scale, ScrH() - 70 * HudConfig.Scale, 60 * HudConfig.Scale, 60 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )

	-- Backpack --

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( HudConfig.backpackMat )
	surface.DrawTexturedRect(ScrW() - 490 * HudConfig.Scale, ScrH() - 38 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale)

	-- Other Bags -- 

	surface.SetMaterial( HudConfig.bagMat[1] )
	surface.DrawTexturedRect(ScrW() - 490 * HudConfig.Scale, ScrH() - 72 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW() - 525 * HudConfig.Scale, ScrH() - 72 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW() - 560 * HudConfig.Scale, ScrH() - 72 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW() - 525 * HudConfig.Scale, ScrH() - 38 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale)
	surface.DrawTexturedRect(ScrW() - 560 * HudConfig.Scale, ScrH() - 38 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale)

	-- Bags Outlines --

	draw.OutlinedBox(ScrW() - 490 * HudConfig.Scale, ScrH() - 72 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW() - 525 * HudConfig.Scale, ScrH() - 72 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW() - 560 * HudConfig.Scale, ScrH() - 72 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW() - 490 * HudConfig.Scale, ScrH() - 38 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW() - 525 * HudConfig.Scale, ScrH() - 38 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )
	draw.OutlinedBox(ScrW() - 560 * HudConfig.Scale, ScrH() - 38 * HudConfig.Scale, 30 * HudConfig.Scale, 30 * HudConfig.Scale, 2, HudConfig.InactiveBorderColor )

end)

function draw.OutlinedBox( x, y, w, h, thickness, clr )
	surface.SetDrawColor( clr )
	for i=0, thickness - 1 do
		surface.DrawOutlinedRect( x + i, y + i, w - i * 2, h - i * 2 )
	end
end