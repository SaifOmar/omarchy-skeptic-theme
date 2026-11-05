-- Naysayer for Neovim, shipped by the Omarchy theme.
-- Reproduces the highlight groups from naysayer-theme.el (Jonathan Blow's
-- Emacs colours) on top of aether.nvim, which keeps LazyVim's plugin groups.
--
-- aether's on_highlights hook is declared but never called in v3, so the
-- exact naysayer faces are applied from a ColorScheme autocmd instead.

local C = {
  bg = "#062329",
  bg_highlight = "#0b3335",
  fg = "#d1b897",
  comment = "#44b340",
  string = "#2ec09c",
  constant = "#7ad0c6",
  keyword = "#ffffff",
  type = "#8cde94",
  variable = "#c1d1e3",
  selection = "#0000ff",
  cursor = "#ffffff",
  gutter = "#126367",
  error = "#ff0000",
  warning = "#ffaa00",
  yellow = "#E6DB74",
}

local groups = {
  -- UI
  Cursor = { fg = C.bg, bg = C.cursor },
  lCursor = { fg = C.bg, bg = C.cursor },
  CursorIM = { fg = C.bg, bg = C.cursor },
  Visual = { bg = C.selection },
  VisualNOS = { bg = C.selection },
  Search = { bg = C.selection, fg = C.keyword },
  IncSearch = { bg = C.yellow, fg = C.bg },
  CurSearch = "IncSearch",
  LineNr = { fg = C.gutter },
  LineNrAbove = { fg = C.gutter },
  LineNrBelow = { fg = C.gutter },
  CursorLineNr = { fg = C.cursor },
  CursorLine = { bg = C.bg_highlight },
  CursorColumn = { bg = C.bg_highlight },
  ColorColumn = { bg = C.bg_highlight },
  StatusLine = { fg = C.fg, bg = C.bg },
  StatusLineNC = { fg = C.gutter, bg = C.bg },
  TabLine = { fg = C.fg, bg = C.bg },
  TabLineFill = { bg = C.bg },
  TabLineSel = { fg = C.bg, bg = C.fg },
  WinBar = { fg = C.fg, bg = C.bg, bold = true },
  WinBarNC = { fg = C.gutter, bg = C.bg },
  WinSeparator = { fg = C.gutter },
  VertSplit = { fg = C.gutter },
  Folded = { fg = C.comment, bg = C.bg },
  FoldColumn = { fg = C.comment },
  SignColumn = { fg = C.gutter },
  Pmenu = { fg = C.fg, bg = C.bg },
  PmenuSel = { fg = C.keyword, bg = C.selection },
  PmenuSbar = { bg = C.bg_highlight },
  PmenuThumb = { bg = C.gutter },
  MatchParen = { fg = C.keyword, bold = true },
  ErrorMsg = { fg = C.error, bold = true },
  WarningMsg = { fg = C.warning, bold = true },
  MoreMsg = { fg = C.string },
  Question = { fg = C.string },
  Directory = { fg = C.string },
  Title = { fg = C.keyword, bold = true },
  NonText = { fg = C.gutter },
  Whitespace = { fg = C.gutter },
  SpecialKey = { fg = C.gutter },
  QuickFixLine = { bg = C.selection, fg = C.keyword },
  DiagnosticError = { fg = C.error },
  DiagnosticWarn = { fg = C.warning },
  DiagnosticInfo = { fg = C.string },
  DiagnosticHint = { fg = C.type },
  DiagnosticUnderlineError = { undercurl = true, sp = C.error },
  DiagnosticUnderlineWarn = { undercurl = true, sp = C.warning },
  DiagnosticUnderlineInfo = { undercurl = true, sp = C.string },
  DiagnosticUnderlineHint = { undercurl = true, sp = C.type },

  -- Syntax (naysayer-theme.el font-lock faces)
  Comment = { fg = C.comment },
  SpecialComment = { fg = C.comment },
  String = { fg = C.string },
  Character = { fg = C.string },
  Constant = { fg = C.constant },
  Number = { fg = C.constant },
  Float = { fg = C.constant },
  Boolean = { fg = C.constant },
  Keyword = { fg = C.keyword },
  Conditional = { fg = C.keyword },
  Repeat = { fg = C.keyword },
  Exception = { fg = C.keyword },
  Statement = { fg = C.keyword },
  Function = { fg = C.keyword },
  Type = { fg = C.type },
  Typedef = { fg = C.type },
  StorageClass = { fg = C.type },
  Structure = { fg = C.type },
  Identifier = { fg = C.variable },
  PreProc = { fg = C.type },
  Include = { fg = C.type },
  Define = { fg = C.type },
  Macro = { fg = C.type },
  PreCondit = { fg = C.type },
  Special = { fg = C.type },
  Delimiter = { fg = C.fg },
  Operator = { fg = C.fg },
  Label = { fg = C.type },
  Todo = { fg = C.bg, bg = C.warning, bold = true },

  -- Treesitter
  ["@comment"] = "Comment",
  ["@comment.documentation"] = "Comment",
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.regexp"] = "String",
  ["@string.escape"] = "String",
  ["@string.special"] = "String",
  ["@character"] = "Character",
  ["@character.special"] = "String",
  ["@number"] = "Number",
  ["@number.float"] = "Number",
  ["@boolean"] = "Boolean",
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Constant",
  ["@constant.macro"] = "Macro",
  ["@keyword"] = "Keyword",
  ["@keyword.function"] = "Keyword",
  ["@keyword.operator"] = "Keyword",
  ["@keyword.return"] = "Keyword",
  ["@keyword.conditional"] = "Keyword",
  ["@keyword.repeat"] = "Keyword",
  ["@keyword.exception"] = "Keyword",
  ["@keyword.import"] = "Include",
  ["@keyword.storage"] = "Type",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@function"] = "Function",
  ["@function.call"] = "Function",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "Function",
  ["@function.builtin"] = "Keyword",
  ["@function.macro"] = "Macro",
  ["@constructor"] = "Type",
  ["@type"] = "Type",
  ["@type.builtin"] = "Type",
  ["@type.definition"] = "Type",
  ["@type.qualifier"] = "Keyword",
  ["@variable"] = { fg = C.variable },
  ["@variable.builtin"] = { fg = C.keyword },
  ["@variable.member"] = { fg = C.variable },
  ["@variable.parameter"] = { fg = C.variable },
  ["@property"] = { fg = C.variable },
  ["@field"] = { fg = C.variable },
  ["@namespace"] = "Include",
  ["@module"] = "Include",
  ["@label"] = "Type",
  ["@operator"] = { fg = C.fg },
  ["@punctuation.bracket"] = { fg = C.fg },
  ["@punctuation.delimiter"] = { fg = C.fg },
  ["@punctuation.special"] = { fg = C.fg },
  ["@tag"] = "Type",
  ["@tag.attribute"] = { fg = C.variable },
  ["@tag.delimiter"] = { fg = C.fg },
  ["@markup.heading"] = { fg = C.keyword, bold = true },
  ["@markup.strong"] = { bold = true },
  ["@markup.italic"] = { italic = true },
  ["@markup.link"] = { fg = C.string },
  ["@markup.link.url"] = { fg = C.string, underline = true },
  ["@markup.raw"] = "String",
  ["@markup.quote"] = "Comment",

  -- Rainbow delimiters, in naysayer's rotation
  RainbowDelimiterRed = { fg = "#F92672" },
  RainbowDelimiterOrange = { fg = "#FD971F" },
  RainbowDelimiterYellow = { fg = "#E6DB74" },
  RainbowDelimiterGreen = { fg = "#A6E22E" },
  RainbowDelimiterBlue = { fg = "#66D9EF" },
  RainbowDelimiterViolet = { fg = "#AE81FF" },
  RainbowDelimiterCyan = { fg = "#A1EFE4" },
}

