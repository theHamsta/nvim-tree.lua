local colors = require 'lib/config'.colors

local cmd = vim.api.nvim_command

local HIGHLIGHTS = {
    Symlink = { gui = 'bold', fg = colors.cyan },
    FolderName = { gui = 'bold', fg = colors.blue },
    FolderIcon = { fg = '#90a4ae' },

    ExecFile = { gui = 'bold', fg = colors.green },
    SpecialFile = { gui = 'bold,underline', fg = colors.yellow },
    ImageFile = { gui = 'bold', fg = colors.purple },
    MarkdownFile = { fg = colors.purple },
    LicenseIcon = { fg = colors.yellow },
    YamlIcon = { fg = colors.yellow },
    TomlIcon = { fg = colors.yellow },
    GitignoreIcon = { fg = colors.yellow },
    JsonIcon = { fg = colors.yellow },

    LuaIcon = { fg = '#42a5f5' },
    PythonIcon = { fg = colors.green },
    ShellIcon = { fg = colors.green },
    JavascriptIcon = { fg = colors.yellow },
    CIcon = { fg = colors.blue },
    ReactIcon = { fg = colors.cyan },
    HtmlIcon = { fg = colors.orange },
    RustIcon = { fg = colors.orange },
    VimIcon = { fg = colors.green },
    TypescriptIcon = { fg = colors.blue },

    GitDirty = { fg = colors.dark_red },
    GitStaged = { fg = colors.green },
    GitMerge = { fg = colors.orange },
    GitRenamed = { fg = colors.purple },
    GitNew = { fg = colors.yellow }
}

local LINKS = {
    Normal = 'Normal',
    EndOfBuffer = 'EndOfBuffer',
    CursorLine = 'CursorLine',
    VertSplit = 'VertSplit',
    CursorColumn = 'CursorColumn'
}

local function init_colors()
    for k, d in pairs(HIGHLIGHTS) do
        local gui = d.gui or 'NONE'
        vim.api.nvim_command('hi def LuaTree'..k..' gui='..gui..' guifg='..d.fg)
    end

    for k, d in pairs(LINKS) do
        vim.api.nvim_command('hi def link LuaTree'..k..' '..d)
    end
end

return {
    init_colors = init_colors
}
