
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

classdef Multivector
    properties
        Grade (1,1) int32,
        ScalarCount (1,1) uint32,
        SampleCount (1,1) uint32,
        Data double
    end
    
    methods
        function obj = Multivector(grade, sampleCount)
            arguments
                grade (1,1) int32
                sampleCount (1,1) uint32
            end
        
            obj.Grade = grade;
            obj.SampleCount = sampleCount;
        
            switch grade
                case 0
                    obj.ScalarCount = 1;
                case 1
                    obj.ScalarCount = 2;
                case 2
                    obj.ScalarCount = 1;
                otherwise
                    obj.Grade = -1;
                    obj.ScalarCount = 4;
                
            end
        
            obj.Data = zeros(obj.ScalarCount, obj.SampleCount, 'double');
        end
        
        function outMv = getScalarPart(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outMv = ga002.Multivector(0, inMv.SampleCount);
        
            if (inMv.Grade == 0)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(1,:);
            end
        end
        
        function outMv = getVectorPart(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outMv = ga002.Multivector(1, inMv.SampleCount);
        
            if (inMv.Grade == 1)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(2:3,:);
            end
        end
        
        function outMv = getBivectorPart(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outMv = ga002.Multivector(2, inMv.SampleCount);
        
            if (inMv.Grade == 2)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(4,:);
            end
        end
        
        function outMv = getKVectorPart(inMv, grade)
            arguments
                inMv (1,1) ga002.Multivector
                grade (1,1) int32
            end
        
            if (grade < 0 || grade > 2)
                error('Invalid k-vector grade');
            end
        
            outMv = ga002.Multivector(grade, inMv.SampleCount);
        
            if (inMv.Grade == grade)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                switch grade
                    case 0
                        outMv.Data = inMv.Data(1,:);
                    case 1
                        outMv.Data = inMv.Data(2:3,:);
                    case 2
                        outMv.Data = inMv.Data(4,:);
                end
            end
        end
        
        function outMv = getFullMultivector(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outMv = ga002.Multivector(-1, inMv.SampleCount);
        
            switch inMv.Grade
                case 0
                    outMv.Data(1,:) = inMv.Data;
                case 1
                    outMv.Data(2:3,:) = inMv.Data;
                case 2
                    outMv.Data(4,:) = inMv.Data;
                otherwise
                    outMv.Data = inMv.Data;
            end
        end
        
        function outMv = uplus(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outMv = ga002.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = inMv.Data;
        end
        
        function outMv = uminus(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outMv = ga002.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = -inMv.Data;
        end
        
        function outMv = mtimes(inMv, inScalar)
            arguments
                inMv (1,1) ga002.Multivector
                inScalar (1,1) double
            end
        
            outMv = ga002.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = inMv.Data * inScalar;
        end
        
        function outMv = mrdivide(inMv, inScalar)
            arguments
                inMv (1,1) ga002.Multivector
                inScalar (1,1) double
            end
        
            outMv = ga002.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = inMv.Data / inScalar;
        end
        
        function outScalar = normSquared(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outScalar = normSquaredKv0(inMv.Data);
                case 1
                    outScalar = normSquaredKv1(inMv.Data);
                case 2
                    outScalar = normSquaredKv2(inMv.Data);
                otherwise
                    outScalar = normSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = norm(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            outScalar = sqrt(abs(inMv.normSquared()));
        end
        
        function outMv = negative(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = negativeKv0Kv0(inMv.Data);
                case 1
                    outMv = ga002.Multivector(1, inMv.SampleCount);
                    outMv.Data = negativeKv1Kv1(inMv.Data);
                case 2
                    outMv = ga002.Multivector(2, inMv.SampleCount);
                    outMv.Data = negativeKv2Kv2(inMv.Data);
                otherwise
                    outMv = ga002.Multivector(-1, inMv.SampleCount);
                    outMv.Data = negativeMvMv(inMv.Data);
            end
            
        end
        
        function outMv = reverse(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = reverseKv0Kv0(inMv.Data);
                case 1
                    outMv = ga002.Multivector(1, inMv.SampleCount);
                    outMv.Data = reverseKv1Kv1(inMv.Data);
                case 2
                    outMv = ga002.Multivector(2, inMv.SampleCount);
                    outMv.Data = reverseKv2Kv2(inMv.Data);
                otherwise
                    outMv = ga002.Multivector(-1, inMv.SampleCount);
                    outMv.Data = reverseMvMv(inMv.Data);
            end
            
        end
        
        function outMv = gradeInvolution(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv0Kv0(inMv.Data);
                case 1
                    outMv = ga002.Multivector(1, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv1Kv1(inMv.Data);
                case 2
                    outMv = ga002.Multivector(2, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv2Kv2(inMv.Data);
                otherwise
                    outMv = ga002.Multivector(-1, inMv.SampleCount);
                    outMv.Data = gradeInvolutionMvMv(inMv.Data);
            end
            
        end
        
        function outMv = cliffordConjugate(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv0Kv0(inMv.Data);
                case 1
                    outMv = ga002.Multivector(1, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv1Kv1(inMv.Data);
                case 2
                    outMv = ga002.Multivector(2, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv2Kv2(inMv.Data);
                otherwise
                    outMv = ga002.Multivector(-1, inMv.SampleCount);
                    outMv.Data = cliffordConjugateMvMv(inMv.Data);
            end
            
        end
        
        function outMv = conjugate(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv0Kv0(inMv.Data);
                case 1
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv1Kv0(inMv.Data);
                case 2
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv2Kv0(inMv.Data);
                otherwise
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateMvKv0(inMv.Data);
            end
            
        end
        
        function outMv = unDual(inMv)
            arguments
                inMv (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    outMv = ga002.Multivector(2, inMv.SampleCount);
                    outMv.Data = unDualKv0Kv2(inMv.Data);
                case 1
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = unDualKv1Kv0(inMv.Data);
                case 2
                    outMv = ga002.Multivector(0, inMv.SampleCount);
                    outMv.Data = unDualKv2Kv0(inMv.Data);
                otherwise
                    outMv = ga002.Multivector(2, inMv.SampleCount);
                    outMv.Data = unDualMvKv2(inMv.Data);
            end
            
        end
        
        function outMv = plus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            if (inMv1.SampleCount ~= inMv2.SampleCount)
                error('Number of samples in both multivectors must match');
            end
        
            if (inMv1.Grade == inMv2.Grade)
                outMv = ga002.Multivector(inMv1.Grade, inMv1.SampleCount);
                outMv.Data = inMv1.Data + inMv2.Data;
            else
                outMv = ga002.Multivector(-1, inMv1.SampleCount);
                
                switch inMv1.Grade
                    case 0
                        outMv.Data(1,:) = inMv1.Data;
                    case 1
                        outMv.Data(2:3,:) = inMv1.Data;
                    case 2
                        outMv.Data(4,:) = inMv1.Data;
                    otherwise
                        outMv.Data = inMv1.Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMv.Data(1,:) = outMv.Data(1,:) + inMv2.Data;
                    case 1
                        outMv.Data(2:3,:) = outMv.Data(2:3,:) + inMv2.Data;
                    case 2
                        outMv.Data(4,:) = outMv.Data(4,:) + inMv2.Data;
                    otherwise
                        outMv.Data = outMv.Data + inMv2.Data;
                end
            end
        end
        
        function outMv = minus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            if (inMv1.SampleCount ~= inMv2.SampleCount)
                error('Number of samples in both multivectors must match');
            end
        
            if (inMv1.Grade == inMv2.Grade)
                outMv = ga002.Multivector(inMv1.Grade, inMv1.SampleCount);
                outMv.Data = inMv1.Data - inMv2.Data;
            else
                outMv = ga002.Multivector(-1, inMv1.SampleCount);
                
                switch inMv1.Grade
                    case 0
                        outMv.Data(1,:) = inMv1.Data;
                    case 1
                        outMv.Data(2:3,:) = inMv1.Data;
                    case 2
                        outMv.Data(4,:) = inMv1.Data;
                    otherwise
                        outMv.Data = inMv1.Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMv.Data(1,:) = outMv.Data(1,:) - inMv2.Data;
                    case 1
                        outMv.Data(2:3,:) = outMv.Data(2:3,:) - inMv2.Data;
                    case 2
                        outMv.Data(4,:) = outMv.Data(4,:) - inMv2.Data;
                    otherwise
                        outMv.Data = outMv.Data - inMv2.Data;
                end
            end
        end
        
        function outMv = sp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvMvKv0(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = op(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = opKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = opKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv1Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv2MvKv2(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opMvKv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = lcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv1MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = lcpMvKv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = lcpMvKv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = rcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = rcpKv1MvKv1(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = rcpKv2MvKv2(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpMvKv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpMvKv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = fdp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv1MvKv1(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv2MvKv2(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpMvKv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = cp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = cpKv1MvKv2(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv2MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = cpMvKv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpMvKv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = cpMvMvKv2(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = acp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = acpKv1MvKv1(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv2MvKv2(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = acpMvKv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpMvKv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = gp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga002.Multivector
                inMv2 (1,1) ga002.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(1, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpKv2MvKv2(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga002.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpMvKv2Kv2(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga002.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outText = getLaTeX(inMv)
        	arguments
        		inMv (1,1) ga002.Multivector
        	end
        
            switch inMv.Grade
                case 0
                    basisText = "";
                case 1
                    basisText = ["\bm{e}_{01}"; "\bm{e}_{02}"];
                case 2
                    basisText = "\bm{e}_{01,02}";
                otherwise
                    basisText = [""; "\bm{e}_{01}"; "\bm{e}_{02}"; "\bm{e}_{01,02}"];
            end
        
        	outText = strings(1, inMv.SampleCount);
        	
        	for s = 1:inMv.SampleCount
        		[i,~,v] = find(inMv.Data(:,s));
        		outText(1, s) = extractAfter(join("+ (" + string(v) + ") " + basisText(i)), 2);
        	end
        end
        
    end
    
end
