GM.Name = "MMO RP"
GM.Author = "DanDaMan"
GM.Email = "dandaman@tableflipgamers.com"
GM.Website = "www.TableFlipGamers.com"

DeriveGamemode("base")

HudConfig = HudConfig or {}
HudConfig.Scale = ScrH()/1080

HudConfig.Name = LocalPlayer():Nick()
HudConfig.PlayerModel = LocalPlayer():GetModel()

HudConfig.FrameBorderColor = Color(0, 100, 255, 255)
HudConfig.ClickedBorderColor = Color( 0, 255, 255, 255 )
HudConfig.InactiveBorderColor = Color( 0, 100, 255, 100 )
HudConfig.HoverBorderColor = Color( 0, 125, 255, 255 )
HudConfig.TextColor = Color( 200, 255, 255, 200 )
HudConfig.spellBinds = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}
HudConfig.endcapIconLeft = Material( "materials/vgui/endcap.png" )
HudConfig.endcapIconRight = Material("materials/vgui/endcap2.png")
HudConfig.backpackMat = Material("materials/vgui/backpack.jpg")
HudConfig.bagMat = {
    Material("materials/vgui/bag.jpg")
}
HudConfig.abilitiesMat = { 
    Material("materials/vgui/ability.jpg") 
}

HudConfig.levelNum = "50"
HudConfig.levelText = "Level 50"
HudConfig.specText = "Holy"
HudConfig.classText = "Paladin"

HudConfig.armorIcon = Material( "materials/vgui/armor.png" )
HudConfig.classIcon = Material( "materials/vgui/paladin.png" )
HudConfig.classBG = Material( "materials/vgui/background.png" )

HudConfig.itemRarity = Color( 0, 100, 255, 255 )
HudConfig.bracerRarity = itemRarity

function GM:HUDDrawTargetID()
end

function GM:HUDPaint()
end

local function LoadModules()
    local root = GM.FolderName .. "/gamemode/modules/"
    local _, folders = file.Find(root .. "*", "LUA")

    for _, folder in SortedPairs(folders, true) do

        for _, File in SortedPairs(file.Find(root .. folder .. "/sh_*.lua", "LUA"), true) do
            include(root .. folder .. "/" .. File)
        end

        for _, File in SortedPairs(file.Find(root .. folder .. "/cl_*.lua", "LUA"), true) do
            include(root .. folder .. "/" .. File)
        end
    end
end

LoadModules()