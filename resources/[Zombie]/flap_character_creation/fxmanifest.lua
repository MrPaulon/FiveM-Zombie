fx_version 'adamant'
game 'gta5'
author 'Flap & Zoot'
description 'character creation by Flap & Zoot'
version '1.0'

ui_page 'client/html/index.html'

client_scripts {
	'client/*.lua'
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	'config/*.lua',
	'server/*.lua'
}

files {
	'client/html/index.html',
	'client/html/app.js',
	'client/html/style.css',
	'client/html/icons/*.svg',
	'client/html/icons/*.png',
	'client/html/icons/*.webp',
	'client/html/models/*.webp'
}
