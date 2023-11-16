function outMv = eoi(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(6, uint32(sampleCount));
    outMvData(6,:) = 1;

    outMv = ga31.Multivector(2, outMvData);
end
