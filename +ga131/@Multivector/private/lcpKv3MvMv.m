% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv3MvMv(inMv1, inMv2)
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
    
    outMv(1,:) = inMv1(1,:) .* inMv2(17,:) - inMv1(5,:) .* inMv2(21,:) - inMv1(6,:) .* inMv2(22,:) - inMv1(7,:) .* inMv2(23,:);
    outMv(2,:) = inMv1(7,:) .* inMv2(28,:);
    outMv(3,:) = -inMv1(6,:) .* inMv2(28,:);
    outMv(4,:) = inMv1(5,:) .* inMv2(28,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(27,:) + inMv1(5,:) .* inMv2(29,:) + inMv1(6,:) .* inMv2(30,:) + inMv1(7,:) .* inMv2(31,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(28,:);
    outMv(10,:) = -inMv1(7,:) .* inMv2(32,:);
    outMv(11,:) = inMv1(6,:) .* inMv2(32,:);
    outMv(12,:) = -inMv1(5,:) .* inMv2(32,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(32,:);
end
