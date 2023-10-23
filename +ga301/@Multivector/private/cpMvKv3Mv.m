% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(16,:) .* inMv2(4,:);
    outMv(6,:) = -inMv1(14,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(3,:);
    outMv(7,:) = inMv1(13,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(2,:);
    outMv(9,:) = -inMv1(12,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(9,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(3,:) + inMv1(11,:) .* inMv2(2,:);
    outMv(13,:) = -inMv1(7,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(6,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(2,:) + inMv1(10,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(1,:);
end
