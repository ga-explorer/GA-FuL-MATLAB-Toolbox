function v = linVector4D(x, y, z, w)
    % linVector4D  Create a LinFloat64Vector3D .NET object safely
    %
    % Inputs:  x, y, z, w – (double)
    % Output:  v – .NET LinFloat64Vector4D instance

    v = GeometricAlgebraFulcrumLib.Algebra.LinearAlgebra.Float64.Vectors.Space4D.LinFloat64Vector4D.Create(double(x), double(y), double(z), double(w));
end