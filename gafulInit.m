% Initialize .NET assemblies
%gafulInitDotNet();
%gafulLoadAssemblyRecursive("GeometricAlgebraFulcrumLib.Modeling");
gafulLoadAssemblies([...
    "GeometricAlgebraFulcrumLib.Algebra", ...
    "GeometricAlgebraFulcrumLib.Modeling"...
    ]);

vga = gafulGetProcessor(0, 0);
pga = gafulGetProcessor(0, 1);
cga = gafulGetProcessor(1, 0);