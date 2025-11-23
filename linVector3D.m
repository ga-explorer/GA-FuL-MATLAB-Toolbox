function v = linVector3D(x, y, z)
    % linVector3D  Create a LinFloat64Vector3D .NET object safely
    %
    % Inputs:  x, y, z – (double)
    % Output:  v – .NET LinFloat64Vector3D instance

    v = GeometricAlgebraFulcrumLib.Algebra.LinearAlgebra.Float64.Vectors.Space3D.LinFloat64Vector3D.Create(double(x), double(y), double(z));
end