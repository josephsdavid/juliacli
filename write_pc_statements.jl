import JuliaCLI
using Pkg

try
JuliaCLI.activate()
catch
JuliaCLI.activate()
end
try
JuliaCLI.activate(".")
catch
JuliaCLI.activate(".")
end
try
JuliaCLI.add("Comonicon")
catch
JuliaCLI.add("Comonicon")
end
try
JuliaCLI.add("LanguageServer", "SymbolServer")
catch
JuliaCLI.add("LanguageServer", "SymbolServer")
end
try
JuliaCLI.add("FilePathsBase")
catch
JuliaCLI.add("FilePathsBase")
end
try
JuliaCLI.rm("FilePathsBase")
catch
JuliaCLI.rm("FilePathsBase")
end
try
JuliaCLI.update()
catch
JuliaCLI.update()
end
try
JuliaCLI.resolve()
catch
JuliaCLI.resolve()
end
try
JuliaCLI.pc()
catch
JuliaCLI.pc()
end
try
JuliaCLI.pc(;use_pkg=true)
catch
JuliaCLI.pc(;use_pkg=true)
end
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
