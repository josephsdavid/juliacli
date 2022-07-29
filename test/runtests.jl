using Test

using JuliaCLI


project = JuliaCLI.resolve_julia_project()

@testset "environment" begin
    @test JuliaCLI.hasmanifest("..")
    @test occursin("juliacli", project)
end
