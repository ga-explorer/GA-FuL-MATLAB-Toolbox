function outMv = eoi(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(3, uint32(sampleCount));
    outMvData(3,:) = 1;

    outMv = ga21.Multivector(1, outMvData);
end
