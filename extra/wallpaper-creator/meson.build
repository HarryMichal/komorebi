vala_sources = [
  'OnScreen/FinalPage.vala',
  'OnScreen/InitialPage.vala',
  'OnScreen/NewWallpaperWindow.vala',
  'OnScreen/OptionsPage.vala',

  'Main.vala',
]

dependencies = [
  gtk_dep,
  gee_dep,
  clutter_gtk_dep,
  clutter_gst_dep,
  webkit2gtk_dep,
]

komorebi_executable = executable(
  'komorebi-wallpaper-creator',
  vala_sources,
  dependencies: dependencies,
  export_dynamic: true,
  install: true
)
