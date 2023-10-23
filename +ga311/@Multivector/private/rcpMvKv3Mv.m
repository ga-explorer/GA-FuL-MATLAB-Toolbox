% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(19,:) .* inMv2(3,:) + inMv1(22,:) .* inMv2(6,:) + inMv1(24,:) .* inMv2(8,:) - inMv1(26,:) .* inMv2(10,:);
    outMv(2,:) = -inMv1(30,:) .* inMv2(10,:);
    outMv(3,:) = -inMv1(27,:) .* inMv2(3,:) - inMv1(28,:) .* inMv2(6,:) - inMv1(29,:) .* inMv2(8,:) - inMv1(31,:) .* inMv2(10,:);
    outMv(4,:) = -inMv1(30,:) .* inMv2(8,:);
    outMv(5,:) = inMv1(30,:) .* inMv2(6,:);
    outMv(6,:) = -inMv1(30,:) .* inMv2(3,:);
    outMv(7,:) = -inMv1(32,:) .* inMv2(10,:);
    outMv(9,:) = inMv1(32,:) .* inMv2(8,:);
    outMv(11,:) = -inMv1(32,:) .* inMv2(6,:);
    outMv(14,:) = inMv1(32,:) .* inMv2(3,:);
end
