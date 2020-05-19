fx_version 'bodacious'

game 'gta5'

description 'sync_core developed by sync'

client_scripts {
    'client/discord.lua',
    'client/main.lua',
    'client/functions.lua',
    'config.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/webhook.lua',
    'server/main.lua',
    'server/common.lua',
    'config.lua',
}

dependencies {
    --'es_extended',
    'mysql-async'
}