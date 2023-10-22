
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
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(2,:) = inMv(15,:);
    outMv(6,:) = -inMv(11,:);
    outMv(7,:) = inMv(10,:);
    outMv(9,:) = -inMv(8,:);
    outMv(12,:) = -inMv(5,:);
    outMv(13,:) = inMv(4,:);
    outMv(14,:) = -inMv(3,:);
    outMv(16,:) = inMv(1,:);
end
