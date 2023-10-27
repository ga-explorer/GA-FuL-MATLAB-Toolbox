% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv3MvMv(inMv1, inMv2)
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
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(17,:) - inMv1(2,:) .* inMv2(18,:) + inMv1(3,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(20,:) - inMv1(5,:) .* inMv2(21,:) + inMv1(6,:) .* inMv2(22,:) + inMv1(7,:) .* inMv2(23,:) + inMv1(8,:) .* inMv2(24,:) + inMv1(9,:) .* inMv2(25,:) - inMv1(10,:) .* inMv2(26,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(9,:) + inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(12,:) - inMv1(4,:) .* inMv2(27,:) + inMv1(5,:) .* inMv2(14,:) - inMv1(6,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(28,:) - inMv1(8,:) .* inMv2(16,:) - inMv1(9,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(30,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(8,:) - inMv1(2,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(27,:) - inMv1(4,:) .* inMv2(12,:) - inMv1(5,:) .* inMv2(13,:) + inMv1(6,:) .* inMv2(28,:) - inMv1(7,:) .* inMv2(15,:) + inMv1(8,:) .* inMv2(29,:) - inMv1(9,:) .* inMv2(16,:) + inMv1(10,:) .* inMv2(31,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(7,:) + inMv1(2,:) .* inMv2(27,:) - inMv1(3,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(11,:) + inMv1(5,:) .* inMv2(28,:) - inMv1(6,:) .* inMv2(13,:) - inMv1(7,:) .* inMv2(14,:) + inMv1(8,:) .* inMv2(30,:) + inMv1(9,:) .* inMv2(31,:) - inMv1(10,:) .* inMv2(16,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(27,:) - inMv1(2,:) .* inMv2(7,:) + inMv1(3,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(9,:) + inMv1(5,:) .* inMv2(29,:) - inMv1(6,:) .* inMv2(30,:) - inMv1(7,:) .* inMv2(31,:) - inMv1(8,:) .* inMv2(13,:) - inMv1(9,:) .* inMv2(14,:) + inMv1(10,:) .* inMv2(15,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(28,:) - inMv1(2,:) .* inMv2(29,:) + inMv1(3,:) .* inMv2(30,:) + inMv1(4,:) .* inMv2(31,:) - inMv1(5,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(8,:) + inMv1(7,:) .* inMv2(9,:) + inMv1(8,:) .* inMv2(10,:) + inMv1(9,:) .* inMv2(11,:) - inMv1(10,:) .* inMv2(12,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(4,:) + inMv1(2,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(6,:) - inMv1(10,:) .* inMv2(32,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(3,:) + inMv1(3,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(32,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(6,:) + inMv1(8,:) .* inMv2(32,:);
    outMv(10,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(32,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(11,:) = -inMv1(2,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(32,:) + inMv1(9,:) .* inMv2(6,:);
    outMv(12,:) = -inMv1(3,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(32,:) + inMv1(10,:) .* inMv2(6,:);
    outMv(13,:) = -inMv1(4,:) .* inMv2(32,:) + inMv1(5,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(5,:);
    outMv(14,:) = inMv1(3,:) .* inMv2(32,:) - inMv1(5,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(5,:);
    outMv(15,:) = inMv1(2,:) .* inMv2(32,:) - inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(5,:);
    outMv(16,:) = -inMv1(1,:) .* inMv2(32,:) - inMv1(8,:) .* inMv2(2,:) - inMv1(9,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(4,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(20,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(21,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(24,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(26,:) = inMv1(10,:) .* inMv2(1,:);
end
