fx_version 'adamant'

game 'gta5'

description 'sync_core developed by sync'

client_scripts {
    'client/discord.lua',
    'voice-locales/en.lua',
    'voice-locales/br.lua',
    'voice-locales/fi.lua',
    'voice-locales/fr.lua',
    'voice-locales/ko.lua',
    'voice-locales/pl.lua',
    'voice-locales/hr.lua',
    'client/main.lua',
    'client/voice.lua',
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