local function apply()
  local set = vim.api.nvim_set_hl

  for name, hl in pairs(groups) do
    if type(hl) == "string" then
      set(0, name, { link = hl })
    else
      set(0, name, hl)
    end
  end
end

local function apply_after_transparency()
  apply()
  -- The Omarchy transparency snippet is sourced a few ms after a theme
  -- reload; re-apply last so the inverted statusline and selection survive.
  vim.defer_fn(apply, 80)
end

-- Status bar in the editor's own text colours: dark background, tan text,
-- with only the mode label tinted from the same palette.
local function lualine_mode(accent)
  return {
    a = { bg = C.bg_highlight, fg = accent, gui = "bold" },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
    x = { bg = C.bg, fg = C.fg },
    y = { bg = C.bg, fg = C.fg },
    z = { bg = C.bg, fg = C.fg },
  }
end

local lualine_theme = {
  normal = lualine_mode(C.fg),
  insert = lualine_mode(C.comment),
  visual = lualine_mode(C.keyword),
  replace = lualine_mode(C.warning),
  command = lualine_mode(C.string),
  inactive = {
    a = { bg = C.bg, fg = C.gutter, gui = "bold" },
    b = { bg = C.bg, fg = C.gutter },
    c = { bg = C.bg, fg = C.gutter },
    x = { bg = C.bg, fg = C.gutter },
    y = { bg = C.bg, fg = C.gutter },
    z = { bg = C.bg, fg = C.gutter },
  },
}

return {
  {
    "omacom/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = C.bg,
        dark_bg = "#051e23",
        darker_bg = "#041a1d",
        lighter_bg = C.bg_highlight,

        fg = C.fg,
        dark_fg = "#8a7f6a",
        light_fg = "#e6d9c3",
        bright_fg = C.keyword,
        muted = C.gutter,

        red = C.error,
        yellow = C.yellow,
        orange = "#FD971F",
        green = C.comment,
        cyan = C.string,
        blue = "#66D9EF",
        magenta = "#FD5FF0",
        brown = "#7b5b55",

        bright_red = "#ff3333",
        bright_yellow = "#f0e68c",
        bright_green = "#6ad966",
        bright_cyan = "#5dd9c4",
        bright_blue = "#8ae7f2",
        bright_magenta = "#fe8af5",

        accent = C.fg,
        cursor = C.cursor,
        foreground = C.fg,
        background = C.bg,
        selection = C.selection,
        selection_foreground = C.keyword,
        selection_background = C.selection,
      },
      on_colors = function(c)
        c.comment = C.comment
        c.fg_gutter = C.gutter
        c.dark3 = C.gutter
        c.fg_dark = C.fg
        c.dark5 = C.fg
        c.bg_highlight = C.bg_highlight
        c.cursorline_bg = C.bg_highlight
        c.bg_visual = C.selection
        c.bg_search = C.selection
        c.error = C.error
        c.warning = C.warning
        c.hint = C.type
        c.info = C.string
      end,
    },
    init = function()
      local group = vim.api.nvim_create_augroup("NaysayerTheme", { clear = true })
      vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
        group = group,
        pattern = "*",
        callback = apply_after_transparency,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = lualine_theme,
      },
    },
  },
}
