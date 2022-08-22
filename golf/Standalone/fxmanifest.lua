version '1.0.0'
author 'freamee'
decription 'Aquiver golf'

client_scripts {
    'translations.lua',
    'config.lua',
    'shared/shared_utils.lua',
    'client/client.lua'
}

server_scripts {
    'translations.lua',
    'config.lua',
    'shared/shared_utils.lua',
    '@mysql-async/lib/MySQL.lua',
    'server/server.lua'
}

dependencies {
    'mysql-async'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/js/*.js',
    'html/DEP/*.js',
    'html/img/**',
    'html/ProximaNova.woff'
}

game 'gta5'
fx_version 'adamant'
