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
        fn = `julia $(juliaversioncmd()) --history-file=no --startup-file=no --project=$(project) -e $(pkg_cmd)`
    else
        fn = `julia $(juliaversioncmd()) --history-file=no --startup-file=no --project=$(Base.load_path_expand("@v#.#")) -e $(pkg_cmd)`
    end
    @info "running" fn
    run(fn)
end

# function init_test_cmd()
#
# end
# _test(v::Vararg{String, 0}) = pkg("test")
# function test(v::Vararg{String, 1})
#
# end
# _test(v::Vararg{String, 1}) = pkg("test")

@cast function test(testset="")
    if isempty(testset)
        return pkg("test")
    end
    cmd = "@info \"activating environment at $(joinpath(envpath(), "test"))\"; "
    cmd *= "using TestEnv; TestEnv.activate(); "

    f = joinpath(envpath(), "Project.toml")
    modname = TOML.parsefile(f)["name"]
    path = joinpath("test", string(modname, "Tests.jl"))
    if !isfile(path)
        @warn "$(path) not found!"
        return
    end
    cmd *= "@info \"loading tests\"; "
    cmd *= "include(\"$(path)\"); "
    cmd *= "@info \"running tests\"; "
    cmd *= "using ReTest; retest(\"$(testset)\")"
    fn = `julia $(juliaversioncmd()) --history-file=no --startup-file=no --project=$(envpath()) -e $(cmd)`
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
