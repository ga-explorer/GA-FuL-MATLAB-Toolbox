% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv2Kv4Kv2(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (5,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = inMv1(9,:) .* inMv2(2,:);
    outMv(2,:) = -inMv1(8,:) .* inMv2(2,:);
    outMv(3,:) = inMv1(7,:) .* inMv2(2,:);
    outMv(4,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(8,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(4,:);
    outMv(5,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(5,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(5,:);
    outMv(7,:) = -inMv1(3,:) .* inMv2(2,:);
    outMv(8,:) = inMv1(2,:) .* inMv2(2,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:);
end
