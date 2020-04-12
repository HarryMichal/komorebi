namespace WallpaperCreator {

[GtkTemplate(ui = "/ui/wallpaper-creator/finish_screen.ui")]
public class FinishScreen : Gtk.Box {
    private Wallpaper wallpaper;

    FinishScreen() {
        Object();
    }

    public void set_wallpaper(Wallpaper w) {
        if (w != null)
            wallpaper = w;
    }

    public Wallpaper get_wallpaper() {
        return wallpaper;
    }
}

}
