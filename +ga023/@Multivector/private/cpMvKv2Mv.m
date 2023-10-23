% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(3,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(3,:);
    outMv(5,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:);
    outMv(6,:) = -inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(8,:);
    outMv(8,:) = -inMv1(7,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(1,:);
    outMv(9,:) = inMv1(7,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(7,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(7,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(8,:) .* inMv2(4,:) + inMv1(9,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(2,:) - inMv1(11,:) .* inMv2(3,:);
    outMv(13,:) = -inMv1(7,:) .* inMv2(8,:) + inMv1(14,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(7,:) .* inMv2(7,:) - inMv1(13,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(8,:) .* inMv2(7,:) + inMv1(9,:) .* inMv2(8,:) - inMv1(13,:) .* inMv2(2,:) - inMv1(14,:) .* inMv2(3,:);
    outMv(16,:) = inMv1(10,:) .* inMv2(7,:) + inMv1(11,:) .* inMv2(8,:) - inMv1(13,:) .* inMv2(4,:) - inMv1(14,:) .* inMv2(5,:);
    outMv(19,:) = inMv1(17,:) .* inMv2(5,:) - inMv1(18,:) .* inMv2(3,:) + inMv1(20,:) .* inMv2(1,:);
    outMv(20,:) = -inMv1(17,:) .* inMv2(4,:) + inMv1(18,:) .* inMv2(2,:) - inMv1(19,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(17,:) .* inMv2(8,:) - inMv1(21,:) .* inMv2(3,:) + inMv1(23,:) .* inMv2(1,:);
    outMv(23,:) = -inMv1(17,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(2,:) - inMv1(22,:) .* inMv2(1,:);
    outMv(24,:) = inMv1(18,:) .* inMv2(8,:) - inMv1(21,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(1,:);
    outMv(25,:) = -inMv1(18,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(4,:) - inMv1(24,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(19,:) .* inMv2(7,:) - inMv1(20,:) .* inMv2(8,:) + inMv1(22,:) .* inMv2(4,:) + inMv1(23,:) .* inMv2(5,:) - inMv1(24,:) .* inMv2(2,:) - inMv1(25,:) .* inMv2(3,:);
    outMv(30,:) = -inMv1(27,:) .* inMv2(8,:) + inMv1(28,:) .* inMv2(5,:) - inMv1(29,:) .* inMv2(3,:) + inMv1(31,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(27,:) .* inMv2(7,:) - inMv1(28,:) .* inMv2(4,:) + inMv1(29,:) .* inMv2(2,:) - inMv1(30,:) .* inMv2(1,:);
end
