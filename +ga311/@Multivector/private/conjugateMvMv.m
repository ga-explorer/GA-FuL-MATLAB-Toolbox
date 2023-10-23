% -----------------------------------------------------------
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
    outMv(2,:) = -inMv(2,:);
    outMv(4,:) = inMv(4,:);
    outMv(5,:) = inMv(5,:);
    outMv(6,:) = inMv(6,:);
    outMv(8,:) = inMv(8,:);
    outMv(10,:) = inMv(10,:);
    outMv(12,:) = -inMv(12,:);
    outMv(13,:) = inMv(13,:);
    outMv(15,:) = -inMv(15,:);
    outMv(16,:) = -inMv(16,:);
    outMv(19,:) = inMv(19,:);
    outMv(22,:) = inMv(22,:);
    outMv(24,:) = inMv(24,:);
    outMv(26,:) = -inMv(26,:);
    outMv(30,:) = -inMv(30,:);
end
