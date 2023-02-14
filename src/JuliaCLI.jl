module JuliaCLI

using Comonicon
using LanguageServer
import SymbolServer
using Pkg
using Pkg: depots1
using TOML
using REPL

include("resolve_projects.jl")
include("commands.jl")
include("lsp.jl")
# include("repl.jl") under development
include("pkg.jl")
include("project.jl")

@main

end # module
