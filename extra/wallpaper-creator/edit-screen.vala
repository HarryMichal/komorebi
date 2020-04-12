namespace WallpaperCreator {

[GtkTemplate(ui = "/ui/wallpaper-creator/edit_screen.ui")]
public class EditScreen : Gtk.Box {
    [GtkChild]
    private Gtk.Switch parallax_switch;
    [GtkChild]
    private Gtk.Switch datetime_switch;
    [GtkChild]
    private Gtk.Switch datetime_parallax_switch;
    [GtkChild]
    private Gtk.ComboBox datetime_position_combo;
    [GtkChild]
    private Gtk.SpinButton datetime_margin_vert_spinner;
    [GtkChild]
    private Gtk.SpinButton datetime_margin_horiz_spinner;
    [GtkChild]
    private Gtk.ComboBox datetime_alignment_combo;
    [GtkChild]
    private Gtk.ColorButton datetime_font_color_button;
    [GtkChild]
    private Gtk.ColorButton datetime_shadow_color_button;
    [GtkChild]
    private Gtk.FontButton datetime_time_font_button;
    [GtkChild]
    private Gtk.FontButton datetime_date_font_button;
    [GtkChild]
    private Gtk.Switch layer_visible_switch;
    [GtkChild]
    private Gtk.ComboBox animation_type_combo;
    [GtkChild]
    private Gtk.SpinButton animation_speed_spinner;

    private Wallpaper wallpaper;

    EditScreen() {
        Object();

        setup_actions();
    }

    void setup_actions() {
        parallax_switch.changed.connect(() => {
            wallpaper.wallpaper_parallax = parallax_switch.get_state();
        });

        datetime_switch.changed.connect(() => {
            wallpaper.date_time.visible = datetime_switch.get_state();
        });

        datetime_parallax_switch.changed.connect(() => {
            wallpaper.date_time.parallax = datetime_parallax_switch.get_state();
        });

        datetime_position_combo.changed.connect(() => {
            wallpaper.date_time.position = datetime_position_combo.get_active_id();
        });

        datetime_margin_vert_spinner.value_changed.connect(() => {
            wallpaper.date_time.margin_vert = datetime_margin_vert_spinner.get_value_as_int();
        });

        datetime_margin_horiz_spinner.value_changed.connect(() => {
            wallpaper.date_time.margin_horiz = datetime_margin_horiz_spinner.get_value_as_int();
        });

        datetime_alignment_combo.changed.connect(() => {
            wallpaper.date_time.alignment = datetime_alignment_combo.get_active_id();
        });

        datetime_font_color_button.color_set.connect(() => {
            wallpaper.date_time.font_color = datetime_font_color_button.get_rgba();
        });

        datetime_shadow_color_button.color_set.connect(() => {
            wallpaper.date_time.shadow_color = datetime_shadow_color_button.get_rgba();
        });

        datetime_time_font_button.font_set.connect(() => {
            wallpaper.date_time.time_font = datetime_time_font_button.get_font();
            wallpaper.date_time.time_font_size = datetime_time_font_button.get_font_size();
        });

        datetime_date_font_button.font_set.connect(() => {
            wallpaper.date_time.date_font = datetime_date_font_button.get_font();
            wallpaer.date_time.date_font_size = datetime_date_font_button.get_font_size();
        });

        layer_visible_switch.changed.connect(() => {
            wallpaper.asset.visible = layer_visible_switch.get_state();
        });

        animation_type_combo.changed.connect(() => {
            wallpaper.asset.animation_type = animation_type_combo.get_active_id();
        });

        animation_speed_spinner.changed.connect(() => {
            wallpaper.asset.animation_speed = animation_sped_spinner.get_value_as_int();
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

}
