
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (6,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(11,:) .* inMv2(6,:);
    outMv(2,:) = -inMv1(4,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(4,:) - inMv1(14,:) .* inMv2(6,:);
    outMv(3,:) = -inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(5,:) - inMv1(15,:) .* inMv2(6,:);
    outMv(4,:) = -inMv1(5,:) .* inMv2(6,:);
    outMv(5,:) = inMv1(4,:) .* inMv2(6,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(16,:) .* inMv2(6,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(6,:);
end
