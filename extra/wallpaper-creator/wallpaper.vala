public class WallpaperCreator.Wallpaper : Object {
    public string name;
    public string kind;
    public string file_path = "";
    public string asset_path = "";
    public string thumbnail_path = "";
    public string web_page_url = "";

    public bool wallpaper_parallax = false;

    public DateTime date_time;
    public Asset asset;

    public Wallpaper() {
    }

}

public class WallpaperCreator.DateTime : Object {
    public bool visible { get; set; default = true; }
    public bool parallax { get; set; default = false; }

    public int margin_vert { get; set; default = 0; }
    public int margin_horiz { get; set; default = 0; }

    public string position { get; set; }
    public string alignment { get; set; }

    public bool always_on_top { get; set; default = true; }

    public Gdk.RGBA font_color { get; set; }
    public Gdk.RGBA shadow_color { get; set; }

    public string time_font { get; set; }
    public int time_font_size { get; set; default = 12; }
    public string date_font { get; set; }
    public int date_font_size { get; set; default = 12; }

    public DateTime() {
        Object();
    }
}

public class WallpaperCreator.Asset : Object {
    public bool visible { get; set; default = false; }

    public string animation_type { get; set; default = ""; }
    public int animation_speed { get; set; default = 0; }

    public Asset() {
        Object();
    }
}
