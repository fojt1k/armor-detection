RegisterNetEvent("Ban")
AddEventHandler('Ban', function()
    local source = source

    if not Config.AceGuardBan then
        DropPlayer(source, 'Tried to give armour')
    else
        exports[Config.AceGuardName]:DetectPlayer(source, Config.Punishment, 'Tried to give armour')
    end
end)