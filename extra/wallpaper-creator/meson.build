vala_sources = [
  'application.vala',
  'window.vala',
  'wallpaper.vala',
  'init-screen.vala',
  'edit-screen.vala',
  'finish-screen.vala',
  'about.vala'
]

dependencies = [
  glib_dep,
  gio_dep,
  gtk_dep,
  gee_dep,
  clutter_gtk_dep,
  clutter_gst_dep,
  webkit2gtk_dep,
]

executable(
  'komorebi-wallpaper-creator',
  wallpaper_creator_resources,
  vala_sources,
  dependencies: dependencies,
  export_dynamic: true,
  install: true
)
