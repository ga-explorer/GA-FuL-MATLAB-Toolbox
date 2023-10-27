function outMvData = CreateDataArray(grade, sampleCount)
    arguments
        grade (1, 1) int32
        sampleCount (1, 1) uint32
    end

    switch grade
        case 0
            scalarCount = 1;
        case 1
            scalarCount = 2;
        case 2
            scalarCount = 1;
        otherwise
            scalarCount = 4;
    end

    outMvData = zeros(scalarCount, sampleCount, 'double');
end
