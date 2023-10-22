
% ------------------------------------------------
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
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(5,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(6,:) = inMv1(17,:) .* inMv2(2,:);
    outMv(10,:) = -inMv1(9,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(12,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(13,:) = -inMv1(9,:) .* inMv2(2,:);
    outMv(14,:) = inMv1(8,:) .* inMv2(2,:);
    outMv(15,:) = -inMv1(7,:) .* inMv2(2,:);
    outMv(16,:) = -inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(5,:);
    outMv(18,:) = -inMv1(4,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(20,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(21,:) = -inMv1(4,:) .* inMv2(2,:);
    outMv(22,:) = inMv1(3,:) .* inMv2(2,:);
    outMv(23,:) = -inMv1(2,:) .* inMv2(2,:);
    outMv(24,:) = inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:);
    outMv(25,:) = -inMv1(2,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(5,:);
    outMv(26,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(5,:);
end
