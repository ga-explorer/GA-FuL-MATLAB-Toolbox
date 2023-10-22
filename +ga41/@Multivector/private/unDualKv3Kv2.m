
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = unDualKv3Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv(10,:);
    outMv(2,:) = inMv(9,:);
    outMv(3,:) = inMv(8,:);
    outMv(4,:) = -inMv(7,:);
    outMv(5,:) = -inMv(6,:);
    outMv(6,:) = inMv(5,:);
    outMv(7,:) = inMv(4,:);
    outMv(8,:) = inMv(3,:);
    outMv(9,:) = -inMv(2,:);
    outMv(10,:) = inMv(1,:);
end
