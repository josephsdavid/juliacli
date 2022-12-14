precompile(Tuple{typeof(Parsers.__init__)})
precompile(Tuple{typeof(URIs.__init__)})
precompile(Tuple{typeof(JuliaCLI.pc)})
precompile(Tuple{typeof(Base.something), String, String, Vararg{String}})
precompile(Tuple{Base.CoreLogging.var"#handle_message##kw", NamedTuple{(:fn,), Tuple{Base.Cmd}}, typeof(Base.CoreLogging.handle_message), Logging.ConsoleLogger, Base.CoreLogging.LogLevel, String, Module, Symbol, Symbol, String, Int64})
precompile(Tuple{typeof(Base.iterate), Base.Pairs{Symbol, Base.Cmd, Tuple{Symbol}, NamedTuple{(:fn,), Tuple{Base.Cmd}}}})
precompile(Tuple{typeof(Logging.showvalue), Base.IOContext{Base.GenericIOBuffer{Array{UInt8, 1}}}, Base.Cmd})
precompile(Tuple{typeof(Base.iterate), Base.Pairs{Symbol, Base.Cmd, Tuple{Symbol}, NamedTuple{(:fn,), Tuple{Base.Cmd}}}, Int64})
precompile(Tuple{Base.var"##printstyled#917", Bool, Bool, Bool, Bool, Bool, Symbol, typeof(Base.printstyled), Base.IOContext{Base.GenericIOBuffer{Array{UInt8, 1}}}, String})
precompile(Tuple{Type{NamedTuple{(:use_pkg,), T} where T<:Tuple}, Tuple{Bool}})
precompile(Tuple{JuliaCLI.var"#pc##kw", NamedTuple{(:use_pkg,), Tuple{Bool}}, typeof(JuliaCLI.pc)})
precompile(Tuple{typeof(Base.deepcopy_internal), Any, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Core.Compiler.eltype), Type{Array{UInt64, 1}}})
precompile(Tuple{typeof(Base.deepcopy_internal), Tuple{UInt64}, Base.IdDict{Any, Any}})
precompile(Tuple{Type{Pkg.Registry.RegistryInstance}, String, String, Base.UUID, String, String, Base.Dict{Base.UUID, Pkg.Registry.PkgEntry}, Nothing, Nothing, Base.Dict{String, Base.UUID}})
precompile(Tuple{Type{Pkg.Registry.RegistryInstance}, String, String, Base.UUID, String, String, Base.Dict{Base.UUID, Pkg.Registry.PkgEntry}, Base.SHA1, Base.Dict{String, String}, Base.Dict{String, Base.UUID}})
precompile(Tuple{typeof(Pkg.Registry.download_default_registries), Base.TTY})
precompile(Tuple{Type{NamedTuple{(:uuid, :name, :path, :pinned, :repo, :tree_hash, :version), T} where T<:Tuple}, Tuple{Base.UUID, String, Nothing, Bool, Pkg.Types.GitRepo, Nothing, Base.VersionNumber}})
precompile(Tuple{Core.var"#Type##kw", NamedTuple{(:uuid, :name, :path, :pinned, :repo, :tree_hash, :version), Tuple{Base.UUID, String, Nothing, Bool, Pkg.Types.GitRepo, Nothing, Base.VersionNumber}}, Type{Pkg.Types.PackageSpec}})
precompile(Tuple{Type{Array{Pkg.Types.PackageSpec, 1}}, UndefInitializer, Tuple{Int64}})
precompile(Tuple{typeof(Serialization.deserialize_fillarray!), Array{Pkg.Types.PackageSpec, 1}, Serialization.Serializer{Base.IOStream}})
precompile(Tuple{Type{NamedTuple{(:uuid, :name, :version, :tree_hash), T} where T<:Tuple}, Tuple{Base.UUID, String, Base.VersionNumber, Nothing}})
precompile(Tuple{Core.var"#Type##kw", NamedTuple{(:uuid, :name, :version, :tree_hash), Tuple{Base.UUID, String, Base.VersionNumber, Nothing}}, Type{Pkg.Types.PackageSpec}})
precompile(Tuple{typeof(Base.intersect!), Base.Set{Base.PkgId}, Array{Base.PkgId, 1}})
precompile(Tuple{typeof(Base.vectorfilter), Type, Base.var"#132#133"{typeof(Base.in), typeof(Base.pop!), Base.Set{Base.PkgId}}, Array{Base.PkgId, 1}})
precompile(Tuple{typeof(Base.collect), Type{Base.PkgId}, Base.Generator{Base.Iterators.Filter{Base.var"#134#135"{Base.var"#132#133"{typeof(Base.in), typeof(Base.pop!), Base.Set{Base.PkgId}}}, Array{Base.PkgId, 1}}, typeof(Base.identity)}})
precompile(Tuple{typeof(Base.keys), Base.Dict{Symbol, SymbolServer.ModuleStore}})
precompile(Tuple{Type{StaticLint.LintOptions}, Bool, Bool, Bool, Bool, Bool, Bool, Bool, Bool, Bool, Bool})
precompile(Tuple{typeof(Base.convert), Type{StaticLint.LintOptions}, StaticLint.LintOptions})
precompile(Tuple{typeof(JuliaCLI.server)})
precompile(Tuple{JuliaCLI.var"##runserver#4", Base.TTY, Base.TTY, Bool, typeof(JuliaCLI.runserver), String, String})
precompile(Tuple{Base.CoreLogging.var"#handle_message##kw", NamedTuple{(Symbol("pwd()"), :env, :depot), Tuple{String, String, String}}, typeof(Base.CoreLogging.handle_message), Logging.ConsoleLogger, Base.CoreLogging.LogLevel, String, Module, Symbol, Symbol, String, Int64})
precompile(Tuple{typeof(Base.iterate), Base.Pairs{Symbol, String, Tuple{Symbol, Symbol, Symbol}, NamedTuple{(Symbol("pwd()"), :env, :depot), Tuple{String, String, String}}}})
precompile(Tuple{typeof(Logging.showvalue), Base.IOContext{Base.GenericIOBuffer{Array{UInt8, 1}}}, String})
precompile(Tuple{typeof(Base.iterate), Base.Pairs{Symbol, String, Tuple{Symbol, Symbol, Symbol}, NamedTuple{(Symbol("pwd()"), :env, :depot), Tuple{String, String, String}}}, Int64})
precompile(Tuple{typeof(Base.deepcopy_internal), Symbol, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.deepcopy_internal), Base.Dict{Symbol, Any}, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.deepcopy_internal), Array{Symbol, 1}, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.similar), Array{Symbol, 1}})
precompile(Tuple{typeof(Base.deepcopy_internal), Array{SymbolServer.MethodStore, 1}, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.similar), Array{SymbolServer.MethodStore, 1}})
precompile(Tuple{typeof(Base.deepcopy_internal), Array{Pair{Any, Any}, 1}, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.similar), Array{Pair{Any, Any}, 1}})
precompile(Tuple{typeof(Base.deepcopy_internal), Array{Any, 1}, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.run), JSONRPC.JSONRPCEndpoint{Base.TTY, Base.TTY}})
precompile(Tuple{JSONRPC.var"#1#3"{JSONRPC.JSONRPCEndpoint{Base.TTY, Base.TTY}}})
precompile(Tuple{JSONRPC.var"#2#4"{JSONRPC.JSONRPCEndpoint{Base.TTY, Base.TTY}}})
precompile(Tuple{typeof(Base.:(<)), UInt32, UInt32})
precompile(Tuple{typeof(Base.:(>)), UInt32, UInt32})
precompile(Tuple{typeof(Base.:(!=)), UInt32, UInt32})
precompile(Tuple{Type{SymbolServer.FakeTypeofVararg}})
precompile(Tuple{typeof(SymbolServer.parsed_toml), Nothing})
precompile(Tuple{Type{LanguageServer.WorkDoneProgressEnd}, Base.Missing})
precompile(Tuple{LanguageServer.var"#94#96"{LanguageServer.LanguageServerInstance}})
precompile(Tuple{Type{NamedTuple{(:type,), T} where T<:Tuple}, Tuple{Symbol}})
precompile(Tuple{LanguageServer.var"#100#103"{LanguageServer.LanguageServerInstance}})
precompile(Tuple{LanguageServer.var"#101#104"{LanguageServer.LanguageServerInstance}})
precompile(Tuple{Type{NamedTuple{(:backlog,), T} where T<:Tuple}, Tuple{Int64}})
precompile(Tuple{typeof(Base.haskey), NamedTuple{(:backlog,), Tuple{Int64}}, Symbol})
precompile(Tuple{typeof(Sockets.uv_connectioncb), Ptr{Nothing}, Int32})
precompile(Tuple{SymbolServer.var"#62#65"{LanguageServer.var"#95#97"{LanguageServer.LanguageServerInstance}, Nothing, Base.Channel{Any}, String}})
precompile(Tuple{typeof(Base.setproperty!), SymbolServer.SymbolServerInstance, Symbol, Base.Process})
precompile(Tuple{typeof(Base.notify), Base.GenericCondition{Base.Threads.SpinLock}})
precompile(Tuple{Type{Base.Dict{Symbol, SymbolServer.ModuleStore}}, Base.Generator{Base.Dict{Symbol, SymbolServer.ModuleStore}, SymbolServer.var"#43#44"}})
precompile(Tuple{SymbolServer.var"#43#44", Pair{Symbol, SymbolServer.ModuleStore}})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.FunctionStore})
precompile(Tuple{typeof(SymbolServer.recursive_copy), Symbol})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.FakeUnion})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.FakeTypeName})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.DataTypeStore})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.FakeUnionAll})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.FakeTypeofBottom})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.FakeTypeofVararg})
precompile(Tuple{Type{SymbolServer.FakeTypeofVararg}, SymbolServer.FakeTypeName})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.GenericStore})
precompile(Tuple{typeof(SymbolServer.recursive_copy), Int64})
precompile(Tuple{typeof(SymbolServer.recursive_copy), SymbolServer.ModuleStore})
precompile(Tuple{Type{SymbolServer.FakeTypeofVararg}, SymbolServer.FakeUnion})
precompile(Tuple{Type{SymbolServer.FakeTypeofVararg}, SymbolServer.FakeUnionAll})
precompile(Tuple{Type{SymbolServer.FakeTypeofVararg}, SymbolServer.FakeTypeVar})
precompile(Tuple{typeof(SymbolServer.recursive_copy), Bool})
precompile(Tuple{typeof(Base.uvfinalize), Sockets.PipeServer})
precompile(Tuple{typeof(SymbolServer.load_package_from_cache_into_store!), SymbolServer.SymbolServerInstance, Base.UUID, String, Base.Dict{Base.UUID, Pkg.Types.PackageEntry}, Base.Dict{Symbol, SymbolServer.ModuleStore}, LanguageServer.var"#95#97"{LanguageServer.LanguageServerInstance}, Int64})
precompile(Tuple{Type{SymbolServer.VarRef}, Nothing, Symbol})
precompile(Tuple{Type{SymbolServer.VarRef}, SymbolServer.VarRef, Symbol})
precompile(Tuple{Type{Array{SymbolServer.MethodStore, 1}}, UndefInitializer, Int64})
precompile(Tuple{Type{SymbolServer.GenericStore}, SymbolServer.VarRef, SymbolServer.FakeTypeName, String, Bool})
precompile(Tuple{Type{SymbolServer.FakeTypeVar}, Symbol, SymbolServer.FakeTypeofBottom, SymbolServer.FakeTypeName})
precompile(Tuple{Type{Pair{A, B} where B where A}, Symbol, SymbolServer.FakeUnion})
precompile(Tuple{typeof(Base.setindex!), Array{Pair{Any, Any}, 1}, Pair{Symbol, SymbolServer.FakeUnion}, Int64})
precompile(Tuple{Type{Pair{A, B} where B where A}, Symbol, SymbolServer.FakeTypeName})
precompile(Tuple{typeof(Base.setindex!), Array{Pair{Any, Any}, 1}, Pair{Symbol, SymbolServer.FakeTypeName}, Int64})
precompile(Tuple{Type{SymbolServer.MethodStore}, Symbol, Symbol, String, UInt32, Array{Pair{Any, Any}, 1}, Array{Symbol, 1}, SymbolServer.FakeTypeName})
precompile(Tuple{typeof(Base.setindex!), Array{SymbolServer.MethodStore, 1}, SymbolServer.MethodStore, Int64})
precompile(Tuple{Type{SymbolServer.FakeUnionAll}, SymbolServer.FakeTypeVar, SymbolServer.FakeTypeName})
precompile(Tuple{Type{SymbolServer.FakeUnionAll}, SymbolServer.FakeTypeVar, SymbolServer.FakeUnionAll})
precompile(Tuple{Type{Pair{A, B} where B where A}, Symbol, SymbolServer.FakeUnionAll})
precompile(Tuple{typeof(Base.setindex!), Array{Pair{Any, Any}, 1}, Pair{Symbol, SymbolServer.FakeUnionAll}, Int64})
precompile(Tuple{typeof(Base.setindex!), Array{Symbol, 1}, Symbol, Int64})
precompile(Tuple{Type{Pair{A, B} where B where A}, Symbol, SymbolServer.FakeTypeofVararg})
precompile(Tuple{typeof(Base.setindex!), Array{Pair{Any, Any}, 1}, Pair{Symbol, SymbolServer.FakeTypeofVararg}, Int64})
precompile(Tuple{Type{SymbolServer.FakeTypeVar}, Symbol, SymbolServer.FakeTypeofBottom, SymbolServer.FakeUnionAll})
precompile(Tuple{Type{Pair{A, B} where B where A}, Symbol, SymbolServer.FakeTypeVar})
precompile(Tuple{typeof(Base.setindex!), Array{Pair{Any, Any}, 1}, Pair{Symbol, SymbolServer.FakeTypeVar}, Int64})
precompile(Tuple{typeof(Base.getproperty), SymbolServer.Package, Symbol})
precompile(Tuple{typeof(Base.join), Base.GenericIOBuffer{Array{UInt8, 1}}, Tuple{UInt64}, Char})
precompile(Tuple{typeof(Base.string), Module})
precompile(Tuple{Type{SymbolServer.FakeTypeVar}, Symbol, SymbolServer.FakeTypeofBottom, SymbolServer.FakeUnion})
precompile(Tuple{Type{SymbolServer.FakeUnionAll}, SymbolServer.FakeTypeVar, SymbolServer.FakeUnion})
precompile(Tuple{Type{SymbolServer.FakeTypeVar}, Symbol, SymbolServer.FakeTypeofBottom, SymbolServer.FakeTypeVar})
precompile(Tuple{typeof(Base.print), Base.GenericIOBuffer{Array{UInt8, 1}}, Base.SHA1})
precompile(Tuple{Type{SymbolServer.MethodStore}, Symbol, Symbol, String, UInt32, Array{Pair{Any, Any}, 1}, Array{Symbol, 1}, SymbolServer.FakeUnion})
precompile(Tuple{Type{SymbolServer.MethodStore}, Symbol, Symbol, String, UInt32, Array{Pair{Any, Any}, 1}, Array{Symbol, 1}, SymbolServer.FakeUnionAll})
precompile(Tuple{Type{SymbolServer.MethodStore}, Symbol, Symbol, String, UInt32, Array{Pair{Any, Any}, 1}, Array{Symbol, 1}, SymbolServer.FakeTypeofBottom})
precompile(Tuple{typeof(Base.collect), Base.Generator{Base.UnitRange{Int64}, Base.var"#194#195"{SymbolServer.CacheStore.var"#1#3"{Base.IOStream}}}})
precompile(Tuple{typeof(Base._array_for), Type{Symbol}, Base.HasShape{1}, Tuple{Base.OneTo{Int64}}})
precompile(Tuple{typeof(Base.collect_to_with_first!), Array{Symbol, 1}, Symbol, Base.Generator{Base.UnitRange{Int64}, Base.var"#194#195"{SymbolServer.CacheStore.var"#1#3"{Base.IOStream}}}, Int64})
precompile(Tuple{typeof(Base.push!), Base.Channel{Any}, Base.Dict{Symbol, SymbolServer.ModuleStore}})
precompile(Tuple{Type{NamedTuple{(:type, :msg), T} where T<:Tuple}, Tuple{Symbol, Base.Dict{Symbol, SymbolServer.ModuleStore}}})
precompile(Tuple{typeof(Base.put!), Base.Channel{Any}, NamedTuple{(:type, :msg), Tuple{Symbol, Base.Dict{Symbol, SymbolServer.ModuleStore}}}})
precompile(Tuple{typeof(Base.getproperty), NamedTuple{(:type, :msg), Tuple{Symbol, Base.Dict{Symbol, SymbolServer.ModuleStore}}}, Symbol})
precompile(Tuple{typeof(Base.setproperty!), StaticLint.ExternalEnv, Symbol, Base.Dict{Symbol, SymbolServer.ModuleStore}})
precompile(Tuple{typeof(Base.display_error), Base.GenericIOBuffer{Array{UInt8, 1}}, Base.InvalidStateException, Array{Union{Ptr{Nothing}, Base.InterpreterIP}, 1}})
precompile(Tuple{Base.var"#printstyled##kw", NamedTuple{(:bold, :color), Tuple{Bool, Symbol}}, typeof(Base.printstyled), Base.GenericIOBuffer{Array{UInt8, 1}}, String})
precompile(Tuple{typeof(Base.print_type_stacktrace), Base.IOContext{Base.GenericIOBuffer{Array{UInt8, 1}}}, Type})
precompile(Tuple{Base.var"#printstyled##kw", NamedTuple{(:color, :bold), Tuple{Symbol, Bool}}, typeof(Base.printstyled), Base.IOContext{Base.GenericIOBuffer{Array{UInt8, 1}}}, String, Vararg{Any}})
precompile(Tuple{Base.var"#with_output_color##kw", NamedTuple{(:bold, :underline, :blink, :reverse, :hidden), Tuple{Bool, Bool, Bool, Bool, Bool}}, typeof(Base.with_output_color), Function, Symbol, Base.IOContext{Base.GenericIOBuffer{Array{UInt8, 1}}}, String, Vararg{Any}})
precompile(Tuple{typeof(Base.getproperty), NamedTuple{(:type,), Tuple{Symbol}}, Symbol})
