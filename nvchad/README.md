

* https://nvchad.com/
* install
  * please use example config after installing
  * mac: brew

* use example config first, config would be under ~/.config/nvim
  * we should only modify files under ~/.config/nvim/lua/custom ???
  * custom/chadrc.lua: only thing can be config here is theme ?
    but we can use <leader> + th to config theme, so maybe user doesn't need to take care of this file as well ???

* theme: everblush

* theme: everblush
luasnip: we can build some snippets, and load them by luasnip, to complete complex operation in one click ???
plugins config

    https://nvchad.com/docs/config/plugins
    override plugin options in custom/plugins.lua

syntax highlighting

    https://nvchad.com/docs/config/syntax

use mason.nvim to setup language tools (LSP(Language server protocol), DAP(Debugger adapter protocol), …

    mason use npm to install some tools ??? use sudo chown -R 501:20 "/Users/hwang/.npm" to let npm can execute without sudo
    https://github.com/williamboman/mason.nvim
    search tools here: https://mason-registry.dev/registry/list#search
        also make sue the tool is supported by config tool
            e.g. for lsp, the tool need to be in the list above and also server_configurations.md because NvChad use nvim-lspconfig for lsp configuration
    write in M.mason in ~/.config/nvim/lua/custom/configs/overrides.lua
    DAP, Linter(could be covered by LSP ???), Fomatter
    LSP:
        e.g. pyright
            add pyright in mason's overrides.lua
            add pyright in lspconfig's config ~/.config/nvim/lua/custom/configs/lspconfig.lua
            run :MasonInstallAll to install tools
        pyright config
            in each project, create a pyrightconfig.json
            might need to set git global ignore to ignore pyrightconfig.json
                https://stackoverflow.com/questions/7335420/global-git-ignore
    default leaderkey: space
    Press some key and wait, there will be hints
        leader -> NvChad commands
        g -> nvimtree
    default plugins
        library of lua functions
        base46: theme setter
        nvterm: unmaintained ???
        indent-blackline: add gray line to help you see the indention
        nvim-telescope: fuzzy finder
        nvim-treesitter
            https://nvchad.com/docs/config/syntax#DocContent
            syntax parser & highlighting
        nvim-cmp: auto completion helper
        Comment.nvim: you can comment multiple lines in one operation
        nvim-tree: file explorer
        which-key.nvim: key binding hinter
