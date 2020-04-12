public class WallpaperCreator.App : Gtk.Application {
    private WallpaperCreator.Window window;

    private const GLib.ActionEntry[] ACTION_ENTRIES = {
        { "quit", on_quit_activate }
    };

    public App() {
        Object(
            application_id: "com.github.cheesecakeufo.WallpaperCreator",
            flags: ApplicationFlags.FLAGS_NONE
        );

        Gtk.Window.set_default_icon_name("com.github.cheesecakeufo.WallpaperCreator");
        Gtk.Settings.get_default().gtk_application_prefer_dark_theme = true;
        this.add_action_entries(ACTION_ENTRIES, this);
    }

    public override void activate() {
        window = new WallpaperCreator.Window(this);
        window.show();
    }

    void on_quit_activate() {
        window.destroy();
        quit();
    }

    public static int main(string[] args) {
        var app = new App();
        return app.run(args);
    }
}
