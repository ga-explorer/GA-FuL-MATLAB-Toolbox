% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpKv5MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(3,:) = inMv1(1,:) .* inMv2(30,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(26,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(24,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(22,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(19,:);
    outMv(17,:) = -inMv1(1,:) .* inMv2(16,:);
    outMv(18,:) = inMv1(1,:) .* inMv2(15,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(13,:);
    outMv(21,:) = -inMv1(1,:) .* inMv2(12,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(10,:);
    outMv(25,:) = -inMv1(1,:) .* inMv2(8,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(6,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(5,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
