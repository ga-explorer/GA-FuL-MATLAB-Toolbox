% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpMvMvMv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (16,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(6,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(2,:) + inMv1(2,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(3,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(1,:) + inMv1(6,:) .* inMv2(2,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(8,:) - inMv1(6,:) .* inMv2(12,:) + inMv1(4,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(2,:) + inMv1(8,:) .* inMv2(3,:) - inMv1(12,:) .* inMv2(6,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(9,:) - inMv1(3,:) .* inMv2(10,:) - inMv1(6,:) .* inMv2(13,:) + inMv1(5,:) .* inMv2(1,:) + inMv1(9,:) .* inMv2(2,:) + inMv1(10,:) .* inMv2(3,:) - inMv1(13,:) .* inMv2(6,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(6,:) + inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(1,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(7,:) + inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(12,:) - inMv1(6,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(6,:) + inMv1(12,:) .* inMv2(3,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(2,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(4,:) + inMv1(6,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(3,:) - inMv1(7,:) .* inMv2(6,:) + inMv1(8,:) .* inMv2(1,:) - inMv1(12,:) .* inMv2(2,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(9,:) + inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(13,:) - inMv1(6,:) .* inMv2(10,:) - inMv1(5,:) .* inMv2(2,:) + inMv1(9,:) .* inMv2(1,:) + inMv1(10,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(3,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(10,:) - inMv1(2,:) .* inMv2(13,:) + inMv1(3,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(6,:) + inMv1(10,:) .* inMv2(1,:) - inMv1(13,:) .* inMv2(2,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(11,:) - inMv1(2,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(15,:) - inMv1(6,:) .* inMv2(16,:) + inMv1(4,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(9,:) + inMv1(8,:) .* inMv2(10,:) - inMv1(12,:) .* inMv2(13,:) - inMv1(5,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(7,:) - inMv1(10,:) .* inMv2(8,:) + inMv1(13,:) .* inMv2(12,:) + inMv1(11,:) .* inMv2(1,:) - inMv1(14,:) .* inMv2(2,:) - inMv1(15,:) .* inMv2(3,:) - inMv1(16,:) .* inMv2(6,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(12,:) + inMv1(2,:) .* inMv2(8,:) - inMv1(3,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(6,:) - inMv1(7,:) .* inMv2(3,:) + inMv1(8,:) .* inMv2(2,:) + inMv1(12,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(13,:) + inMv1(2,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(9,:) + inMv1(6,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(2,:) + inMv1(13,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(14,:) + inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(15,:) - inMv1(4,:) .* inMv2(9,:) + inMv1(7,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(13,:) + inMv1(12,:) .* inMv2(10,:) + inMv1(5,:) .* inMv2(7,:) - inMv1(9,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(12,:) - inMv1(13,:) .* inMv2(8,:) + inMv1(11,:) .* inMv2(2,:) + inMv1(14,:) .* inMv2(1,:) + inMv1(15,:) .* inMv2(6,:) - inMv1(16,:) .* inMv2(3,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(15,:) - inMv1(2,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(11,:) + inMv1(6,:) .* inMv2(14,:) - inMv1(4,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(13,:) + inMv1(8,:) .* inMv2(5,:) - inMv1(12,:) .* inMv2(9,:) + inMv1(5,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(12,:) - inMv1(10,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(7,:) + inMv1(11,:) .* inMv2(3,:) - inMv1(14,:) .* inMv2(6,:) + inMv1(15,:) .* inMv2(1,:) + inMv1(16,:) .* inMv2(2,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(16,:) + inMv1(2,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(14,:) + inMv1(6,:) .* inMv2(11,:) + inMv1(4,:) .* inMv2(13,:) - inMv1(7,:) .* inMv2(10,:) + inMv1(8,:) .* inMv2(9,:) + inMv1(12,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(12,:) + inMv1(9,:) .* inMv2(8,:) - inMv1(10,:) .* inMv2(7,:) - inMv1(13,:) .* inMv2(4,:) + inMv1(11,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(3,:) - inMv1(15,:) .* inMv2(2,:) + inMv1(16,:) .* inMv2(1,:);
end
