function outScalar = normSquaredMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) - inMv(2,:) .* inMv(2,:) - inMv(3,:) .* inMv(3,:) + inMv(6,:) .* inMv(6,:) + inMv(4,:) .* inMv(4,:) - inMv(7,:) .* inMv(7,:) - inMv(8,:) .* inMv(8,:) + inMv(12,:) .* inMv(12,:) + inMv(5,:) .* inMv(5,:) - inMv(9,:) .* inMv(9,:) - inMv(10,:) .* inMv(10,:) + inMv(13,:) .* inMv(13,:) + inMv(11,:) .* inMv(11,:) - inMv(14,:) .* inMv(14,:) - inMv(15,:) .* inMv(15,:) + inMv(16,:) .* inMv(16,:);
end
