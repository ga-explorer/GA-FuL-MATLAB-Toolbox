function outMv = ei(sampleCount)
    if (nargin == 0)
        sampleCount = 1;
    end

    outMvData = zeros(5, uint32(sampleCount));
    outMvData(1,:) = 1;
    outMvData(2,:) = -1;

    outMv = ga41.Multivector(1, outMvData);
end
