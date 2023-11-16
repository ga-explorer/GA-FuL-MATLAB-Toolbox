function outMv = I(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(1, uint32(sampleCount));
    outMvData(1,:) = 1;

    outMv = ga104.Multivector(5, outMvData);
end
