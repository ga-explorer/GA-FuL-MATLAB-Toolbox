% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpMvKv4Mv(inMv1, inMv2)
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
    
    outMv(4,:) = inMv1(21,:) .* inMv2(2,:);
    outMv(5,:) = inMv1(21,:) .* inMv2(3,:);
    outMv(12,:) = inMv1(28,:) .* inMv2(3,:) - inMv1(29,:) .* inMv2(2,:);
    outMv(17,:) = -inMv1(6,:) .* inMv2(2,:);
    outMv(18,:) = -inMv1(6,:) .* inMv2(3,:);
    outMv(19,:) = inMv1(3,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(4,:);
    outMv(20,:) = -inMv1(2,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(5,:);
    outMv(22,:) = inMv1(3,:) .* inMv2(2,:);
    outMv(23,:) = -inMv1(2,:) .* inMv2(2,:);
    outMv(24,:) = inMv1(3,:) .* inMv2(3,:);
    outMv(25,:) = -inMv1(2,:) .* inMv2(3,:);
    outMv(26,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:);
    outMv(27,:) = -inMv1(13,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(3,:) + inMv1(16,:) .* inMv2(2,:);
    outMv(30,:) = -inMv1(7,:) .* inMv2(5,:) + inMv1(9,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(2,:) + inMv1(14,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(7,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(2,:) - inMv1(13,:) .* inMv2(1,:);
end
