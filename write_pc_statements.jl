pc(arg) = @show run(
    `julia --project=. --startup-file=no --trace-compile=deps/statements/$(arg)_precompile.jl src/JuliaCLI.jl juliacli $(arg)`,
)
const args = ["server", :pc, "pkg"]

for arg in args
    @info "precompiling" arg
    try
        pc(arg)
    catch  e
        @warn "$(arg) failed" e
    end
end



