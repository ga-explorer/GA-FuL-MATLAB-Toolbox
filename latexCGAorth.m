function latexCGAorth(x, msg)
    % latexCGAorth  Extended LaTeX display function for MATLAB/.NET objects
    %
    % Usage:
    %   latexCGAorth(x)
    %   latexCGAorth(x, msg)   % msg is a string shown alongside x

    % Check if a message was provided AND is a string
    if nargin == 2 && (isstring(msg) || ischar(msg))
        % Display msg and x on the same line
        fprintf('%s: ', msg);

        % Check if x is a .NET XGaFloat64Multivector object
        if isa(x, 'GeometricAlgebraFulcrumLib.Algebra.GeometricAlgebra.Float64.Multivectors.XGaFloat64Multivector') | isa(x, 'GeometricAlgebraFulcrumLib.Modeling.Geometry.CGa.Float64.Blades.CGaFloat64Blade') | isa(x, 'GeometricAlgebraFulcrumLib.Modeling.Geometry.CGa.Float64.Versors.CGaFloat64Versor')
            try
                str = char(GeometricAlgebraFulcrumLib.Modeling.Utilities.Text.TextUtils.CGaOrthoToLaTeX(x));
                fprintf('%s\n', str);
            catch
                % Fallback in case ToString fails
                fprintf('[.NET object could not convert using ToString]\n');
            end
        else
            % Call the simpler disp2
            disp2(x, msg);
        end
    else
        % Check if x is a .NET XGaFloat64Multivector object
        if isa(x, 'GeometricAlgebraFulcrumLib.Algebra.GeometricAlgebra.Float64.Multivectors.XGaFloat64Multivector') | isa(x, 'GeometricAlgebraFulcrumLib.Modeling.Geometry.CGa.Float64.Versors.CGaFloat64Versor')
            try
                str = char(GeometricAlgebraFulcrumLib.Modeling.Utilities.Text.TextUtils.CGaOrthoToLaTeX(x));
                fprintf('%s\n', str);
            catch
                % Fallback in case ToString fails
                fprintf('[.NET object could not convert using ToString]\n');
            end
        else
            % Call the simpler disp2
            disp2(x);
        end
    end
end
