% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpMvKv4Mv(inMv1, inMv2)
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
    
    outMv(10,:) = -inMv1(9,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(12,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(13,:) = -inMv1(9,:) .* inMv2(2,:);
    outMv(14,:) = inMv1(8,:) .* inMv2(2,:);
    outMv(15,:) = -inMv1(7,:) .* inMv2(2,:);
    outMv(16,:) = -inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(5,:);
    outMv(24,:) = -inMv1(17,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(2,:) - inMv1(23,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(17,:) .* inMv2(4,:) - inMv1(19,:) .* inMv2(2,:) + inMv1(22,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(17,:) .* inMv2(3,:) + inMv1(18,:) .* inMv2(2,:) - inMv1(21,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(32,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(3,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(1,:);
end
