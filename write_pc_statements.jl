import JuliaCLI
using Pkg

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
    JuliaCLI.runserver(; download=true)
    JuliaCLI.server(; download=true)
catch
end

try
    JuliaCLI.runserver()
    JuliaCLI.server()
catch
end
