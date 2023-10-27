% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (16,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv1(4,:) .* inMv2(9,:);
    outMv(3,:) = -inMv1(4,:) .* inMv2(13,:);
    outMv(4,:) = -inMv1(4,:) .* inMv2(14,:);
    outMv(8,:) = inMv1(4,:) .* inMv2(16,:);
end
