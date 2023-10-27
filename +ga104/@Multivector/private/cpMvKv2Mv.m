% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(6,:) .* inMv2(7,:);
    outMv(3,:) = -inMv1(6,:) .* inMv2(8,:);
    outMv(4,:) = -inMv1(6,:) .* inMv2(9,:);
    outMv(5,:) = -inMv1(6,:) .* inMv2(10,:);
    outMv(7,:) = -inMv1(13,:) .* inMv2(8,:) + inMv1(14,:) .* inMv2(7,:);
    outMv(8,:) = -inMv1(13,:) .* inMv2(9,:) + inMv1(15,:) .* inMv2(7,:);
    outMv(9,:) = -inMv1(14,:) .* inMv2(9,:) + inMv1(15,:) .* inMv2(8,:);
    outMv(10,:) = -inMv1(13,:) .* inMv2(10,:) + inMv1(16,:) .* inMv2(7,:);
    outMv(11,:) = -inMv1(14,:) .* inMv2(10,:) + inMv1(16,:) .* inMv2(8,:);
    outMv(12,:) = -inMv1(15,:) .* inMv2(10,:) + inMv1(16,:) .* inMv2(9,:);
    outMv(17,:) = -inMv1(21,:) .* inMv2(9,:) + inMv1(22,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(7,:);
    outMv(18,:) = -inMv1(21,:) .* inMv2(10,:) + inMv1(24,:) .* inMv2(8,:) - inMv1(25,:) .* inMv2(7,:);
    outMv(19,:) = -inMv1(22,:) .* inMv2(10,:) + inMv1(24,:) .* inMv2(9,:) - inMv1(26,:) .* inMv2(7,:);
    outMv(20,:) = -inMv1(23,:) .* inMv2(10,:) + inMv1(25,:) .* inMv2(9,:) - inMv1(26,:) .* inMv2(8,:);
    outMv(27,:) = -inMv1(28,:) .* inMv2(10,:) + inMv1(29,:) .* inMv2(9,:) - inMv1(30,:) .* inMv2(8,:) + inMv1(31,:) .* inMv2(7,:);
end
