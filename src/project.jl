envrc() = ["layout_julia"]
envrc(args...) = reverse(vcat(args..., envrc()))

formattertoml() = """ style="yas" """

function add_tests(modname)
    dir = joinpath(modname, "test")
    mkdir(dir)
    write_to_file("", joinpath(dir, "runtests.jl"))
end

function write_to_file(contents::AbstractVector, location)
    open(location, "w") do io
        foreach(x -> println(io, x), contents)
    end
end

function write_to_file(contents::AbstractString, location)
    open(location, "w") do io
        println(io, contents)
    end
end

@cast function bootstrap(modname)
    pkg("generate", modname)
    write_to_file(formattertoml(), joinpath(modname, ".JuliaFormatter.toml"))
    write_to_file(envrc(), joinpath(modname, ".envrc"))
    add_tests(modname)
end

function get_deps(fname)
    lines = map(readlines(fname)) do line
        !(occursin("import", line) || occursin("using", line)) && return nothing
        line = split(line, ":")[1]
        line = replace(line, "using" => "", "import" => "", "," => " ")
        return filter(!isempty, split(line, " "))
    end
    return unique(vcat(filter(!isnothing, lines)...))
end

@cast function add_deps()
    projectfile = TOML.parsefile("Project.toml")
    needs_deps = Set(get_deps(joinpath("src", string(projectfile["name"], ".jl"))))

    if !haskey(projectfile, "deps")
        foreach(dep -> pkg("add", dep), needs_deps)
        return nothing
    end

    existing_deps = Set(keys(projectfile["deps"]))
    to_add = setdiff(needs_deps, existing_deps)
    if isempty(to_add)
        @info "Nothing to do!"
        return nothing
    end
    foreach(dep -> pkg("add", dep), to_add)
    return nothing
end
