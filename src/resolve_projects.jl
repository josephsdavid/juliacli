depotpath() = get(ENV, "JULIA_DEPOT_PATH", depots1())
_defaultenvpath() = dirname(Base.load_path_expand("@v#.#"))
_defaultenvpath(x) = x

"""
    hasmanifest(dir)

Checks whether there is a valid `Manifest.toml` or `Project.toml` in directory `dir`.
"""
hasmanifest(dir::AbstractString) =
    any(map(isfile, joinpath.(dir, ["Manifest.toml", "Project.toml"])))

_juliaproject() = get(ENV, "JULIA_PROJECT", nothing)
_juliaprojectbase() = Base.current_project()

"""
    resolve_julia_project()

gets currently active juliaproject
"""
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

Finds the "nearest" active project, searching first for a manifest directly in
the current working directory, then searching the rest of the environment.
"""
function envpath(dirs = [ pwd(), joinpath(pwd(), ".."), resolve_julia_project(), _defaultenvpath()])
    return first(filter(hasmanifest, dirs))
end
