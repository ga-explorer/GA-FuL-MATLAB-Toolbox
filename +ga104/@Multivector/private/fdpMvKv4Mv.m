% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(17,:) = -inMv1(6,:) .* inMv2(2,:);
    outMv(18,:) = -inMv1(6,:) .* inMv2(3,:);
    outMv(19,:) = -inMv1(6,:) .* inMv2(4,:);
    outMv(20,:) = -inMv1(6,:) .* inMv2(5,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(5,:);
end
