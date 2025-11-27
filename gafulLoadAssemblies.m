function gafulLoadAssemblies(asmNames)
%GAFULLOADASSEMBLIES Initialize one or more GA-FuL .NET assemblies in MATLAB.
%
%   gafulLoadAssemblies(asmNames)
%   asmNames : string array or cell array of strings
%       Names of assemblies to load (without ".dll")
%
%   Example:
%       gafulLoadAssemblies(["GeometricAlgebraFulcrumLib.Algebra", ...
%                        "GeometricAlgebraFulcrumLib.Modeling"]);
%
%   Author: Dr. Ahmad H. Eid, updated by Matlab Help GPT

    arguments
        asmNames {mustBeText}   % allows string array or cellstr
    end

    persistent loadedAssemblies
    if isempty(loadedAssemblies)
        loadedAssemblies = containers.Map("KeyType","char","ValueType","logical");
    end

    % --- Locate DLL folder relative to this function's location ---
    dllFolder = fullfile(getCurrentFolder(), "DotNet");

    % --- Load .NET runtime (MATLAB R2023a+ with .NET Core) ---
    try
        %dotnetenv("nethost", "auto");
        dotnetenv("core");
    catch
        % Ignore for MATLAB versions that do not require dotnetenv
    end

    % --- Loop over requested assemblies ---
    for asm = string(asmNames)

        if isKey(loadedAssemblies, asm)
            % Already loaded previously
            continue;
        end

        % Full DLL path
        dllPath = fullfile(dllFolder, asm + ".dll");

        if ~isfile(dllPath)
            error('Assembly "%s" not found at:\n%s', asm, dllPath);
        end

        NET.addAssembly(dllPath);
        loadedAssemblies(asm) = true;
    end
end
