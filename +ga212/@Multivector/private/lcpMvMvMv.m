% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpMvMvMv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(10,:) .* inMv2(10,:) + inMv1(6,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(13,:) - inMv1(16,:) .* inMv2(16,:) + inMv1(24,:) .* inMv2(24,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(10,:) - inMv1(6,:) .* inMv2(13,:) - inMv1(16,:) .* inMv2(24,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(7,:) - inMv1(5,:) .* inMv2(11,:) - inMv1(10,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(14,:) - inMv1(13,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(25,:) + inMv1(24,:) .* inMv2(29,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(2,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(12,:) - inMv1(10,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(15,:) - inMv1(13,:) .* inMv2(22,:) - inMv1(16,:) .* inMv2(26,:) + inMv1(24,:) .* inMv2(30,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(10,:) - inMv1(6,:) .* inMv2(16,:) - inMv1(13,:) .* inMv2(24,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(13,:) + inMv1(5,:) .* inMv2(16,:) + inMv1(10,:) .* inMv2(24,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(18,:) + inMv1(6,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(29,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(8,:) + inMv1(5,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(22,:) - inMv1(16,:) .* inMv2(30,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(2,:) .* inMv2(17,:) + inMv1(5,:) .* inMv2(20,:) + inMv1(10,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(23,:) + inMv1(13,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(31,:) + inMv1(24,:) .* inMv2(32,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(10,:) + inMv1(6,:) .* inMv2(24,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(11,:) - inMv1(2,:) .* inMv2(18,:) + inMv1(6,:) .* inMv2(25,:) + inMv1(13,:) .* inMv2(29,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(12,:) - inMv1(2,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(26,:) + inMv1(13,:) .* inMv2(30,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(13,:) - inMv1(5,:) .* inMv2(24,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(14,:) - inMv1(2,:) .* inMv2(21,:) - inMv1(5,:) .* inMv2(25,:) - inMv1(10,:) .* inMv2(29,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(15,:) - inMv1(2,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(26,:) - inMv1(10,:) .* inMv2(30,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(16,:) - inMv1(2,:) .* inMv2(24,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(17,:) - inMv1(5,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(32,:);
    outMv(18,:) = inMv1(1,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(29,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(30,:);
    outMv(20,:) = inMv1(1,:) .* inMv2(20,:) - inMv1(2,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(31,:) - inMv1(13,:) .* inMv2(32,:);
    outMv(21,:) = inMv1(1,:) .* inMv2(21,:) + inMv1(5,:) .* inMv2(29,:);
    outMv(22,:) = inMv1(1,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(30,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(23,:) - inMv1(2,:) .* inMv2(28,:) + inMv1(5,:) .* inMv2(31,:) + inMv1(10,:) .* inMv2(32,:);
    outMv(24,:) = inMv1(1,:) .* inMv2(24,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(25,:) - inMv1(2,:) .* inMv2(29,:);
    outMv(26,:) = inMv1(1,:) .* inMv2(26,:) - inMv1(2,:) .* inMv2(30,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(32,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(28,:) - inMv1(5,:) .* inMv2(32,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(29,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(30,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(31,:) - inMv1(2,:) .* inMv2(32,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(32,:);
end
