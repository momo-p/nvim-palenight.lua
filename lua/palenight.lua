-- vim:fdm=marker
-- Vim Color File
-- Name:       nvim-palenight.lua
-- Maintainer: https://github.com/kyazdani42
-- License:    The MIT License (MIT)
-- Based On:   https://github.com/drewtempelmeyer/palenight.vim and vscode material palenight

-- Highlight Function And Color definitons {{{

local function highlight(group, styles)
    local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
    vim.api.nvim_command('highlight '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local palette = require("palenight-palette")

local bg_darker      = palette.bg_darker
local bg_dark        = palette.bg_dark
local bg             = palette.bg
local bg_light       = palette.bg_light
local bg_lighter     = palette.bg_lighter
local grey           = palette.grey
local red            = palette.red
local heavy_red      = palette.heavy_red
local green          = palette.green
local blue           = palette.blue
local yellow         = palette.yellow
local orange         = palette.orange
local purple         = palette.purple
local cyan           = palette.cyan
local fg             = palette.fg
local fg_light       = palette.fg_light
local fg_dark        = palette.fg_dark
local hollow         = palette.hollow
local hollow_lighter = palette.hollow_lighter
local white          = palette.white

-- }}}

-- Editor Highlight Groups {{{

local editor_syntax = {
    CursorLine   = { bg = bg },
    Cursor       = { fg = bg_dark, bg = yellow },
    Directory    = { fg = blue, gui = 'bold' },
    DiffAdd      = { fg = green },
    DiffChange   = { fg = yellow },
    DiffDelete   = { fg = red },
    DiffText     = { fg = blue },
    EndOfBuffer  = { bg = bg_dark, fg = bg_dark },
    ErrorMsg     = { fg = red, gui = 'bold' },
    VertSplit    = { bg = bg_dark, fg = bg },
    Folded       = { fg = fg_dark, gui = 'italic' },
    FoldColumn   = { fg = yellow },
    SignColumn   = { fg = yellow },
    IncSearch    = { bg = yellow, fg = bg },
    Substitute   = { bg = blue, fg = bg },
    LineNr       = { fg = fg_dark },
    CursorLineNr = { fg = fg },
    MatchParen   = { fg = cyan, gui = 'bold' },
    Normal       = { fg = fg_light, bg = bg_dark },
    NormalFloat  = { bg = bg_darker },
    Pmenu        = { bg = bg_darker, fg = fg_light },
    PmenuSel     = { bg = cyan, fg = bg_lighter, gui = 'bold' },
    PmenuSbar    = { bg = bg_lighter },
    PmenuThumb   = { bg = fg },
    Search       = { bg = hollow },
    SpecialKey   = { bg = bg_light },
    SpellBad     = { gui = 'underline', sp = red },
    SpellCap     = { gui = 'underline', sp = yellow },
    SpellLocal   = { gui = 'underline', sp = orange },
    SpellRare    = { gui = 'underline', sp = blue },
    TabLine      = { bg = bg, fg = fg_light },
    TabLineFill  = { bg = bg, fg = fg_light },
    TabLineSel   = { bg = cyan, fg = bg_dark, gui = 'bold'},
    Title        = { fg = green },
    Visual       = { bg = hollow_lighter },
    VisualNOS    = { bg = hollow_lighter },
    WarningMsg   = { fg = yellow, gui = 'italic' },
    Whitespace   = { bg = bg },

    -- git highlighting
    gitcommitComment        = { fg = fg_dark, gui = 'italic' },
    gitcommitUntracked      = { fg = fg_dark, gui = 'italic' },
    gitcommitDiscarded      = { fg = fg_dark, gui = 'italic' },
    gitcommitSelected       = { fg = fg_dark, gui = 'italic' },
    gitcommitUnmerged       = { fg = green },
    gitcommitBranch         = { fg = purple },
    gitcommitNoBranch       = { fg = purple },
    gitcommitDiscardedType  = { fg = red },
    gitcommitSelectedType   = { fg = green },
    gitcommitUntrackedFile  = { fg = cyan },
    gitcommitDiscardedFile  = { fg = red },
    gitcommitDiscardedArrow = { fg = red },
    gitcommitSelectedFile   = { fg = green },
    gitcommitSelectedArrow  = { fg = green },
    gitcommitUnmergedFile   = { fg = yellow },
    gitcommitUnmergedArrow  = { fg = yellow },
    gitcommitSummary        = { fg = fg_light },
    gitcommitOverflow       = { fg = red },
    gitcommitOnBranch      = {},
    gitcommitHeader        = {},
    gitcommitFile          = {},

    -- User dependent groups, probably useless to change the default:
    Conceal      = {},
    ModeMsg      = {},
    MsgArea      = {},
    MsgSeparator = {},
    MoreMsg      = {},
    NonText      = {},
    Question     = {},
    QuickFixLine = {},
    StatusLine   = {},
    StatusLineNC = {},
    WildMenu     = {}
}

for group, styles in pairs(editor_syntax) do
    highlight(group, styles)
end

-- }}}

-- Vim Default Code Syntax {{{

local code_syntax = {
    Comment        = { fg = fg_dark, gui = 'italic' },
    Constant       = { fg = cyan },
    String         = { fg = green },
    Character      = { fg = green, gui = 'bold' },
    Number         = { fg = orange },
    Float          = { fg = orange },
    Boolean        = { fg = orange },

    Identifier     = { fg = fg_light },
    Function       = { fg = cyan, gui = 'italic' },

    Statement      = { fg = blue, gui = 'italic' },
    Conditional    = { fg = cyan, gui = 'italic' },
    Repeat         = { fg = cyan, gui = 'italic' },
    Label          = { fg = cyan, gui = 'italic' },
    Exception      = { fg = cyan, gui = 'italic' },
    Operator       = { fg = cyan },
    Keyword        = { fg = purple },

    Include        = { fg = blue },
    Define         = { fg = purple },
    Macro          = { fg = purple },
    PreProc        = { fg = yellow },
    PreCondit      = { fg = yellow },

    Type           = { fg = yellow },
    StorageClass   = { fg = yellow },
    Structure      = { fg = yellow },
    Typedef        = { fg = yellow },

    Special        = { fg = blue },
    SpecialChar    = {},
    Tag            = { fg = orange },
    SpecialComment = { fg = fg_dark, gui = 'bold' },
    Debug          = {},
    Delimiter      = {},

    Ignore         = {},
    Underlined     = { gui = 'underline' },
    Error          = { fg = heavy_red },
    Todo           = { fg = purple, gui = 'bold' },
  }

for group, styles in pairs(code_syntax) do
    highlight(group, styles)
end

-- }}}

-- Plugin Highlight Groups {{{

local plugin_syntax = {
    GitGutterAdd           = { fg = green },
    GitGutterChange        = { fg = yellow },
    GitGutterDelete        = { fg = red },
    GitGutterChangeDelete  = { fg = orange },

    diffAdded              = { fg = green },
    diffRemoved            = { fg = heavy_red },
}

for group, styles in pairs(plugin_syntax) do
    highlight(group, styles)
end

-- }}}

-- Syntax Plugin And Language Highlight Groups {{{

local lang_syntax = {
    xmlEndTag         = { fg = cyan, gui = 'italic' },
    -- lua.vim
    luaTable          = { fg = fg_light },
    luaBraces         = { fg = cyan },
    luaIn             = { fg = cyan, gui = 'italic' },
    -- lua polyglot (tbastos/vim-lua)
    luaFunc           = { fg = blue },
    luaFuncCall       = { fg = blue },
    luaFuncName       = { fg = blue },
    luaBuiltIn        = { fg = blue },
    luaLocal          = { fg = purple },
    luaSpecialValue   = { fg = purple },
    luaStatement      = { fg = purple },
    luaFunction       = { fg = cyan, gui = 'italic' },
    luaSymbolOperator = { fg = cyan },
    luaConstant       = { fg = orange },

    -- zsh.vim
    zshTodo            = code_syntax.Todo,
    zshComment         = code_syntax.Comment,
    zshPreProc         = code_syntax.PreProc,
    zshString          = code_syntax.String,
    zshStringDelimiter = { fg = cyan },
    zshPrecommand      = { fg = blue },
    zshKeyword         = code_syntax.Function,
    zshCommands        = { fg = blue },
    zshOptStart        = { fg = blue, gui = 'italic' },
    zshOption          = { fg = cyan, gui = 'italic' },
    zshNumber          = code_syntax.Number,
    zshSubst           = { fg = yellow },
    zshSubstDelim      = { fg = cyan },

    -- rust polyglot (rust.vim)
    rustKeyword     = { fg = orange },
    rustFuncCall    = { fg = blue },
    rustModPathSep  = { fg = cyan },
    rustIdentifier  = { fg = fg_light },
    rustFuncName    = { fg = blue },
    rustSigil       = { fg = cyan },
    rustMacro       = { fg = blue },
    rustStorage     = { fg = orange },
    rustModPath     = { fg = fg_light },
    rustEnumVariant = { fg = fg_light },
    rustStructure   = { fg = orange },
    rustTypedef     = { fg = orange },


    -- javascript polyglot (pangloss/vim-javascript)
    jsFunction            = { fg = cyan, gui = 'italic' },
    jsFuncName            = { fg = blue },
    jsImport              = { fg = cyan, gui = 'italic' },
    jsFrom                = { fg = cyan, gui = 'italic' },
    jsStorageClass        = { fg = purple },
    jsAsyncKeyword        = { fg = cyan, gui = 'italic' },
    jsForAwait            = { fg = cyan, gui = 'italic' },
    jsArrowFunction       = { fg = purple },
    jsReturn              = { fg = purple },
    jsFuncCall            = { fg = blue },
    jsFuncBraces          = { fg = cyan },
    jsExport              = { fg = cyan, gui = 'italic' },
    jsGlobalObjects       = { fg = yellow },
    jsxTagName            = { fg = red },
    jsxComponentName      = { fg = yellow },
    jsxAttrib             = { fg = purple },
    jsxBraces             = { fg = cyan },
    jsTemplateBraces      = { fg = cyan },
    jsFuncParens          = { fg = cyan },
    jsDestructuringBraces = { fg = cyan },
    jsObjectBraces        = { fg = cyan },
    jsObjectKey           = { fg = red },
    jsObjectShorthandProp = { fg = fg_light },
    jsNull                = { fg = orange },

    typescriptOperator          = { fg = cyan },
    typescriptAsyncFuncKeyword  = { fg = cyan, gui = 'italic' },
    typescriptCall              = { fg = fg_light },
    typescriptBraces            = { fg = cyan },
    typescriptTemplateSB        = { fg = cyan },
    typescriptTry               = { fg = cyan, gui = 'italic' },
    typescriptExceptions        = { fg = cyan, gui = 'italic' },
    typescriptOperator          = { fg = cyan, gui = 'italic' },
    typescriptExport            = { fg = cyan, gui = 'italic' },
    typescriptStatementKeyword  = { fg = cyan, gui = 'italic' },
    typescriptImport            = { fg = cyan, gui = 'italic' },
    typescriptArrowFunc         = { fg = purple },
    typescriptArrowFuncArg      = { fg = fg_light },
    typescriptArrayMethod       = { fg = blue },
    typescriptStringMethod      = { fg = blue },
    typescriptTypeReference     = { fg = yellow },
    typescriptObjectLabel       = { fg = red },
    typescriptParens            = { fg = fg_light },
    typescriptTypeBrackets      = { fg = cyan },
    typescriptXHRMethod         = { fg = blue },
    typescriptResponseProp      = { fg = blue },
    typescriptBOMLocationMethod = { fg = blue },
    typescriptHeadersMethod     = { fg = blue },
    typescriptVariable          = { fg = purple },

    htmlTag = { fg = cyan },
    htmlEndTag = { fg = cyan },
}

for group, styles in pairs(lang_syntax) do
    highlight(group, styles)
end

-- }}}

-- Setting Neovim Terminal Color {{{

vim.g.terminal_color_0          = bg_dark
vim.g.terminal_color_1          = red
vim.g.terminal_color_2          = green
vim.g.terminal_color_3          = yellow
vim.g.terminal_color_4          = blue
vim.g.terminal_color_5          = purple
vim.g.terminal_color_6          = cyan
vim.g.terminal_color_7          = fg
vim.g.terminal_color_8          = grey
vim.g.terminal_color_9          = red
vim.g.terminal_color_10         = green
vim.g.terminal_color_11         = orange
vim.g.terminal_color_12         = blue
vim.g.terminal_color_13         = purple
vim.g.terminal_color_14         = cyan
vim.g.terminal_color_15         = white
vim.g.terminal_color_background = bg_dark
vim.g.terminal_color_foreground = fg_light

-- }}}

return {
    bg_darker      = bg_darker,
    bg_dark        = bg_dark,
    bg             = bg,
    bg_light       = bg_light,
    bg_lighter     = bg_lighter,
    grey           = grey,
    red            = red,
    heavy_red      = heavy_red,
    green          = green,
    blue           = blue,
    yellow         = yellow,
    orange         = orange,
    purple         = purple,
    cyan           = cyan,
    fg             = fg,
    fg_light       = fg_light,
    fg_dark        = fg_dark,
    hollow         = hollow,
    hollow_lighter = hollow_lighter,
    white          = white
}
