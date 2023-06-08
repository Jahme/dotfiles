return {
  {
    'rose-pine/neovim', name = 'rose-pine', lazy = true,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      local kanastatus, kanagawa = pcall(require, 'kanagawa')
      if (not kanastatus) then return end

      kanagawa.setup({
        compile = false,  -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,    -- do not set background color
        dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = {
          -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "dragon", -- Load "wave" theme when 'background' option is not set
        background = {
          -- map the value of 'background' option to a theme
          dark = "dragon", -- try "dragon" !
          light = "lotus"
        },
      })
      vim.cmd([[colorscheme kanagawa]])
    end
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local foxstatus, nightfox = pcall(require, 'nightfox')
      if (not foxstatus) then return end

      nightfox.setup({
        options = {
          -- Compiled file's destination location
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = true,                -- Disable setting background
          terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false,              -- Non focused panes set to alternative background
          module_default = true,             -- Default enable value for modules
          colorblind = {
            enable = false,                  -- Enable colorblind support
            simulate_only = false,           -- Only show simulated colorblind colors and not diff shifted
            severity = {
              protan = 0,                    -- Severity [0,1] for protan (red)
              deutan = 0,                    -- Severity [0,1] for deutan (green)
              tritan = 0,                    -- Severity [0,1] for tritan (blue)
            },
          },
          styles = {
            -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
          inverse = {
            -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          modules = { -- List of various plugins and additional options
            -- ...
          },
        },
        palettes = {},
        specs = {},
        groups = {},
      })

      vim.cmd([[colorscheme nordfox]])
    end
  },
  {
    'cpea2506/one_monokai.nvim',
    lazy = true,
    priority = 1000,
    config = function()
      local monostatus, monokai = pcall(require, 'one_monokai')
      if (not monostatus) then return end

      monokai.setup({
        transparent = true,
        colors = {},
        themes = function(colors)
          return {}
        end,
      })

      vim.cmd([[colorscheme one_monokai]])
    end
  },
  {
    'Tsuzat/NeoSolarized.nvim',
    lazy = true,
    priority = 1000,
    config = function()
      local ok_status, NeoSolarized = pcall(require, 'NeoSolarized')
      if (not ok_status) then return end

      NeoSolarized.setup({
        style = 'dark',
        transparent = true,
        terminal_colors = true,
        enable_italics = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          string = { italic = true },
          underline = true,
          undercurl = true,
        },
        on_highlights = function(highlights, colors)
        end,
      })
    end
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = true,
    priority = 1000,
    config = function()
      local ok_status, cat = pcall(require, 'catppuccin')
      if (not ok_status) then return end

      cat.setup({
        flavor = 'mocha', -- latte, frappe, macchiato, mocha
        background = {
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = true,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        styles = {
          comments = { 'italic' },
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = false,
          mini = false,
        },
      })
      vim.cmd([[colorscheme catppuccin]])
    end
  },
  {
    'marko-cerovac/material.nvim',
    lazy = true,
    config = function()
      local matstatus, material = pcall(require, 'material')
      if (not matstatus) then return end

      material.setup({
        contrast = {
          terminal = false,            -- Enable contrast for the built-in terminal
          sidebars = false,            -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = false,    -- Enable contrast for floating windows
          cursor_line = false,         -- Enable darker background for the cursor line
          non_current_windows = false, -- Enable contrasted background for non-current windows
          filetypes = {},              -- Specify which filetypes get the contrasted (darker) background
        },

        styles = {
          -- Give comments style such as bold, italic, underline etc.
          comments = { --[[ italic = true ]] },
          strings = { --[[ bold = true ]] },
          keywords = { --[[ underline = true ]] },
          functions = { --[[ bold = true, undercurl = true ]] },
          variables = {},
          operators = {},
          types = {},
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          -- Available plugins:
          -- "dap",
          -- "dashboard",
          -- "gitsigns",
          -- "hop",
          -- "indent-blankline",
          "lspsaga",
          -- "mini",
          -- "neogit",
          -- "neorg",
          "nvim-cmp",
          -- "nvim-navic",
          -- "nvim-tree",
          "nvim-web-devicons",
          -- "sneak",
          "telescope",
          -- "trouble",
          -- "which-key",
        },

        disable = {
          colored_cursor = false, -- Disable the colored cursor
          borders = false,        -- Disable borders between verticaly split windows
          background = true,      -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
          term_colors = false,    -- Prevent the theme from setting terminal colors
          eob_lines = false       -- Hide the end-of-buffer lines
        },

        high_visibility = {
          lighter = false, -- Enable higher contrast text for lighter style
          darker = false   -- Enable higher contrast text for darker style
        },

        lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = true,      -- Load parts of the theme asyncronously for faster startup (turned on by default)

        custom_colors = nil,       -- If you want to everride the default colors, set this to a function

        custom_highlights = {},    -- Overwrite highlights with your own

      })
    end
  },
  {
    'Everblush/nvim',
    name = 'everblush',
    lazy = true,
    config = function()
      local blushstatus, everblush = pcall(require, 'everblush')
      if (not blushstatus) then return end

      everblush.setup({
        -- Default options
        override = {
          Normal = { fg = '#ffffff', bg = 'comment'},
        },
        transparent_background = true,
        nvim_tree = {
          contrast = false,
        },
      })
    end
  }
}
