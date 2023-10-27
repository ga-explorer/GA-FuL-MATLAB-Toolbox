function outMvData = CreateDataArray(grade, sampleCount)
    arguments
        grade (1, 1) int32
        sampleCount (1, 1) uint32
    end

    switch grade
        case 0
            scalarCount = 1;
        case 1
            scalarCount = 8;
        case 2
            scalarCount = 28;
        case 3
            scalarCount = 56;
        case 4
            scalarCount = 70;
        case 5
            scalarCount = 56;
        case 6
            scalarCount = 28;
        case 7
            scalarCount = 8;
        case 8
            scalarCount = 1;
        otherwise
            scalarCount = 256;
    end

    outMvData = zeros(scalarCount, sampleCount, 'double');
end
