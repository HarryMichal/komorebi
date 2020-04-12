[GtkTemplate(ui = "/ui/wallpaper-creator/init_screen.ui")]
public class WallpaperCreator.InitScreen : Gtk.Box {
    [GtkChild]
    private Gtk.Entry name_field;
    [GtkChild]
    private Gtk.ComboBox type_combo;
    [GtkChild]
    private Gtk.Label file_chooser_label;
    [GtkChild]
    private Gtk.FileChooserButton file_chooser;

    private Wallpaper wallpaper;

    private Gtk.FileFilter image_filter = new Gtk.FileFilter();
    private Gtk.FileFilter video_filter = new Gtk.FileFilter();

    construct {
        image_filter.add_mime_type("image/*");
        video_filter.add_mime_type("video/*");

        setup_actions();
    }

    void setup_actions() {
        name_field.changed.connect(() => {
            wallpaper.name = name_field.get_text();
        });

        type_combo.changed.connect(() => {
            wallpaper.kind = type_combo.get_active_id();

            // Update hint for the base file file chooser field
            switch (type_combo.get_active_id()) {
                case "image":
                    file_chooser.set_filter(image_filter);
                    file_chooser_label.label = "Where is the image located?";
                    break;
                case "video":
                    file_chooser.set_filter(video_filter);
                    file_chooser_label.label = "Where is the video located?";
                    break;
            }
        });

        file_chooser.file_set.connect(() => {
            wallpaper.file_path = file_chooser.get_file().get_path();
        });
    }

    public void set_wallpaper(Wallpaper w) {
        if (w != null)
            wallpaper = w;
    }

    public Wallpaper get_wallpaper() {
        return wallpaper;
    }
}
