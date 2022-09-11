# JuliaCLI: Julia command line utilities 

Mostly for personal use. Wraps `Pkg`, `LanguageServer.jl`, and `JuliaFormatter.jl` in a compiled  CLI app.


## Installation


```bash
git clone git@github.com:josephsdavid/juliacli.git
cd juliacli
./INSTALL
```
As long as `~/.julia/bin/` is in your $PATH, everything should be good to go!


## Demos


### Easy LSP setup in Neovim


To set up the LSP to use the wrapped and compiled LanguageServer, try somehting like:
```lua
local nvim_lsp = require"lspconfig"

-- on attach defined somewhere 
-- make capabilities defined somewhere?
-- this is just a little snippet :)

local servers = {
    julials = {
        cmd = {"juliacli", "server"},
        settings = {
            julia = {
                usePlotPane = false,
                symbolCacheDownload = false,
                runtimeCompletions = true,
                singleFileSupport = false,
                useRevise = true,
                lint = {
                    NumThreads = 11,
                    missingrefs = "all",
                    iter = true,
                    lazy = true,
                    modname = true,
                },
            },
        },

    },
}

for lsp, setup in pairs(servers) do
    setup.on_attach = on_attach
    setup.capabilities = make_capabilities()
    -- this is the line you care about, sets up julials to run from the `juliacli server` command
    nvim_lsp[lsp].setup(setup) 
end

```

### Other things you can do


quick demo, generates a project, adds things to project

```bash 
juliacli -h
juliacli pkg -h
juliacli formatter -h
juliacli server -h
juliacli pkg generate JuliacliDemo
cd JuliacliDemo
juliacli pkg status
juliacli pkg add JSON
juliacli pkg add DataStructures
juliacli pkg status


juliacli pc
juliacli pc --use-pkg
juliacli pc [PKGNAME]
juliacli pc [PKGNAME] --use-pkt

```

