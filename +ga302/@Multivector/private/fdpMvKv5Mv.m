% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpMvKv5Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(7,:) = -inMv1(26,:) .* inMv2(1,:);
    outMv(17,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(21,:) = -inMv1(12,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(28,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(29,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
