parse_args(v::Vararg{Any}) = reduce((x, y) -> `$(x), $(y)`, [v...])
parse_args(v::Vararg{Any,1}) = "\"$(v...)\""

function runcmd(pkg_cmd; project = envpath(), verbose=true, stay=false)
    if !stay
        fn = `julia $(juliaversioncmd()) --history-file=no --startup-file=no --project=$(project) -e $(pkg_cmd)`
    else
        pkg_cmd = string(pkg_cmd)
        t = tempname()
        write(t, pkg_cmd)
        fn = `julia $(juliaversioncmd()) --history-file=no --startup-file=no --project=$(project) -L $(t)`
    end
    verbose && @info "running " fn
    run(fn)
end

