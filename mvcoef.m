function c = mvcoef(mv, idxArray)
    if isa(mv, 'GeometricAlgebraFulcrumLib.Algebra.GeometricAlgebra.Float64.Multivectors.XGaFloat64Multivector')
        c = double(mv.Scalar(int32(idxArray(:)) - 1));
    else
        c = mv(idxArray);
    end
end