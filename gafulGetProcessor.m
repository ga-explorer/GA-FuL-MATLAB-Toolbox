function processor = gafulGetProcessor(negativeCount, zeroCount)
    % gafulGetProcessor  Create a XGaFloat64Processor .NET instance
    %
    %   processor = gafulGetProcessor(negativeCount, zeroCount)
    %
    %   This function wraps the .NET static factory method:
    %
    %       XGaFloat64Processor.Create(int negativeCount, int zeroCount)
    %
    %   It returns a .NET object of type:
    %
    %       GeometricAlgebraFulcrumLib.Algebra.GeometricAlgebra.Float64.Processors.XGaFloat64Processor
    %
    % -------------------------------------------------------------------------
    % INPUT ARGUMENTS
    %   negativeCount : (scalar integer)
    %       Number of negative basis vectors in the geometric algebra metric.
    %
    %   zeroCount     : (scalar integer)
    %       Number of null (zero-signature) basis vectors in the geometric algebra metric.
    %
    % -------------------------------------------------------------------------
    % OUTPUT
    %   processor : .NET object
    %       A fully constructed XGaFloat64Processor instance.
    %
    % -------------------------------------------------------------------------
    % EXAMPLE
    %   % Create a processor for a metric with signature (-,-,+,+)
    %   P = gafulGetProcessor(2, 0);
    %
    % -------------------------------------------------------------------------
    % NOTES
    %   - Requires the GeometricAlgebraFulcrumLib .NET assembly to be loaded.
    %   - Before calling this function, ensure:
    %         NET.addAssembly('path_to/GeometricAlgebraFulcrumLib.dll');
    %
    % -------------------------------------------------------------------------
    % AUTHOR
    %   MATLAB Wrapper generated for GeometricAlgebraFulcrumLib
    %
    % -------------------------------------------------------------------------
    
    % ===== Validate Inputs ====================================================
    
    if nargin ~= 2
        error('gafulGetProcessor:ArgumentCount', ...
            'Function requires exactly 2 input arguments.');
    end
    
    % Validate negativeCount
    if ~isscalar(negativeCount) || ~isnumeric(negativeCount) || negativeCount < 0 ...
            || negativeCount ~= floor(negativeCount)
        error('gafulGetProcessor:InvalidInput', ...
            'negativeCount must be a non-negative integer scalar.');
    end
    
    % Validate zeroCount
    if ~isscalar(zeroCount) || ~isnumeric(zeroCount) || zeroCount < 0 ...
            || zeroCount ~= floor(zeroCount)
        error('gafulGetProcessor:InvalidInput', ...
            'zeroCount must be a non-negative integer scalar.');
    end
    
    processor = GeometricAlgebraFulcrumLib.Algebra.GeometricAlgebra.Float64.Processors.XGaFloat64Processor.Create(int32(negativeCount), int32(zeroCount));
end
