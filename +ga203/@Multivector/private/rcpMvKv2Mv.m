
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(16,:) .* inMv2(10,:);
    outMv(2,:) = -inMv1(24,:) .* inMv2(10,:);
    outMv(3,:) = -inMv1(25,:) .* inMv2(10,:);
    outMv(4,:) = -inMv1(26,:) .* inMv2(10,:);
    outMv(7,:) = -inMv1(29,:) .* inMv2(10,:);
    outMv(8,:) = -inMv1(30,:) .* inMv2(10,:);
    outMv(9,:) = -inMv1(31,:) .* inMv2(10,:);
    outMv(17,:) = -inMv1(32,:) .* inMv2(10,:);
end
