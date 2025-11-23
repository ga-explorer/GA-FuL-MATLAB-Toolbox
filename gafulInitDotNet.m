function gafulInitDotNet()
%GAFULINIT Initialize GA-FuL .NET assembly to be used inside MATLAB.
%
%   Author: Dr. Ahmad H. Eid, reviewed by Mathew — Math & Physics GPT 🧮⚡

    % --- Configuration ---
    % dllPath = 'D:\Projects\Active\GeometricAlgebraFulcrumLib\Matlab\DotNet\GeometricAlgebraFulcrumLib.Modeling.dll';
    dllPath = fullfile(getCurrentFolder(), '\DotNet\GeometricAlgebraFulcrumLib.Algebra.dll');
    persistent assemblyLoaded

    % --- Load .NET runtime ---
    try
        dotnetenv("nethost", "auto");
    catch
        % Older MATLABs might not need this
    end

    % --- Load assembly once per session ---
    if isempty(assemblyLoaded)
        if ~isfile(dllPath)
            error('.NET DLL not found at:\n%s', dllPath);
        end
        NET.addAssembly(dllPath);
        assemblyLoaded = true;
    end
end
