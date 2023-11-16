function outMv = eo(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(3, uint32(sampleCount));
    outMvData(1,:) = 0.5;
    outMvData(2,:) = 0.5;

    outMv = ga21.Multivector(1, outMvData);
end
