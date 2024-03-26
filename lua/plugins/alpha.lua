---@diagnostic disable: need-check-nil
return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
             [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠛⢦⡀⠀⠀⠀       _______                __           .__                      ]],
             [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠱⡀⠀⠀       \      \   ____  ____ |  | _______  |__|_______ ____   ____  ]],
             [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠒⠉⠉⠉⠉⠑⠒⠲⠤⢄⣀⡏⠉⠁⠒⠢⢷⠀⠀       /   |   \_/ __ \/  _ \|  |/ /\__  \ |  \___   // __ \ /    \ ]],
             [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠋⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠈⠑⠄⠀⠀⠀⠀⡇⠀      /    |    \  ___(  <_> )    <  / __ \|  |/    /\  ___/|   |  \]],
             [[⢀⣠⡤⠖⠚⡏⠉⠉⠁⠉⠉⠉⠁⠀⠠⢄⠀⠎⠁⠀⠰⣀⠀⠀⠄⠈⠙⠆⠈⠂⠀⠀⠀⢸⠀      \____|__  /\___  >____/|__|_ \(____  /__/_____ \\___  >___|  /]],
             [[⠻⣧⡀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠒⠀⣀⡤⠤⠖⡒⠿⠥⣄⡀⠀⢠⠒⠄⠀⠀⠀⢸⠀              \/     \/           \/     \/         \/    \/     \/ ]],
             [[⠀⠀⠙⠲⢼⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠛⠁⢀⢴⡘⠰⡀⡦⡀⡍⠲⢄⠁⠁⠀⠀⠀⢸⠀                ___________                              _______    ]],
             [[⠀⠀⠀⠀⠀⠈⢉⠗⠀⠀⠀⠀⢀⠞⠁⡄⣠⣧⠎⠘⠁⠀⠣⠁⠱⡏⢆⠈⠳⡀⠀⠀⠀⢸⠀                \_   _____/ ________________             \   _  \   ]],
             [[⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⣠⠃⠀⢀⡇⠃⠁⠀⠀⠀⠀⠀⠀⠀⠡⠬⣼⡀⠙⡄⠀⠀⠸⡀        ______   |    __)__/ ___\_  __ \__  \     ______ /  /_\  \  ]],
             [[⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⢰⡇⠀⠀⢸⢹⠄⠀⠄⠀⠀⠀⠀⠀⠀⢀⣀⠉⢇⠀⣽⡄⠀⠀⡇       /_____/   |        \  \___|  | \// __ \_  /_____/ \  \_/   \ ]],
             [[⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⣏⢠⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⢪⢷⣸⠀⣹⣴⠀⠀⡇                /_______  /\___  >__|  (____  /           \_____  / ]],
             [[⠀⠀⠀⠀⠀⠀⢸⠀⠀⢰⠉⢌⣄⠟⣤⠀⣠⣀⠀⠀⠀⠀⠀⠀⢏⡵⠋⣾⣻⢡⠃⡇⡆⠀⡇                        \/     \/           \/                  \/  ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
      dashboard.button("h", "  Recently opened files", ":History<CR>"),
      dashboard.button("c", "  Open nvim config", ":e ~/.config/nvim/init.lua<CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
    }
    local handle = io.popen("fortune")
    local fortune = handle:read("*a")
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd([[autocmd User AlphaReady echo 'ready']])

    alpha.setup(dashboard.config)
  end,
}
