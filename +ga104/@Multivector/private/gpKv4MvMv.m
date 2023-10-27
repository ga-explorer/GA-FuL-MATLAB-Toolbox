% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (32,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(17,:) = inMv1(2,:) .* inMv2(6,:);
    outMv(18,:) = inMv1(3,:) .* inMv2(6,:);
    outMv(19,:) = inMv1(4,:) .* inMv2(6,:);
    outMv(20,:) = inMv1(5,:) .* inMv2(6,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(15,:) - inMv1(4,:) .* inMv2(14,:) + inMv1(5,:) .* inMv2(13,:);
    outMv(28,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(29,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(2,:);
end
