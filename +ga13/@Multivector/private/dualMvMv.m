
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
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv(16,:);
    outMv(2,:) = -inMv(15,:);
    outMv(3,:) = inMv(14,:);
    outMv(4,:) = -inMv(13,:);
    outMv(5,:) = -inMv(12,:);
    outMv(6,:) = -inMv(11,:);
    outMv(7,:) = inMv(10,:);
    outMv(8,:) = -inMv(9,:);
    outMv(9,:) = inMv(8,:);
    outMv(10,:) = -inMv(7,:);
    outMv(11,:) = inMv(6,:);
    outMv(12,:) = inMv(5,:);
    outMv(13,:) = inMv(4,:);
    outMv(14,:) = -inMv(3,:);
    outMv(15,:) = inMv(2,:);
    outMv(16,:) = -inMv(1,:);
end
