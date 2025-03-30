--[[ ===================================================== ]] --
--[[       MH Realistic Parking V2 Script by MaDHouSe      ]] --
--[[ ===================================================== ]] --
CreateCallback('mh-parkingV2:server:IsVehicleParked', function(source, cb, plate, state) cb(Parking.Functions.IsVehicleParked(plate, state)) end)
CreateCallback('mh-parkingV2:server:GetVehicleData', function(source, cb, plate) cb(Parking.Functions.GetVehicleData(source, plate)) end)
CreateCallback("mh-parkingV2:server:GetVehicles", function(source, cb) cb(Parking.Functions.GetVehicles(source)) end)
CreateCallback("mh-parkingV2:server:Save", function(source, cb, data) cb(Parking.Functions.Save(source, data)) end)
CreateCallback("mh-parkingV2:server:Drive", function(source, cb, data) cb(Parking.Functions.Drive(source, data)) end)
AddEventHandler('onResourceStop', function(resource) if resource == GetCurrentResourceName() then playerId = -1 end end)
RegisterNetEvent('mh-parkingV2:server:SetVehLockState', function(vehNetId, state) Parking.Functions.SetVehicleLockState(NetworkGetEntityFromNetworkId(vehNetId), state) end)
RegisterNetEvent("mh-parkingV2:server:EnteringVehicle", function(currentVehicle, currentSeat, vehicleName, netId) Parking.Functions.EnteringVehicle(source, currentSeat, netId) end)
RegisterNetEvent('mh-parkingV2:server:LeftVehicle', function(currentVehicle, currentSeat, vehicleName, netId) Parking.Functions.LeftVehicle(source, currentSeat, netId) end)
RegisterNetEvent('mh-parkingV2:server:RefreshVehicles', function() Parking.Functions.RefreshVehicles(source, false) end)
RegisterNetEvent('mh-parkingV2:server:LoadVehiclesOnStart', function() Parking.Functions.RefreshVehicles(source, true) end)
RegisterNetEvent('mh-parkingV2:server:ClearAllSeats', function() Parking.Functions.ClearAllSeats(netid) end)
RegisterNetEvent('mh-parkingV2:server:TowVehicle', function(plate) Parking.Functions.TowVehicle(source, plate) end)
RegisterNetEvent('mh-parkingV2:server:Impound', function(plate) Parking.Functions.Impound(source, plate) end)
RegisterNetEvent('police:server:Impound', function(plate, fullImpound, price, body, engine, fuel) Parking.Functions.Impound(source, plate) end)
CreateThread(function() Parking.Functions.Init() end)
