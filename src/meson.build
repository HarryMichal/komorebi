vala_sources = [
  'OnScreen/AssetActor.vala',
  'OnScreen/BackgroundWindow.vala',
  'OnScreen/BubbleMenu.vala',
  'OnScreen/BubbleMenuItem.vala',
  'OnScreen/DateTimeBox.vala',
  'OnScreen/DesktopIcons.vala',
  'OnScreen/Icon.vala',
  'OnScreen/InfoWindow.vala',
  'OnScreen/PreferencesWindow.vala',
  'OnScreen/ResponsiveGrid.vala',
  'OnScreen/RowLabel.vala',
  'OnScreen/Thumbnail.vala',
  'OnScreen/WallpapersSelector.vala',

  'Main.vala',
  'Utilities.vala',
]

dependencies = [
  gtk_dep,
  gee_dep,
  clutter_gtk_dep,
  clutter_gst_dep,
  webkit2gtk_dep,
]

komorebi_executable = executable(
  'komorebi',
  vala_sources,
  dependencies: dependencies,
  export_dynamic: true,
  install: true
)
