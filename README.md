# Julia command line utilities 

Mostly for personal use. Wraps `Pkg`, `LanguageServer.jl`, `TestEnv`+`ReTest`, and maybe one day JuliaFormatter into a little box you can access through the cli (without waiting on precompilation)


## Installation


1. `git clone git@github.com:josephsdavid/juliacli.git`
2. `cd juliacli`
3. `./INSTALL`

As long as `~/.julia/bin/` is in your $PATH, everything should be good to go!


## Notes


This is in active development for personal use, and i am totally new to julia. Use at your own risk (or make an issue and i will listen)


## Demos



### Pkg Wrapper


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
```


### Precompiling


```bash 
juliacli pc # compiles with "using" 
juliacli pc --use-pkg # compiles with pkg.precompile
```


### Testing


```bash 
juliacli test # runs pkg.test 
# in a retest enabled project, activates test env, loads test module, and retests the argument
juliacli test testset-name  
```


### Easy LSP setup in Neovim


To set up the LSP to use the wrapped and compiled LanguageServer, try somehting like the below snippet. This lowers language server start time to a few seconds (from 20-30 seconds), because we dont waste forever precompiling everything
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