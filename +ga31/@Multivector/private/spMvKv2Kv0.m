% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spMvKv2Kv0(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (6,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(6,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(5,:) - inMv1(11,:) .* inMv2(6,:);
end
