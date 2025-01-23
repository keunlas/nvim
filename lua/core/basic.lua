local opt = vim.opt

local search_options = {
  incsearch = true,  -- 自动跳到第一个匹配的结果
  hlsearch = false,  -- 高亮显示搜索匹配结果实在是一言难尽
  ignorecase = true, -- 搜索时忽略大小写
  smartcase = true,  -- 智能的抑制忽略大小写
}

local appearance_options = {
  showmode = false,      -- 显示当前模式(插入, 普通, 可视)
  showcmd = true,        -- 显示当前输入的命令(右下角)
  cursorline = true,     -- 高亮鼠标所在行
  number = true,         -- 行号
  relativenumber = true, -- 相对行号
  numberwidth = 4,       -- 行号宽度
  pumheight = 10,        -- 原生vim弹出菜单的高度
  cmdheight = 1,         -- 原生vim输指令的地方的高度
  cmdwinheight = 1,      -- 命令行窗口高度
  showtabline = 2,       -- 总是显示制表符行
  splitbelow = true,     -- 强制新的水平分割窗口在下边
  splitright = true,     -- 强制新的垂直分割窗口在右边
  signcolumn = "yes",    -- 始终显示符号列，否则每次都会移动文本
}

local indent_options = {
  autoindent = true,  -- 回车后自动缩进一致
  smartindent = true, -- 智能缩进
  expandtab = true,   -- 自动将tab转空格
  shiftwidth = 2,     -- 统一shift缩进时每一级的字符数(>> << ==)
  tabstop = 2,        -- 显示tab为多少空格
  softtabstop = 2,    -- 自动将tab转成多少空格
}

local win_height = vim.fn.winheight(0)              -- 获取编辑器区域行高
local wrap_options = {
  wrap = false,                                     -- 将一行代码显示为一整行(自动换行)
  whichwrap = "<,>,[,]",                            -- whichwrap = "bs<>[]hl",
  linebreak = true,                                 -- 不会切开单词
  scrolloff = math.floor((win_height - 1) / 2),     -- 光标上下的最小屏幕行数
  sidescrolloff = math.floor((win_height - 1) / 2), -- 如果wrap为false，光标两侧的最小屏幕列数
}

local other_options = {
  backup = false,            -- 创建备份文件
  writebackup = false,       -- 当文件被一个程序打开时, 不允许被编辑
  swapfile = false,          -- 创建交换文件
  clipboard = "unnamedplus", -- 访问系统剪切板
  mouse = "a",               -- 允许使用鼠标
  fileencoding = "utf-8",    -- 文件编码
}

local extra_options = {
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
}


for k, v in pairs(search_options) do opt[k] = v end
for k, v in pairs(appearance_options) do opt[k] = v end
for k, v in pairs(indent_options) do opt[k] = v end
for k, v in pairs(wrap_options) do opt[k] = v end
for k, v in pairs(other_options) do opt[k] = v end
for k, v in pairs(extra_options) do opt[k] = v end
