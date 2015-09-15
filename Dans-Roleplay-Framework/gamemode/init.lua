GM.Name = "MMO RP"
GM.Author = "DanDaMan"
GM.Email = "dandaman@tableflipgamers.com"
GM.Website = "www.TableFlipGamers.com"

DeriveGamemode( "base" )

AddCSLuaFile("cl_init.lua")

function GM:HUDDrawTargetID()
end

function GM:PlayerSpawn( ply )
    ply:SetCustomCollisionCheck( true )
    ply:EnableCustomCollisions( true )
    ply:SetModel("models/player/group01/male_07.mdl")
end

function NoCollide( ply1, ply2 )
    if ply1:IsPlayer() and ply2:IsPlayer() then
        return false
    end
end
hook.Add("ShouldCollide", "CollisionPrevention", NoCollide)

local fol = GM.FolderName .. "/gamemode/modules/"
local files, folders = file.Find(fol .. "*", "LUA")

for k, v in pairs(files) do
    if string.GetExtensionFromFilename(v) ~= "lua" then continue end
    include(fol .. v)
end

for _, folder in SortedPairs(folders, true) do
    if folder == "." or folder == ".." then continue end

    for _, File in SortedPairs(file.Find(fol .. folder .. "/sh_*.lua", "LUA"), true) do
        AddCSLuaFile(fol .. folder .. "/" .. File)
        include(fol .. folder .. "/" .. File)
    end

    for _, File in SortedPairs(file.Find(fol .. folder .. "/sv_*.lua", "LUA"), true) do
        include(fol .. folder .. "/" .. File)
    end

    for _, File in SortedPairs(file.Find(fol .. folder .. "/cl_*.lua", "LUA"), true) do
        AddCSLuaFile(fol .. folder .. "/" .. File)
    end
end