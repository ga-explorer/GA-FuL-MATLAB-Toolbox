% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(20,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(23,:) = inMv1(2,:) .* inMv2(2,:);
    outMv(25,:) = inMv1(3,:) .* inMv2(2,:);
    outMv(26,:) = inMv1(4,:) .* inMv2(2,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(13,:) - inMv1(2,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(7,:);
end
