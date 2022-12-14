Translations = {}

function _(str, ...) -- Translate string
    if Translations[Config.TranslationSelected] ~= nil then
        if Translations[Config.TranslationSelected][str] ~= nil then
            return string.format(Translations[Config.TranslationSelected][str], ...)
        else
            return 'Translation [' .. Config.TranslationSelected .. '][' .. str .. '] does not exist'
        end
    else
        return 'Locale [' .. Config.TranslationSelected .. '] does not exist'
    end
end

function _U(str, ...) -- Translate string first char uppercase
    return tostring(_(str, ...):gsub('^%l', string.upper))
end

Translations['en'] = {
    ['help_flag_remove'] = '~INPUT_CONTEXT~ Remove flag select',
    ['help_flag_select'] = '~INPUT_CONTEXT~ Select flag',
    ['help_select_ball'] = '~INPUT_CONTEXT~ Select ball\n~INPUT_LOOK_BEHIND~ Pickup ball',
    ['help_need_club'] = '~r~You need a~w~ golf club!',
    ['noti_noflagselected'] = 'You do not have a selected flag.',
    ['blip_flag'] = 'Golf flag',
    ['blip_ball'] = 'Golf ball',
    ['button_drawline'] = 'Drawline between points',
    ['button_terraingrid'] = 'Terraingrid on/off',
    ['button_bigmap'] = 'Bigmap on/off',
    ['button_topcam'] = 'Top camera',
    ['button_flagcam'] = 'Flag camera',
    ['button_changeclub'] = 'Change club',
    ['button_hit'] = 'Hit (hold)',
    ['button_left'] = 'Move left',
    ['button_right'] = 'Move right',
    ['button_exit'] = 'Exit',
    ['2dtext_club'] = 'Club',
    ['2dtext_distanceflag'] = 'Flag distance',
    ['2dtext_noselected'] = 'Not selected',
    ['2dtext_hitted_distance'] = 'Distance',
    ['landed_water'] = 'The ball landed in the water.',
    ['club_wood'] = 'Wood',
    ['club_iron'] = 'Iron',
    ['club_wedge'] = 'Wedge',
    ['club_putter'] = 'Putter',
    -- formatteds
    ['2dtext_distancemeter'] = '%s meters',
    ['midmessage_newrecord'] = 'New record: %s meters',
    ['midmessage_putball'] = 'Distance: %s meters'
}

Translations['hu'] = {
    ['help_flag_remove'] = '~INPUT_CONTEXT~ Z??szl?? jel??l??s t??rl??se',
    ['help_flag_select'] = '~INPUT_CONTEXT~ Z??szl?? kijel??l??se',
    ['help_select_ball'] = '~INPUT_CONTEXT~ Labda kiv??laszt??sa\n~INPUT_LOOK_BEHIND~ Labda felv??tele',
    ['help_need_club'] = '~r~Sz??ks??ges ~w~golf??t??!',
    ['noti_noflagselected'] = 'Nincs kiv??lasztva z??szl??!',
    ['blip_flag'] = 'Golf z??szl??',
    ['blip_ball'] = 'Golflabda',
    ['button_drawline'] = 'Vonal megh??z??sa',
    ['button_terraingrid'] = 'Z??n??k be/ki',
    ['button_bigmap'] = 'Nagyt??rk??p be/ki',
    ['button_topcam'] = 'Top kamera',
    ['button_flagcam'] = 'Z??szl?? kamera',
    ['button_changeclub'] = '??t?? v??lt??s',
    ['button_hit'] = '??t??s (nyomvatartva)',
    ['button_left'] = 'Balra fordul??s',
    ['button_right'] = 'Jobbra fordul??s',
    ['button_exit'] = 'Kil??p??s',
    ['2dtext_club'] = '??t??',
    ['2dtext_distanceflag'] = 'Z??szl?? t??vols??g',
    ['2dtext_noselected'] = 'Nincs kiv??lasztva',
    ['2dtext_hitted_distance'] = 'T??vols??g',
    ['landed_water'] = 'V??zbe landolt a golflabda.',
    ['club_wood'] = 'Wood',
    ['club_iron'] = 'Iron',
    ['club_wedge'] = 'Wedge',
    ['club_putter'] = 'Putter',
    -- formatteds
    ['2dtext_distancemeter'] = '%s m??ter',
    ['midmessage_newrecord'] = '??j rekord: %s m??ter',
    ['midmessage_putball'] = 'T??vols??g: %s m??ter'
}
