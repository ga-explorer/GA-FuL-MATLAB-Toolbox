% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv1Kv1Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (8,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(6,:) + inMv1(7,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(8,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(2,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(2,:);
    outMv(15,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(1,:);
    outMv(17,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(2,:);
    outMv(18,:) = inMv1(3,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(3,:);
    outMv(19,:) = inMv1(4,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(4,:);
    outMv(20,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(1,:);
    outMv(21,:) = inMv1(2,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(2,:);
    outMv(22,:) = inMv1(3,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(3,:);
    outMv(23,:) = inMv1(4,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(4,:);
    outMv(24,:) = inMv1(5,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(5,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(1,:);
    outMv(26,:) = inMv1(2,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(2,:);
    outMv(27,:) = inMv1(3,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(3,:);
    outMv(28,:) = inMv1(4,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(4,:);
    outMv(29,:) = inMv1(5,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(5,:);
    outMv(30,:) = inMv1(6,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(6,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(2,:);
    outMv(33,:) = inMv1(3,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(3,:);
    outMv(34,:) = inMv1(4,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(4,:);
    outMv(35,:) = inMv1(5,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(5,:);
    outMv(36,:) = inMv1(6,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(6,:);
    outMv(37,:) = inMv1(7,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(7,:);
end
