% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spKv3MvKv0(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(17,:) - inMv1(2,:) .* inMv2(18,:) - inMv1(3,:) .* inMv2(19,:) - inMv1(4,:) .* inMv2(20,:) - inMv1(5,:) .* inMv2(21,:) - inMv1(6,:) .* inMv2(22,:) - inMv1(7,:) .* inMv2(23,:) - inMv1(8,:) .* inMv2(24,:) - inMv1(9,:) .* inMv2(25,:) - inMv1(10,:) .* inMv2(26,:);
end
