% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(17,:) = -inMv1(6,:) .* inMv2(2,:);
    outMv(18,:) = -inMv1(6,:) .* inMv2(3,:);
    outMv(19,:) = -inMv1(6,:) .* inMv2(4,:);
    outMv(20,:) = -inMv1(2,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(5,:);
    outMv(23,:) = -inMv1(2,:) .* inMv2(2,:);
    outMv(25,:) = -inMv1(2,:) .* inMv2(3,:);
    outMv(26,:) = -inMv1(2,:) .* inMv2(4,:);
    outMv(27,:) = -inMv1(13,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(3,:) + inMv1(16,:) .* inMv2(2,:);
    outMv(31,:) = inMv1(7,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(2,:) - inMv1(13,:) .* inMv2(1,:);
end
