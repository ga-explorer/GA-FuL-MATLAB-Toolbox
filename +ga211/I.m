function outMv = I(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(1, uint32(sampleCount));
    outMvData(1,:) = 1;

    outMv = ga211.Multivector(4, outMvData);
end
