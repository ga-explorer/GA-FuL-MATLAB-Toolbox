% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpKv3MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(7,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(1,:);
end
