project(
  'komorebi',
  ['vala', 'c'],
  version: '2.2',
  license: 'GPL-3.0',
)

komorebi_id = 'com.github.cheesecakeufo.Komorebi'
wallpaper_creator_id = 'com.github.cheesecakeufo.WallpaperCreator'

gnome = import('gnome')
i18n = import('i18n')

# Configurable install dirs
prefix = get_option('prefix')
bindir = join_paths(prefix, get_option('bindir'))
datadir = join_paths(prefix, get_option('datadir'))
pkgdatadir = join_paths(datadir, meson.project_name())

valac = meson.get_compiler('vala')

# Required libraries and other dependencies
gio_dep = dependency('gio-2.0')
gtk_dep = dependency('gtk+-3.0')
gee_dep = dependency('gee-0.8')
clutter_gtk_dep = dependency('clutter-gtk-1.0')
clutter_gst_dep = dependency('clutter-gst-3.0')
webkit2gtk_dep = dependency('webkit2gtk-4.0')

# Post-install scripts
meson.add_install_script('build-aux' / 'postinst')

subdir('data')
subdir('extra')
subdir('src')
