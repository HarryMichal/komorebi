desktop_files = [
    'com.github.cheesecakeufo.Komorebi.desktop',
    'com.github.cheesecakeufo.WallpaperCreator.desktop'
]
desktop_file_validate = find_program('desktop-file-validate', required: false)
if desktop_file_validate.found()
    foreach desktop_file: desktop_files
        test(
            'desktop-file-validate',
            desktop_file_validate,
            args: [ desktop_file ]
        )
    endforeach
endif

foreach desktop_file: desktop_files
    install_data(
        desktop_file,
        install_dir: join_paths(datadir, 'applications')
    )
endforeach

install_data(
    'com.github.cheesecakeufo.Komorebi.appdata.xml',
    install_dir: join_paths(datadir, 'metainfo')
)

install_subdir(
    'fonts',
    install_dir: join_paths(datadir, 'fonts'),
    strip_directory: true
)

install_subdir(
    'wallpapers',
    install_dir: join_paths(datadir, 'komorebi')
)

subdir('icons')
