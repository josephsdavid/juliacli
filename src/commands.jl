parse_args(v::Vararg{Any}) = reduce((x, y) -> `$(x), $(y)`, [v...])
parse_args(v::Vararg{Any,1}) = "\"$(v...)\""

function runcmd(pkg_cmd; project = envpath())
    fn = `julia --history-file=no --startup-file=no --project=$(project) -e $(pkg_cmd)`
    @info "running " fn
    run(fn)

end

