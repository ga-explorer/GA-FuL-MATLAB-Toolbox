
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = conjugateMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(3,:) = inMv(3,:);
    outMv(4,:) = inMv(4,:);
    outMv(5,:) = inMv(5,:);
    outMv(6,:) = inMv(6,:);
    outMv(9,:) = -inMv(9,:);
    outMv(11,:) = -inMv(11,:);
    outMv(12,:) = -inMv(12,:);
    outMv(14,:) = -inMv(14,:);
    outMv(15,:) = -inMv(15,:);
    outMv(16,:) = -inMv(16,:);
    outMv(20,:) = -inMv(20,:);
    outMv(23,:) = -inMv(23,:);
    outMv(25,:) = -inMv(25,:);
    outMv(26,:) = -inMv(26,:);
    outMv(31,:) = inMv(31,:);
end
