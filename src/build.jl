function write_pc_statements(mname)
    mname = Symbol(mname)
    # XXX: Precompile using tests?!
    run(`julia --project=. --startup-file=no -e "import $(mname); println.(names($(mname)))"`)



end
