------------------------------
-- customized awesome theme --
------------------------------

theme = {}

theme.font          = "terminus 8"

theme.bg_normal     = "#000000"
theme.bg_focus      = "#2f4f4f"
theme.bg_urgent     = "#8b0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#f5deb3"
theme.fg_focus      = "#ffa500"
theme.fg_urgent     = "#ffff00"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#2f4f4f"
theme.border_focus  = "#ffa500"
theme.border_marked = "#8b0000"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "~/.config/awesome/themes/redtheme/taglist/squarefw.png"
theme.taglist_squares_unsel = "~/.config/awesome/themes/redtheme/taglist/squarew.png"

theme.tasklist_floating_icon = "~/.config/awesome/themes/redtheme/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "~/.config/awesome/themes/redtheme/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/themes/redtheme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/themes/redtheme/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/themes/redtheme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/themes/redtheme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "~/.config/awesome/themes/redtheme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "~/.config/awesome/themes/redtheme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/themes/redtheme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/themes/redtheme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "~/.config/awesome/themes/redtheme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "~/.config/awesome/themes/redtheme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/themes/redtheme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/themes/redtheme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "~/.config/awesome/themes/redtheme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "~/.config/awesome/themes/redtheme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/themes/redtheme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/themes/redtheme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "~/.config/awesome/themes/redtheme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "~/.config/awesome/themes/redtheme/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg -f .config/awesome/themes/redtheme/pixels.jpg" }

-- You can use your own layout icons like this:
theme.layout_fairh = "~/.config/awesome/themes/redtheme/layouts/fairhw.png"
theme.layout_fairv = "~/.config/awesome/themes/redtheme/layouts/fairvw.png"
theme.layout_floating  = "~/.config/awesome/themes/redtheme/layouts/floatingw.png"
theme.layout_magnifier = "~/.config/awesome/themes/redtheme/layouts/magnifierw.png"
theme.layout_max = "~/.config/awesome/themes/redtheme/layouts/maxw.png"
theme.layout_fullscreen = "~/.config/awesome/themes/redtheme/layouts/fullscreenw.png"
theme.layout_tilebottom = "~/.config/awesome/themes/redtheme/layouts/tilebottomw.png"
theme.layout_tileleft   = "~/.config/awesome/themes/redtheme/layouts/tileleftw.png"
theme.layout_tile = "~/.config/awesome/themes/redtheme/layouts/tilew.png"
theme.layout_tiletop = "~/.config/awesome/themes/redtheme/layouts/tiletopw.png"
theme.layout_spiral  = "~/.config/awesome/themes/redtheme/layouts/spiralw.png"
theme.layout_dwindle = "~/.config/awesome/themes/redtheme/layouts/dwindlew.png"

theme.awesome_icon = "~/.config/awesome/icons/awesome16.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
