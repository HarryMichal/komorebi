namespace WallpaperCreator {

public enum ViewState {
    NONE,
    INIT,
    EDIT,
    FINISH;

    public string to_string() {
        switch (this) {
            case NONE:
                return "none";

            case INIT:
                return "init";

            case EDIT:
                return "edit";

            case FINISH:
                return "finish";

            default:
                assert_not_reached();
        }
    }
}

[GtkTemplate(ui = "/ui/wallpaper-creator/window.ui")]
public class Window : Gtk.ApplicationWindow {
    private ViewState view_state;

    private const GLib.ActionEntry[] ACTION_ENTRIES = {
        { "next", on_next },
        { "back", on_back },
        { "finish", on_finish },
        { "about", on_show_about }
    };

    [GtkChild]
    private Gtk.HeaderBar header_bar;
    [GtkChild]
    private Gtk.Stack left_btn_stack;
    [GtkChild]
    private Gtk.Stack right_btn_stack;
    [GtkChild]
    private Gtk.Stack stack;

    public Wallpaper wallpaper;

    public Window (Gtk.Application app) {
        Object (application: app);

        // Setup actions
        this.add_action_entries(ACTION_ENTRIES, this);

        wallpaper = new Wallpaper();
        view_state = NONE;

        set_view(INIT);
    }

    private void get_wallpaper_from_current_view() {
        Gtk.Widget screen = stack.get_visible_child();

        if (view_state == INIT)
            wallpaper = ((InitScreen) screen).get_wallpaper();
        else if (view_state == EDIT)
            wallpaper = ((EditScreen) screen).get_wallpaper();
        else if (view_state == FINISH)
            wallpaper = ((FinishScreen) screen).get_wallpaper();
    }

    private void set_wallpaper_to_current_view() {
        Gtk.Widget screen = stack.get_visible_child();

        if (view_state == INIT)
            ((InitScreen) screen).set_wallpaper(wallpaper);
        else if (view_state == EDIT)
            ((EditScreen) screen).set_wallpaper(wallpaper);
        else if (view_state == FINISH)
            ((FinishScreen) screen).set_wallpaper(wallpaper);
    }

    private void set_view(ViewState next_view) {
        if (view_state != NONE)
            get_wallpaper_from_current_view();

        stack.set_visible_child_name(next_view.to_string());

        if (next_view == EDIT || next_view == FINISH)
            left_btn_stack.set_visible_child_name(next_view.to_string());
        if (next_view == INIT || next_view == EDIT)
            right_btn_stack.set_visible_child_name(next_view.to_string());

        switch (next_view) {
            case INIT:
                left_btn_stack.hide();
                right_btn_stack.show();
                break;
            case EDIT:
                left_btn_stack.show();
                right_btn_stack.show();
                break;
            case FINISH:
                left_btn_stack.show();
                right_btn_stack.hide();
                break;
        }
        view_state = next_view;

        set_wallpaper_to_current_view();
    }

    private void on_next() {
        switch (view_state) {
            case INIT:
                set_view(EDIT);
                break;
        }
    }

    private void on_back() {
        switch (view_state) {
            case EDIT:
                set_view(INIT);
                break;
            case FINISH:
                set_view(EDIT);
                break;
        }
    }

    private void on_finish() {
        switch (view_state) {
            case EDIT:
                set_view(FINISH);
                break;
        }
    }

    private void on_show_about() {
        var about_dialog = new WallpaperCreator.AboutDialog();
        about_dialog.show();
    }
}

}

