function outMvData = CreateDataArray(grade, sampleCount)
    arguments
        grade (1, 1) int32
        sampleCount (1, 1) uint32
    end

    switch grade
        case 0
            scalarCount = 1;
        case 1
            scalarCount = 4;
        case 2
            scalarCount = 6;
        case 3
            scalarCount = 4;
        case 4
            scalarCount = 1;
        otherwise
            scalarCount = 16;
    end

    outMvData = zeros(scalarCount, sampleCount, 'double');
end
