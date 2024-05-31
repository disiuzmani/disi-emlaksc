fx_version   'cerulean'
lua54        'yes'
game         'gta5'

name            'disi-emlaksc'
author          'DisiUzmani - https://github.com/disiuzmani'
description     'Kara Para İle Çalışan Emlak Sistemi'
version         '1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'lang/tr.lua'
}

client_script 'client.lua'

server_scripts {
    'server.lua',
    'config.lua'
}
