import JuliaCLI
using Pkg

JuliaCLI.activate()
JuliaCLI.activate(".")
JuliaCLI.add("Comonicon")
JuliaCLI.add("LanguageServer", "SymbolServer")
JuliaCLI.add("FilePathsBase")
JuliaCLI.rm("FilePathsBase")
JuliaCLI.update()
JuliaCLI.resolve()
JuliaCLI.pc()
JuliaCLI.pc(;use_pkg=true)
try
    JuliaCLI.runserver(;download=true)
    JuliaCLI.server(;download=true)
catch
end

try
    JuliaCLI.runserver()
    JuliaCLI.server()
catch
end
