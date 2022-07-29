module JuliaCLI
using Pkg: depots1
using LanguageServer, SymbolServer
using JuliaFormatter
using Comonicon

# shamelessly borrowed from https://github.com/ExpandingMan/LSPNeovim.jl, which is no longer maintained
depotpath() = get(ENV, "JULIA_DEPOT_PATH", depots1())
_defaultenvpath() = dirname(Base.load_path_expand("@v#.#"))

"""
    hasmanifest(dir)

Checks whether there is a valid `Manifest.toml` in directory `dir`.  If no argument is given, it
will check for the `Manifest.toml` in the `LSPNeovim` environment.
"""
hasmanifest(dir::AbstractString) = any(map(isfile, joinpath.(dir, ["Manifest.toml", "Project.toml"])))

_juliaproject() = get(ENV, "JULIA_PROJECT", nothing)
_juliaprojectbase() = Base.current_project()

function resolve_julia_project()
    return something(
        _juliaproject(),
        _juliaprojectbase(),
        get(Base.load_path(), 1, nothing),
        _defaultenvpath(),
    )
end

"""
    envpath()

Picks an appropriate environment path based on the present working directory.
A valid environment for LanguageServer must contain an `Manifest.toml`.  Directories will be checked
in the following order
1. The present working directory.
2. The immediate parent of the present working directory.
3. The default environment directory.
TODO: Update me

The first of these to contain a `Manifest.toml` will be the environment used for LanguageServer.
"""
function envpath(dirs=[pwd(), joinpath(pwd(), ".."), _defaultenvpath()])
    dirs = filter(hasmanifest, dirs)
    isempty(dirs) ? resolve_julia_project() : first(dirs)
end

"""
Run the `LanguageServerInstance`.  This will also activate the `LSPNeovim` environment.
By default, this will attempt to determine an appropriate environment, see `envpath`.
"""
function runserver(
    env=envpath(),
    depot=depotpath();
    input::IO=stdin,
    output::IO=stdout,
    download=false
)
    @info("Initializing Language Server", pwd(), env, depot)
    s = LanguageServer.LanguageServerInstance(
        input,
        output,
        env,
        depot,
        nothing,
        nothing,
        download,
    )
    s.runlinter = true
    LanguageServer.run(s)
end

"""
`server`: Start the julia language server

# Args

--download, -d: Whether or not to download symbolserver cache
"""

@cast function server(; download::Bool=false)
    return runserver(; download)
end

function err(message)
    @error message
end

@cast function formatter(path=nothing)
    # TODO: Visual mode version (which takes a string and formats it)
    if isnothing(path)
        path = let
            proj = resolve_julia_project()
            isfile(proj) ? dirname(proj) : proj
        end
        return formatter(path)
    end
    if isdir(path)
        format(path)
    elseif isfile(path)
        format_file(path)
    else
        @error "$(path) not found!"
    end
    isdir(path) ? format(path) :
    isfile(path) ? format_file(path) : err("Not a file!"):err("Not a file!")
end

# NOTE: Find a better way to handle this
parse_args(v::Vararg{Any}) = reduce((x, y) -> `$(x), $(y)`, [v...])
parse_args(v::Vararg{Any,1}) = "\"$(v...)\""

@cast function pkg(cmd::AbstractString, args...;)
    # TODO: Figure out kwds
    # args, kwds = map([[args...], [kwds...]]) do param
    #     reduce((x, y) -> `$(x), $(y)`, param)
    args = [args...]
    if length(args) > 0
        pkg_cmd = "using Pkg; Pkg.$(cmd)($(parse_args(args...)))"
    else
        pkg_cmd = "using Pkg; Pkg.$(cmd)()"
    end
    fn = `julia --project=$(envpath()) -e $(pkg_cmd)`
    @info "running" fn
    run(fn)
end

@main

end # module
