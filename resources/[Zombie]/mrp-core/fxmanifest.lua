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

files {
    './Core/Environement/popcycle.dat',
}

shared_script {'Shared/config.lua'}

data_file 'POPSCHED_FILE' 'Core/Environement/popcycle.dat'