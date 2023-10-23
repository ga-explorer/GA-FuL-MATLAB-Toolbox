% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv3Kv3Mv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(7,:) = -inMv1(8,:) .* inMv2(9,:) + inMv1(9,:) .* inMv2(8,:);
    outMv(8,:) = -inMv1(8,:) .* inMv2(10,:) + inMv1(10,:) .* inMv2(8,:);
    outMv(9,:) = -inMv1(9,:) .* inMv2(10,:) + inMv1(10,:) .* inMv2(9,:);
    outMv(27,:) = inMv1(5,:) .* inMv2(10,:) - inMv1(6,:) .* inMv2(9,:) + inMv1(7,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(7,:) - inMv1(9,:) .* inMv2(6,:) + inMv1(10,:) .* inMv2(5,:);
    outMv(28,:) = -inMv1(2,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(4,:) + inMv1(9,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(2,:);
end
