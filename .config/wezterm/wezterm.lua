local wezterm = require 'wezterm';

return {
    colors = {
        foreground = "#FFF9EB",
        background = "#1D1D1D",

        cursor_bg = "#a3b3cc",
        cursor_border = "#a3b3cc",
        cursor_fg = "#dcdfe4",
        selection_bg = "#474e5d",
        selection_fg = "#dcdfe4",

        ansi = {"#282c34","#e06c75","#98c379","#e5c07b","#61afef","#c678dd","#56b6c2","#dcdfe4"},
        brights = {"#282c34","#e06c75","#98c379","#e5c07b","#61afef","#c678dd","#56b6c2","#dcdfe4"}
    },
    enable_tab_bar = false,
    font = wezterm.font("Iosevka Custom", {weight="Medium"}),
    font_size = 11.0,
}
