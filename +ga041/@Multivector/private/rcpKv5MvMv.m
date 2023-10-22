
% ------------------------------------------------
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
    
    outMv(6,:) = inMv1(1,:) .* inMv2(27,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(20,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(19,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(18,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(17,:);
    outMv(21,:) = -inMv1(1,:) .* inMv2(12,:);
    outMv(22,:) = inMv1(1,:) .* inMv2(11,:);
    outMv(23,:) = -inMv1(1,:) .* inMv2(10,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(9,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(8,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(4,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
