local M = {}

M.options = {
  nvchad_branch = "v2.0",
}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  transparency = false,
  lsp_semantic_tokens = false, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  -- https://github.com/NvChad/base46/tree/v2.0/lua/base46/extended_integrations
  extended_integrations = {}, -- these aren't compiled by default, ex: "alpha", "notify"

  -- cmp themeing
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "vscode", -- default/minimal/vscode
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
     separator_style = "default",

    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    header = {
      "                                                                         ",
      "                               :                                         ",
      " L.                     ,;    t#,                                        ",
      " EW:        ,ft       f#i    ;##W.              t                        ",
      " E##;       t#E     .E#t    :#L:WE              Ej            ..       : ",
      " E###t      t#E    i#W,    .KG  ,#D  t      .DD.E#,          ,W,     .Et ",
      " E#fE#f     t#E   L#D.     EE    ;#f EK:   ,WK. E#t         t##,    ,W#t ",
      " E#t D#G    t#E :K#Wfff;  f#.     t#iE#t  i#D   E#t        L###,   j###t ",
      " E#t  f#E.  t#E i##WLLLLt :#G     GK E#t j#f    E#t      .E#j##,  G#fE#t ",
      " E#t   t#K: t#E  .E#L      ;#L   LW. E#tL#i     E#t     ;WW; ##,:K#i E#t ",
      " E#t    ;#W,t#E    f#E:     t#f f#:  E#WW,      E#t    j#E.  ##f#W,  E#t ",
      " E#t     :K#D#E     ,WW;     f#D#;   E#K:       E#t  .D#L    ###K:   E#t ",
      " E#t      .E##E      .D#;     G#t    ED.        E#t :K#t     ##D.    E#t ",
      " ..         G#E        tt      t     t          E#t ...      #G      ..  ",
      "             fE                                 ,;.          j           ",
      "              ,                                                          ",
      "                                                                         ",
	},

    buttons = {},
  },

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = {
    signature = {
      disabled = false,
      silent = true,
    },
  },
}

M.plugins = "" -- path i.e "custom.plugins", so make custom/plugins.lua file

M.lazy_nvim = require "plugins.configs.lazy_nvim" -- config for lazy.nvim startup options

M.mappings = require "core.mappings"

return M
