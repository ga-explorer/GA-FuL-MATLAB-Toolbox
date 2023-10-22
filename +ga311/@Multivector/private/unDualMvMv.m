
% ------------------------------------------------
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
    
    outMv(3,:) = inMv(30,:);
    outMv(7,:) = -inMv(26,:);
    outMv(9,:) = inMv(24,:);
    outMv(11,:) = -inMv(22,:);
    outMv(14,:) = inMv(19,:);
    outMv(17,:) = -inMv(16,:);
    outMv(18,:) = inMv(15,:);
    outMv(20,:) = -inMv(13,:);
    outMv(21,:) = -inMv(12,:);
    outMv(23,:) = inMv(10,:);
    outMv(25,:) = -inMv(8,:);
    outMv(27,:) = inMv(6,:);
    outMv(28,:) = -inMv(5,:);
    outMv(29,:) = inMv(4,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end
