# function start_pkg_repl(repl, project)
#     Pkg.activate(project)
#     Pkg.UPDATED_REGISTRY_THIS_SESSION[] = false
#     main_mode = repl.interface.modes[1]
#     pkg_mode = Pkg.REPLMode.create_mode(repl, main_mode)
#     push!(repl.interface.modes, pkg_mode)
#     s = repl.mistate
#     buf = copy(REPL.LineEdit.buffer(s))
#     REPL.LineEdit.transition(s, pkg_mode) do
#         REPL.LineEdit.state(s, pkg_mode).input_buffer = buf
#     end
#     push!(empty!(REPL.install_packages_hooks), Pkg.REPLMode.try_prompt_pkg_add)
#     Pkg.OFFLINE_MODE[] = Pkg.get_bool_env("JULIA_PKG_OFFLINE")
# end
#
#
# @cast function pkgrepl(project=envpath())
#   term = REPL.Terminals.TTYTerminal("dumb", stdin, stdout, stderr)
#   repl = REPL.LineEditREPL(term, true)
#   start_pkg_repl(repl, project)
#   REPL.run_repl(repl)
#
# end

@cast function repl(version=nothing)
    run(`julia $(juliaversioncmd()) --project=$(envpath())`)
end
