local sidebar = require("sidebar-nvim")
local opts = {
    width = 40,
    side = "right",
    hide_statusline = true,
    sections = { "todos" }
}

sidebar.setup(opts)
