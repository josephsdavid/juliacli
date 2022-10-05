module JuliaCLI

using Comonicon
using LanguageServer, SymbolServer
using Pkg: depots1
using TOML

include("resolve_projects.jl")
include("commands.jl")
include("lsp.jl")

export server, pkg, pc



@cast function server(; download::Bool=false)
    return runserver(; download)
end


@cast function pkg(
    cmd::AbstractString,
    args...;
    project=envpath(),
    global_env::Bool=false
)
    # TODO: Figure out kwds
    # args, kwds = map([[args...], [kwds...]]) do param
    #     reduce((x, y) -> `$(x), $(y)`, param)
    args = [args...]
    if length(args) > 0
        pkg_cmd = "using Pkg; Pkg.$(cmd)($(parse_args(args...)))"
    else
        pkg_cmd = "using Pkg; Pkg.$(cmd)()"
    end
    if !global_env
        fn = `julia --history-file=no --startup-file=no --project=$(project) -e $(pkg_cmd)`
    else
        fn = `julia --history-file=no --startup-file=no --project=$(Base.load_path_expand("@v#.#")) -e $(pkg_cmd)`
    end
    @info "running" fn
    run(fn)
end


# TODO: use toml to get the name key
@cast function pc(pkgname=""; use_pkg::Bool=false)
    if use_pkg
        statements = ["precompile", pkgname]
        return pkg(filter(x -> !isempty(x), statements)...)
    end
    # using is in many cases (for modules like flux and plots) much  faster than pkg
    if isempty(pkgname)
        try
            f = joinpath(envpath(), "Project.toml")
            pkgname = TOML.parsefile(f)["name"]
        catch
            error("No valid Project.toml found!")
        end
    end
    pkg_cmd = "using $(pkgname)"
    runcmd(pkg_cmd)
end


@main

end # module
