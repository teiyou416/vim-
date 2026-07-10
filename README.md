# 我的 Vim 配置说明

本仓库通过 [vim-plug](https://github.com/junegunn/vim-plug) 管理插件，主配置在 `vimrc`，各插件的详细设置拆分在 `config/*.vim` 中，由 `vimrc` 底部的 `source` 语句加载。

## 目录结构

```
vimrc              " 入口配置：Plug 列表 + 通用设置 + 核心快捷键
config/            " 各插件的详细配置（按需被 vimrc source）
coc-settings.json  " coc.nvim 的语言服务器设置
plugged/           " vim-plug 安装插件的实际目录（已 gitignore，不纳入版本控制）
```

## 已安装并生效的插件

| 插件 | 作用 |
|---|---|
| [nerdtree](https://github.com/preservim/nerdtree) | 文件树侧边栏 |
| [vim-airline](https://github.com/vim-airline/vim-airline) + vim-airline-themes | 状态栏 / 标签栏 |
| [coc.nvim](https://github.com/neoclide/coc.nvim) | LSP / 自动补全 / 代码操作（见下方特别说明） |
| [rainbow](https://github.com/luochen1990/rainbow) | 彩虹括号高亮 |
| [nerdcommenter](https://github.com/preservim/nerdcommenter) | 快速注释/取消注释 |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | 自动补全括号/引号 |
| [indentLine](https://github.com/Yggdroot/indentLine) | 缩进参考线 |
| [tagbar](https://github.com/majutsushi/tagbar) | 代码结构大纲 |
| [rust.vim](https://github.com/rust-lang/rust.vim) | Rust 语言支持（保存自动 `rustfmt`） |
| [syntastic](https://github.com/vim-syntastic/syntastic) | 语法检查 |
| [bracey.vim](https://github.com/turbio/bracey.vim) | 浏览器实时预览（HTML/CSS/JS），无自定义配置 |
| [autosuggest.vim](https://github.com/girishji/autosuggest.vim) | 输入建议，无自定义配置 |
| [vim-startify](https://github.com/mhinz/vim-startify) | 启动欢迎页，无自定义配置 |
| [ale](https://github.com/dense-analysis/ale) | 异步 Lint 引擎 |
| [fzf](https://github.com/junegunn/fzf) + fzf.vim | 模糊搜索（文件/内容/历史） |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | tmux 与 vim 窗格间无缝跳转 |
| [vimtex](https://github.com/lervag/vimtex) (`v2.15`) | LaTeX 支持 |
| [Vim-R](https://github.com/jalvesaq/Vim-R) | R 语言支持，无自定义配置 |
| [hackmd.vim](https://github.com/teiyou416/hackmd.vim) | 自己写的 HackMD 插件 |
| [vimspector](https://github.com/puremourning/vimspector) | 图形化调试器（断点/单步/变量查看），用法见下方专门章节 |

目前没有安装任何配色主题插件，使用 Vim 默认配色 + `set background=light`。

## 通用设置（vimrc）

- `set number`：显示行号
- `set clipboard=unnamedplus,unnamed`：与系统剪贴板同步
- `set hlsearch` / `incsearch`：搜索高亮 + 增量搜索
- `set splitbelow`：水平分屏时新窗口在下方
- `let mapleader = ' '`：Leader 键设为 **空格**
- `let maplocalleader = ','`（vimtex.vim 里设置）：Local Leader 为 `,`
- `let g:ale_linters_explicit=1`：ALE 只用明确配置的 linter
- `let g:coc_start_at_startup=1` 但 `let g:coc_enabled=0`（在 coc.vim 里设置）：coc 不会随 Vim 启动自动激活，需要手动 `:CocStart` 或用 `<C-c>` 调 `CocCommand`

## 快捷键一览

### 最核心

| 按键 | 模式 | 作用 |
|---|---|---|
| `jk` | 插入模式 | 退出到 Normal 模式（代替 `Esc`） |
| `<C-Left>` / `<C-Down>` / `<C-Up>` / `<C-Right>` | Normal | 切换到左/下/上/右窗口（`<C-w>h/j/k/l`） |

### 文件 / 搜索（fzf）

| 按键 | 作用 |
|---|---|
| `<leader>ff` | `:Files` 模糊查找文件 |
| `<leader>fg` | `:Rg` 全局文本搜索 |
| `<leader>fr` | `:History` 最近打开的文件 |

### 窗口 / 导航类插件

| 按键 | 作用 |
|---|---|
| `<C-n>` | `:NERDTreeToggle` 打开/关闭文件树 |
| `<leader>n` | `:NERDTreeFocus` 聚焦文件树 |
| `go` | `:TagbarToggle` 打开/关闭代码大纲 |
| `<F5>` | `:ALEToggle` 开关 ALE 检查 |

### 注释（nerdcommenter）

| 按键 | 模式 | 作用 |
|---|---|---|
| `gcc` | Normal / Visual | 切换注释 |

### Buffer 切换（Mac 特殊键位，Option+方向键实际发送的字符）

| 按键 | 作用 |
|---|---|
| `∆` (Option+j) | `:bp` 上一个 buffer |
| `˚` (Option+k) | `:bn` 下一个 buffer |
| `œ` (Option+q) | `:bd` 关闭 buffer |

### coc.nvim（需要先手动启用 coc）

| 按键 | 模式 | 作用 |
|---|---|---|
| `<Tab>` / `<S-Tab>` | 插入模式 | 补全菜单里下一个/上一个候选 |
| `<CR>` | 插入模式 | 确认选中的补全项 |
| `<c-space>` / `<c-o>` | 插入模式 | 手动触发补全 |
| `<leader>h` | Normal | 显示文档/悬浮提示 |
| `<leader>d` | Normal | `:CocList diagnostics` 诊断列表 |
| `<leader>-` / `<leader>=` | Normal | 跳到上一个/下一个诊断 |
| `<c-c>` | Normal | `:CocCommand` |
| `gd` | Normal | 跳转到定义 |
| `gD` | Normal | 新建 tab 后跳转到定义 |
| `gy` | Normal | 跳转到类型定义 |
| `gr` | Normal | 查找引用 |
| `<leader>rn` | Normal | 重命名符号 |
| `<leader>e` | Normal | `:CocCommand explorer` 打开 coc 文件浏览器 |
| `<leader>tr` | Normal | 划词翻译（coc-translator） |
| `<leader>a` | Visual | 对选中区域执行 code action |
| `<leader>aw` | Normal | 对当前单词执行 code action |
| `<leader>ts` | Normal | `:CocList tasks` |
| `<leader>y` | Normal | `:CocList -A --normal yank` 剪贴板历史 |
| `<C-l>` | 插入模式 | 展开代码片段（snippets） |
| `<C-e>` | 插入模式 | 展开并跳转片段 |
| `<C-e>` | Visual | 选择片段占位符 |
| `kf` / `af` | Visual/Operator | 函数内部/整体 text object |
| `kc` / `ac` | Visual/Operator | 类内部/整体 text object |

### vimspector 调试器（config/vimspector.vim）

| 按键 | 作用 |
|---|---|
| `<leader>vc` | 开始调试 / Continue（继续到下一个断点） |
| `<leader>vr` | 重新以同样的配置启动调试（Restart） |
| `<leader>vp` | 暂停（Pause） |
| `<leader>vx` | 停止调试（Stop） |
| `<leader>vb` | 在当前行切换断点（Toggle Breakpoint） |
| `<leader>vB` | 切换条件断点 / logpoint（Toggle Conditional Breakpoint） |
| `<leader>vf` | 给光标下的函数加函数断点（Add Function Breakpoint） |
| `<leader>vo` | 单步跳过（Step Over） |
| `<leader>vi` | 单步进入（Step Into） |
| `<leader>vO` | 单步跳出（Step Out） |
| `<leader>vu` | 运行到光标处（Run to Cursor） |

**为什么不用官方默认快捷键**：vimspector 的官方预设（`g:vimspector_enable_mappings = 'HUMAN'` 或 `'VISUAL_STUDIO'`）会把 `<F5>` 绑成"开始/继续调试"，但这个仓库里 `<F5>` 已经是 `:ALEToggle`。所以这里显式设置 `g:vimspector_enable_mappings = 'NONE'`，改用上表的 `<leader>v` 前缀，避免和 ALE 撞车。

**第一次用需要额外两步（vimspector 本身不负责这两件事）：**

1. **装调试适配器**：每种语言需要单独装对应的 debug adapter，在 vim 里执行：
   ```vim
   :VimspectorInstall debugpy       " Python
   :VimspectorInstall vscode-go     " Go
   :VimspectorInstall CodeLLDB      " C/C++/Rust
   :VimspectorInstall vscode-node-debug2   " Node.js
   ```
   可用列表见 `:VimspectorInstall` 不带参数时的提示，或 `plugged/vimspector/support/gadgets.d/`。

2. **在项目根目录写一个 `.vimspector.json`**，描述"怎么启动/附加调试目标"，例如最基础的 Python launch 配置：
   ```json
   {
     "configurations": {
       "Python: 当前文件": {
         "adapter": "debugpy",
         "configuration": {
           "request": "launch",
           "program": "${file}"
         }
       }
     }
   }
   ```
   这个文件是**每个项目各自维护**的，不属于 `.vim` 这个 dotfiles 仓库范畴。

**基本使用流程**：项目里有了 `.vimspector.json` 后 → 打开要调试的文件 → `<leader>vb` 在想停的行加断点 → `<leader>vc` 启动调试（第一次会让你从 `.vimspector.json` 里选一个 configuration）→ 命中断点后用 `<leader>vo`/`<leader>vi`/`<leader>vO` 单步、在弹出的 Variables/Watches 窗口里查看变量 → `<leader>vx` 结束调试。

### 自定义命令：`:Vcp`（config/vcp.vim）

跨平台把指定行范围复制到系统剪贴板（macOS 用 `pbcopy`，Wayland 用 `wl-copy`，否则退回 Vim 内置剪贴板寄存器）。

```vim
:Vcp            " 复制当前选区/整个文件
:Vcp 10         " 复制第 10 行
:Vcp 10 20      " 复制第 10~20 行
```

## 语言相关

- **LaTeX（vimtex）**：`maplocalleader = ','`，用 `skim` 作为 PDF 预览器并开启同步定位（SyncTeX）；`conceallevel=0` 关闭了公式符号的隐藏渲染。
- **Rust（rust.vim）**：保存文件时自动执行 `rustfmt`。
- **Markdown**：`autocmd FileType markdown setlocal conceallevel=0`，避免语法符号被隐藏。

## 快捷键冲突排查记录

对 `vimrc` 和所有实际被 `source` 的 `config/*.vim` 按 Normal / Insert / Visual / Operator-pending 四种模式逐一核对过，目前**没有两个自定义映射互相覆盖**的硬冲突。历史上真正会冲突的几处（`vim-sneak` 的 `s/f/S/F`、`vim-racer` 的 `gd`、`vim-floaterm` 的 `<C-方向键>`）已随对应插件一起被清理掉。

发现过 3 处非冲突但容易踩坑的地方，处理结果：

- `tt` / `ts` 会吃掉 Normal 模式下原生的 `t`/`s` till-motion（单独按 `tt`/`ts` 移动光标的用法）——**已改名**为 `<leader>e`（打开 coc 文件浏览器）和 `<leader>tr`（划词翻译），不再占用原生按键。
- `<space>y`（yank 历史）和 `<leader>` 前缀本质是同一个键（因为 `mapleader = ' '`）——**已统一写成** `<leader>y`，功能不变，只是避免以后误加 `<leader>y` 时产生隐性覆盖。
- `<c-o>` 在插入模式下被 coc.vim 覆盖为 `coc#refresh()`，会让原生的"插入模式临时切到 Normal 执行一条命令"失效——**保留不变**（`<c-space>` 已经能触发同样的补全刷新，这行更像是给部分终端发不出 `<c-space>` 时的备用键）。

新装 vimspector 时也排查过一次：它的官方预设快捷键会把 `<F5>` 绑成"开始/继续调试"，正好跟已有的 `<F5>` = `:ALEToggle` 冲突。处理方式是**不启用官方预设**（`g:vimspector_enable_mappings = 'NONE'`），改用专属的 `<leader>v` 前缀，详见上方「vimspector 调试器」一节。
