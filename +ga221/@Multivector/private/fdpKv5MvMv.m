% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv5MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(4,:) = inMv1(1,:) .* inMv2(29,:);
    outMv(8,:) = -inMv1(1,:) .* inMv2(25,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(24,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(21,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(18,:);
    outMv(17,:) = -inMv1(1,:) .* inMv2(16,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(14,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(13,:);
    outMv(22,:) = -inMv1(1,:) .* inMv2(11,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(10,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(6,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(5,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
