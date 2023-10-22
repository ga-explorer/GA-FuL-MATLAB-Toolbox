function outScalar = normSquaredMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) - inMv(2,:) .* inMv(2,:) - inMv(3,:) .* inMv(3,:) + inMv(7,:) .* inMv(7,:) + inMv(6,:) .* inMv(6,:) - inMv(13,:) .* inMv(13,:) - inMv(14,:) .* inMv(14,:) + inMv(21,:) .* inMv(21,:);
end