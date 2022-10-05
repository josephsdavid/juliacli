const path = joinpath(@__DIR__, "statements")
for f in readdir(path)
    include(joinpath(path, f))
end
