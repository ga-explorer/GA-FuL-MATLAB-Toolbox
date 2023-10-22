function outScalar = normSquaredMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) - inMv(2,:) .* inMv(2,:) + inMv(5,:) .* inMv(5,:) - inMv(10,:) .* inMv(10,:) + inMv(6,:) .* inMv(6,:) - inMv(13,:) .* inMv(13,:) + inMv(16,:) .* inMv(16,:) - inMv(24,:) .* inMv(24,:);
end
