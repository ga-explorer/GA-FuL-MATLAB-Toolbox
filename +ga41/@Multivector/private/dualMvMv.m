
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = dualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv(32,:);
    outMv(2,:) = -inMv(31,:);
    outMv(3,:) = -inMv(30,:);
    outMv(4,:) = inMv(29,:);
    outMv(5,:) = -inMv(28,:);
    outMv(6,:) = inMv(27,:);
    outMv(7,:) = inMv(26,:);
    outMv(8,:) = -inMv(25,:);
    outMv(9,:) = -inMv(24,:);
    outMv(10,:) = inMv(23,:);
    outMv(11,:) = inMv(22,:);
    outMv(12,:) = -inMv(21,:);
    outMv(13,:) = -inMv(20,:);
    outMv(14,:) = -inMv(19,:);
    outMv(15,:) = inMv(18,:);
    outMv(16,:) = -inMv(17,:);
    outMv(17,:) = inMv(16,:);
    outMv(18,:) = -inMv(15,:);
    outMv(19,:) = inMv(14,:);
    outMv(20,:) = inMv(13,:);
    outMv(21,:) = inMv(12,:);
    outMv(22,:) = -inMv(11,:);
    outMv(23,:) = -inMv(10,:);
    outMv(24,:) = inMv(9,:);
    outMv(25,:) = inMv(8,:);
    outMv(26,:) = -inMv(7,:);
    outMv(27,:) = -inMv(6,:);
    outMv(28,:) = inMv(5,:);
    outMv(29,:) = -inMv(4,:);
    outMv(30,:) = inMv(3,:);
    outMv(31,:) = inMv(2,:);
    outMv(32,:) = -inMv(1,:);
end
