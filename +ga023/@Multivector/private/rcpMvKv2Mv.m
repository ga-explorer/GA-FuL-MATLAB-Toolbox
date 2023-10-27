% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(17,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(18,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(21,:) .* inMv2(1,:);
    outMv(12,:) = -inMv1(27,:) .* inMv2(1,:);
    outMv(15,:) = -inMv1(28,:) .* inMv2(1,:);
    outMv(16,:) = -inMv1(29,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(32,:) .* inMv2(1,:);
end
