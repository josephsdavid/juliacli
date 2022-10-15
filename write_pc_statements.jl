using Pkg
import LanguageServer
import SymbolServer

import JuliaCLI

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

JuliaCLI.server()
JuliaCLI.runserver()
