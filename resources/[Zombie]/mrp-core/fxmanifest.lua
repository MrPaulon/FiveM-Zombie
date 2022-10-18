fx_version 'cerulean'
games { 'gta5' }

author 'Paulon'
description 'Mrp Zombie'
version '1.0.0'

client_scripts {
    'Core/Environement/client/*.lua',
    'Core/Player/client/*.lua',
    'Core/Utils/client/*.lua',
}
server_scripts {
    'Core/Environement/server/*.lua',
    'Core/Player/server/*.lua',
    'Core/Utils/server/*.lua',
}

shared_script {'Core/Environement/shared/config.lua'}