using Gtk;

[GtkTemplate(ui = "/ui/wallpaper-creator/about_dialog.ui")]
public class WallpaperCreator.AboutDialog : Gtk.AboutDialog {
    public AboutDialog () {
        Object ();

        this.version = "2.2";
    }
}
