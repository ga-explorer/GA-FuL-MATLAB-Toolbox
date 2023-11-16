function outMv = eoi(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(10, uint32(sampleCount));
    outMvData(10,:) = 1;

    outMv = ga41.Multivector(3, outMvData);
end
