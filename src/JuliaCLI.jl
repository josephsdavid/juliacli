module JuliaCLI

using Comonicon
using LanguageServer, SymbolServer
using Pkg
using Pkg: depots1
using TOML

include("resolve_projects.jl")
include("commands.jl")
include("lsp.jl")


for f in [:add, :rm]
    @eval begin
        @cast function $(f)(pkg...)
            Pkg.activate(envpath())
            Pkg.$(f)(collect(pkg))
        end
    end
end

for f in [:resolve, :update]
    @eval begin
        @cast function $(f)()
            Pkg.activate(envpath())
            Pkg.$(f)()
        end
    end
end

@cast function activate(dir=envpath())
    Pkg.activate(dir)
end

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

macro trycatch(expr, msg)
    try
        return eval(expr)
    catch
        @warn "$(expr) failed to evaluate! $(msg)"
        return nothing
    end
end

@cast function test(testset="", dir=envpath())
    Pkg.activate(dir)
    isempty(testset) && return Pkg.test()
    cmd = "using TestEnv; TestEnv.activate();"

    @trycatch(f = joinpath(envpath(), "Project.toml"), "Project.toml not found!")
    isnothing(f) && return

    @trycatch(modname = TOML.parsefile(f)["name"], "Active project does not have a module name!")
    isnothing(modname) && return

    path = joinpath("test", string(modname, "Tests.jl"))
    if !isfile(path)
        @warn "$(path) not found!"
        return
    end

    cmd = string(cmd, "include(\"$(path)\");")
    cmd = string(cmd, "retest(\"$(testset)\")")
    fn = `julia --history-file=no --startup-file=no --project=$(dir) -e $(cmd)`
    @info "running" fn
    run(fn)
end


# TODO: use toml to get the name key
@cast function pc(pkgname=""; use_pkg::Bool=false)
    if use_pkg
        if isempty(pkgname)
            Pkg.activate(envpath())
            return Pkg.precompile()
        else
            Pkg.activate(envpath())
            return Pkg.precompile(pkgname)
        end
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
