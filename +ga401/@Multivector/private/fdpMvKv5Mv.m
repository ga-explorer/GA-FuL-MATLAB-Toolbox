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
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = inMv1(31,:) .* inMv2(1,:);
    outMv(7,:) = -inMv1(26,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(23,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(17,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(19,:) = -inMv1(14,:) .* inMv2(1,:);
    outMv(21,:) = -inMv1(12,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(24,:) = -inMv1(9,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(28,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(29,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(30,:) = -inMv1(3,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
