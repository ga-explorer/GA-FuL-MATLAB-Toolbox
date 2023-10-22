function outScalar = normSquaredMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) - inMv(2,:) .* inMv(2,:) - inMv(3,:) .* inMv(3,:) + inMv(7,:) .* inMv(7,:) - inMv(4,:) .* inMv(4,:) + inMv(8,:) .* inMv(8,:) + inMv(9,:) .* inMv(9,:) - inMv(17,:) .* inMv(17,:) + inMv(6,:) .* inMv(6,:) - inMv(13,:) .* inMv(13,:) - inMv(14,:) .* inMv(14,:) + inMv(21,:) .* inMv(21,:) - inMv(15,:) .* inMv(15,:) + inMv(22,:) .* inMv(22,:) + inMv(23,:) .* inMv(23,:) - inMv(28,:) .* inMv(28,:);
end