Citizen.CreateThread(function()
    local veh = NetworkGetEntityFromNetworkId(NetId)
    while true do
        Wait(0)
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if veh then
            if IsVehicleSirenOn(veh) then
                if IsControlJustReleased(0, 167) then
                    DisableVehicleImpactExplosionActivation(veh, 1)
                end
                if IsControlJustReleased(0, 168) then
                    DisableVehicleImpactExplosionActivation(veh, 0)
                end
            end
        end
    end
end)
