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
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(17,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(18,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(21,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(27,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(28,:);
    outMv(16,:) = -inMv1(1,:) .* inMv2(29,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(32,:);
end
