% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(3,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(11,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(12,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(15,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(1,:);
end
