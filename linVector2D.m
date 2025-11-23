function v = linVector2D(x, y)
    % linVector2D  Create a LinFloat64Vector3D .NET object safely
    %
    % Inputs:  x, y – (double)
    % Output:  v – .NET LinFloat64Vector2D instance

    v = GeometricAlgebraFulcrumLib.Algebra.LinearAlgebra.Float64.Vectors.Space2D.LinFloat64Vector2D.Create(double(x), double(y));
end