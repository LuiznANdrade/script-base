local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP","script-base")

src = {}
Tunnel.bindInterface("script-base",src)
vSERVER = Tunnel.getInterface("script-base")


RegisterCommand("teste", function ()
    SendNUIMessage({ teste = true})
    SetNuiFocus(true, true)
end)


RegisterNuiCallback('close', function ()
    SendNUIMessage({ teste = false})
    SetNuiFocus(false, false)
end)