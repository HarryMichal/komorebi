icondir = join_paths('hicolor', 'scalable', 'apps')
system_icondir = join_paths(datadir, 'icons', 'hicolor')

system_actions_icondir = join_paths(system_icondir, 'scalable', 'actions')

icon_files = files(
    'add_bubble_item.svg',
    'blank.svg',
    'blank_backup.svg',
    'close_btn.svg',
    'done.svg',
    'info.svg',
    'thumbnail_add.svg',
    'thumbnail_border.svg',
)

install_data(
    icon_files,
    install_dir: system_actions_icondir
)

system_apps_icondir = join_paths(system_icondir, 'scalable', 'apps')

install_data(
    join_paths(icondir, '@0@.svg').format(komorebi_id),
    install_dir: system_apps_icondir,
    rename: '@0@.svg'.format(komorebi_id)
)

install_data(
    join_paths(icondir, '@0@.svg').format(wallpaper_creator_id),
    install_dir: system_apps_icondir,
    rename: '@0@-symbolic.svg'.format(wallpaper_creator_id)
)
