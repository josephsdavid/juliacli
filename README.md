# JuliaCLI: Julia command line utilities 

Mostly for personal use. Wraps `Pkg`, `LanguageServer.jl`, and `JuliaFormatter.jl` in a compiled  CLI app.


## Installation


1. `git clone git@github.com:josephsdavid/juliacli.git`
2. `cd juliacli`
3. `./INSTALL`

As long as `~/.julia/bin/` is in your $PATH, everything should be good to go!


## Demos



### Pkg Wrapper


quick demo, generates a project, adds things to project

```bash 
juliacli -h
juliacli pkg -h
juliacli formatter -j
juliacli server -h
juliacli pkg generate JuliacliDemo
cd JuliacliDemo
juliacli pkg status
juliacli pkg add JSON
juliacli pkg add DataStructures
juliacli pkg status
```


### Easy LSP setup in Neovim


To set up the LSP to use the wrapped and compiled LanguageServer, try somehting like:
```lua
local nvim_lsp = require"lspconfig"
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
    nvim_lsp[lsp].setup(setup)
end

```