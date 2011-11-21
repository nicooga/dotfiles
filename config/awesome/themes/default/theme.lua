---------------------------
-- Default awesome theme --
---------------------------

local theme_root = "/home/emmanuel/.config/awesome/themes/default"

theme = {}

theme.font          = "Bitstream Vera Sans 8"

theme.fg_normal     = "#ff9640"
theme.bg_normal     = "#a63000"

theme.fg_focus      = "#a64b00"
theme.bg_focus      = "#ff9900"

theme.fg_urgent     = "#ff0000"
theme.bg_urgent     = "#ffb273"

theme.fg_minimize   = "#ff0000"
theme.bg_minimize   = "#444444"

theme.border_width  = "2"
theme.border_normal = "#962000"
theme.border_focus  = "#ff9900"
theme.border_marked = "#ff0000"

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
theme.taglist_squares_sel   = theme_root.."/taglist/squarefw.png"
theme.taglist_squares_unsel = theme_root.."/taglist/squarew.png"

theme.tasklist_floating_icon = theme_root.."/tasklist/feather.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_root.."/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme_root.."/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme_root.."/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme_root.."/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme_root.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme_root.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme_root.."/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme_root.."/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme_root.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme_root.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme_root.."/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme_root.."/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme_root.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme_root.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme_root.."/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme_root.."/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme_root.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme_root.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme_root.."/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg /home/emmanuel/Wallpaper/tiger.jpg" }

-- You can use your own layout icons like this:
theme.layout_fairh = theme_root.."/layouts/fairhw.png"
theme.layout_fairv = theme_root.."/layouts/fairvw.png"
theme.layout_floating  = theme_root.."/layouts/floatingw.png"
theme.layout_magnifier = theme_root.."/layouts/magnifierw.png"
theme.layout_max = theme_root.."/layouts/maxw.png"
theme.layout_fullscreen = theme_root.."/layouts/fullscreenw.png"
theme.layout_tilebottom = theme_root.."/layouts/tilebottomw.png"
theme.layout_tileleft   = theme_root.."/layouts/tileleftw.png"
theme.layout_tile = theme_root.."/layouts/tilew.png"
theme.layout_tiletop = theme_root.."/layouts/tiletopw.png"
theme.layout_spiral  = theme_root.."/layouts/spiralw.png"
theme.layout_dwindle = theme_root.."/layouts/dwindlew.png"

theme.awesome_icon = theme_root.."/awesome64.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80
