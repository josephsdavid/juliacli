module JuliaCLI

using Comonicon
using LanguageServer
import SymbolServer
using Pkg
using Pkg: depots1
using TOML
using REPL

function juliaversioncmd()
    julia_version = get(ENV, "JULIA_VERSION", nothing)
    if isnothing(julia_version)
        return ``
    else
        return `+$(julia_version)`
    end
end

include("resolve_projects.jl")
include("commands.jl")
include("lsp.jl")
include("repl.jl")
include("pkg.jl")
include("project.jl")

@main

end # module
