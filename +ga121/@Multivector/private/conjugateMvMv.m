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
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(5,:) = inMv(5,:);
    outMv(6,:) = -inMv(6,:);
    outMv(9,:) = inMv(9,:);
    outMv(10,:) = inMv(10,:);
    outMv(13,:) = -inMv(13,:);
end
