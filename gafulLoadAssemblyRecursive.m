function gafulLoadAssemblyRecursive(rootAssemblyName)
%GAFULLOADASSEMBLYRECURSIVE Recursively load .NET assemblies with:
%   - Dependency-aware ordering
%   - Automatic folder scanning
%   - Missing-dependency reporting with suggestions
%   - Cycle detection
%
%   gafulLoadAssemblyRecursive("My.Assembly")
%
%   All assemblies must be located in:
%       <current folder>\DotNet
%
%   Author: MATLAB Help GPT

    arguments
        rootAssemblyName {mustBeTextScalar}
    end

    persistent loadedAssemblies availableAssemblies
    
    % --- Initialize .NET for Core-enabled MATLAB ---
    try
        dotnetenv("nethost", "auto");
    catch
    end

    % --- On first call: Scan folder & cache assembly filenames ---
    if isempty(availableAssemblies)
        dllFolder = fullfile(getCurrentFolder(), "DotNet");
        dllFiles = dir(fullfile(dllFolder, "*.dll"));

        availableAssemblies = containers.Map("KeyType","char","ValueType","char");

        for k = 1:numel(dllFiles)
            [~, name, ~] = fileparts(dllFiles(k).name);
            availableAssemblies(name) = fullfile(dllFolder, dllFiles(k).name);
        end

        loadedAssemblies = containers.Map("KeyType","char","ValueType","logical");

        fprintf("Indexed %d available DLLs in folder:\n%s\n", ...
            numel(dllFiles), dllFolder);
    end

    % Internal call to recursive loader
    stack = string.empty; % for cycle detection
    loadAssemblyRecursive(rootAssemblyName, loadedAssemblies, availableAssemblies, stack);
end



% =====================================================================
%                           RECURSIVE LOADER
% =====================================================================
function loadAssemblyRecursive(asmName, loadedMap, availableMap, stack)

    % Prevent cycles ----------------------------------------------------
    if any(strcmp(stack, asmName))
        error("Dependency cycle detected involving assembly: %s\nStack:\n%s", ...
            asmName, strjoin(stack, " -> "));
    end

    % Already loaded? ---------------------------------------------------
    if isKey(loadedMap, asmName)
        return;
    end

    % Is this assembly available? --------------------------------------
    if ~isKey(availableMap, asmName)
        suggestClosestMatch(asmName, availableMap);
    end

    dllPath = availableMap(asmName);

    % Load the assembly -------------------------------------------------
    asm = NET.addAssembly(dllPath);
    loadedMap(asmName) = true;

    % Retrieve dependencies --------------------------------------------
    refs = asm.GetReferencedAssemblies();

    for k = 1:numel(refs)
        refName = char(refs(k).Name);

        % Skip system assemblies
        if startsWith(refName, ["System","Microsoft","netstandard","mscorlib"], ...
                       'IgnoreCase', true)
            continue;
        end

        % Recurse into dependencies
        loadAssemblyRecursive(refName, loadedMap, availableMap, [stack asmName]);
    end
end



% =====================================================================
%                 SUGGEST CLOSEST MATCH FOR MISSING DLLS
% =====================================================================
function suggestClosestMatch(missingAsm, availableMap)
    availableNames = keys(availableMap);
    availableNames = string(availableNames);

    % Levenshtein distance to suggest similar names
    dist = arrayfun(@(s) stringDistance(missingAsm, s), availableNames);
    [minDist, idx] = min(dist);

    msg = sprintf("Missing dependency: '%s'.\n", missingAsm) + ...
          "This DLL was not found in the DotNet folder.\n";

    if minDist <= 5
        msg = msg + sprintf("Did you mean: '%s'?\n", availableNames(idx));
    end

    msg = msg + sprintf("\nAvailable assemblies:\n%s\n", ...
        strjoin(availableNames, newline));

    error(msg);
end



% =====================================================================
%                     SIMPLE STRING EDIT DISTANCE
% =====================================================================
function d = stringDistance(a, b)
    a = char(a); b = char(b);
    la = length(a); lb = length(b);
    dp = zeros(la+1, lb+1);

    for i = 1:la+1
        dp(i,1) = i-1;
    end
    for j = 1:lb+1
        dp(1,j) = j-1;
    end

    for i = 2:la+1
        for j = 2:lb+1
            cost = ~(a(i-1) == b(j-1));
            dp(i,j) = min([ ...
                dp(i-1,j) + 1, ...      % deletion
                dp(i,j-1) + 1, ...      % insertion
                dp(i-1,j-1) + cost ...  % substitution
            ]);
        end
    end

    d = dp(end);
end
