
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
    
    outMv(2,:) = inMv(31,:);
    outMv(7,:) = -inMv(26,:);
    outMv(8,:) = inMv(25,:);
    outMv(10,:) = -inMv(23,:);
    outMv(13,:) = inMv(20,:);
    outMv(17,:) = -inMv(16,:);
    outMv(18,:) = inMv(15,:);
    outMv(19,:) = -inMv(14,:);
    outMv(21,:) = -inMv(12,:);
    outMv(22,:) = inMv(11,:);
    outMv(24,:) = -inMv(9,:);
    outMv(27,:) = inMv(6,:);
    outMv(28,:) = -inMv(5,:);
    outMv(29,:) = inMv(4,:);
    outMv(30,:) = -inMv(3,:);
    outMv(32,:) = inMv(1,:);
end
