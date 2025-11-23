function folderPath = getCurrentFolder()
% getCurrentFolder  Returns the folder of the currently running script or function.
%
%   folderPath = getCurrentFolder() returns the absolute path to the folder
%   containing the script or function that calls it.
%
%   If run interactively (e.g., from the Command Window or Live Editor),
%   the function returns the current working directory (pwd).

    fullPath = mfilename('fullpath');
    if isempty(fullPath)
        folderPath = pwd;
    else
        folderPath = fileparts(fullPath);
    end
end
