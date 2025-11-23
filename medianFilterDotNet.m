function y = medianFilterDotNet(x, sampleCount)
%MEDIANFILTERDOTNET  Apply a .NET Core Median Filter to data from MATLAB.
%
%   y = medianFilterDotNet(x, sampleCount)
%
%   Inputs:
%       x           - Numeric vector (double) containing signal samples.
%       sampleCount - Half-window size (integer ≥ 1).
%
%   Output:
%       y - Median-filtered signal, same size as x.
%
%   Author: Dr. Ahmad H. Eid, reviewed by Mathew — Math & Physics GPT 🧮⚡

    % --- Validate input ---
    if ~isnumeric(x) || ~isvector(x)
        error('Input x must be a numeric vector.');
    end

    x = double(x(:)); % ensure column vector

    % --- Convert MATLAB array to .NET double[] ---
    dotnetInput = NET.convertArray(x, 'System.Double');

    % --- Call the .NET static method ---
    dotnetResult = GeometricAlgebraFulcrumLib.Modeling.Signals.Filters.MedianFilter.Filter(dotnetInput, sampleCount);

    % --- Convert back to MATLAB double array ---
    y = double(dotnetResult);
    y = reshape(y, size(x));
end
