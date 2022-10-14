function runserver(
    env = envpath(),
    depot = depotpath();
    input::IO = stdin,
    output::IO = stdout,
    download = false,
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

@cast function server()
    return runserver()
end
