% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(5,:) = inMv(28,:);
    outMv(10,:) = -inMv(23,:);
    outMv(11,:) = inMv(22,:);
    outMv(12,:) = -inMv(21,:);
    outMv(16,:) = inMv(17,:);
    outMv(18,:) = -inMv(15,:);
    outMv(19,:) = inMv(14,:);
    outMv(20,:) = -inMv(13,:);
    outMv(24,:) = -inMv(9,:);
    outMv(25,:) = inMv(8,:);
    outMv(26,:) = -inMv(7,:);
    outMv(27,:) = inMv(6,:);
    outMv(29,:) = -inMv(4,:);
    outMv(30,:) = inMv(3,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end
