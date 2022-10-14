import JuliaCLI
using Pkg
using LanguageServer
import SymbolServer

try
    JuliaCLI.pc()
catch
    JuliaCLI.pc()
end
try
    JuliaCLI.pc(; use_pkg=true)
catch
    JuliaCLI.pc(; use_pkg=true)
end

try
    JuliaCLI.server()
    JuliaCLI.runserver()
catch
end
