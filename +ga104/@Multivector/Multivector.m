% -----------------------------------------------------------
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
                    obj.ScalarCount = 5;
                case 2
                    obj.ScalarCount = 10;
                case 3
                    obj.ScalarCount = 10;
                case 4
                    obj.ScalarCount = 5;
                case 5
                    obj.ScalarCount = 1;
                otherwise
                    obj.Grade = -1;
                    obj.ScalarCount = 32;
                
            end
        
            obj.Data = zeros(obj.ScalarCount, obj.SampleCount, 'double');
        end
        
        function outMv = getScalarPart(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(0, inMv.SampleCount);
        
            if (inMv.Grade == 0)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(1,:);
            end
        end
        
        function outMv = getVectorPart(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(1, inMv.SampleCount);
        
            if (inMv.Grade == 1)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(2:6,:);
            end
        end
        
        function outMv = getBivectorPart(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(2, inMv.SampleCount);
        
            if (inMv.Grade == 2)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(7:16,:);
            end
        end
        
        function outMv = getTrivectorPart(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(3, inMv.SampleCount);
        
            if (inMv.Grade == 3)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(17:26,:);
            end
        end
        
        function outMv = get4VectorPart(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(4, inMv.SampleCount);
        
            if (inMv.Grade == 4)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(27:31,:);
            end
        end
        
        function outMv = get5VectorPart(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(5, inMv.SampleCount);
        
            if (inMv.Grade == 5)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                outMv.Data = inMv.Data(32,:);
            end
        end
        
        function outMv = getKVectorPart(inMv, grade)
            arguments
                inMv (1,1) ga104.Multivector
                grade (1,1) int32
            end
        
            if (grade < 0 || grade > 5)
                error('Invalid k-vector grade');
            end
        
            outMv = ga104.Multivector(grade, inMv.SampleCount);
        
            if (inMv.Grade == grade)
                outMv.Data = inMv.Data;
            elseif (inMv.Grade < 0)
                switch grade
                    case 0
                        outMv.Data = inMv.Data(1,:);
                    case 1
                        outMv.Data = inMv.Data(2:6,:);
                    case 2
                        outMv.Data = inMv.Data(7:16,:);
                    case 3
                        outMv.Data = inMv.Data(17:26,:);
                    case 4
                        outMv.Data = inMv.Data(27:31,:);
                    case 5
                        outMv.Data = inMv.Data(32,:);
                end
            end
        end
        
        function outMv = getFullMultivector(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(-1, inMv.SampleCount);
        
            switch inMv.Grade
                case 0
                    outMv.Data(1,:) = inMv.Data;
                case 1
                    outMv.Data(2:6,:) = inMv.Data;
                case 2
                    outMv.Data(7:16,:) = inMv.Data;
                case 3
                    outMv.Data(17:26,:) = inMv.Data;
                case 4
                    outMv.Data(27:31,:) = inMv.Data;
                case 5
                    outMv.Data(32,:) = inMv.Data;
                otherwise
                    outMv.Data = inMv.Data;
            end
        end
        
        function outMv = uplus(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = inMv.Data;
        end
        
        function outMv = uminus(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outMv = ga104.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = -inMv.Data;
        end
        
        function outMv = mtimes(inMv, inScalar)
            arguments
                inMv (1,1) ga104.Multivector
                inScalar (1,1) double
            end
        
            outMv = ga104.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = inMv.Data * inScalar;
        end
        
        function outMv = mrdivide(inMv, inScalar)
            arguments
                inMv (1,1) ga104.Multivector
                inScalar (1,1) double
            end
        
            outMv = ga104.Multivector(inMv.Grade, inMv.SampleCount);
            outMv.Data = inMv.Data / inScalar;
        end
        
        function outScalar = normSquared(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outScalar = normSquaredKv0(inMv.Data);
                case 1
                    outScalar = normSquaredKv1(inMv.Data);
                case 2
                    outScalar = normSquaredKv2(inMv.Data);
                case 3
                    outScalar = normSquaredKv3(inMv.Data);
                case 4
                    outScalar = normSquaredKv4(inMv.Data);
                case 5
                    outScalar = normSquaredKv5(inMv.Data);
                otherwise
                    outScalar = normSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = norm(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            outScalar = sqrt(abs(inMv.normSquared()));
        end
        
        function outMv = negative(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = negativeKv0Kv0(inMv.Data);
                case 1
                    outMv = ga104.Multivector(1, inMv.SampleCount);
                    outMv.Data = negativeKv1Kv1(inMv.Data);
                case 2
                    outMv = ga104.Multivector(2, inMv.SampleCount);
                    outMv.Data = negativeKv2Kv2(inMv.Data);
                case 3
                    outMv = ga104.Multivector(3, inMv.SampleCount);
                    outMv.Data = negativeKv3Kv3(inMv.Data);
                case 4
                    outMv = ga104.Multivector(4, inMv.SampleCount);
                    outMv.Data = negativeKv4Kv4(inMv.Data);
                case 5
                    outMv = ga104.Multivector(5, inMv.SampleCount);
                    outMv.Data = negativeKv5Kv5(inMv.Data);
                otherwise
                    outMv = ga104.Multivector(-1, inMv.SampleCount);
                    outMv.Data = negativeMvMv(inMv.Data);
            end
            
        end
        
        function outMv = reverse(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = reverseKv0Kv0(inMv.Data);
                case 1
                    outMv = ga104.Multivector(1, inMv.SampleCount);
                    outMv.Data = reverseKv1Kv1(inMv.Data);
                case 2
                    outMv = ga104.Multivector(2, inMv.SampleCount);
                    outMv.Data = reverseKv2Kv2(inMv.Data);
                case 3
                    outMv = ga104.Multivector(3, inMv.SampleCount);
                    outMv.Data = reverseKv3Kv3(inMv.Data);
                case 4
                    outMv = ga104.Multivector(4, inMv.SampleCount);
                    outMv.Data = reverseKv4Kv4(inMv.Data);
                case 5
                    outMv = ga104.Multivector(5, inMv.SampleCount);
                    outMv.Data = reverseKv5Kv5(inMv.Data);
                otherwise
                    outMv = ga104.Multivector(-1, inMv.SampleCount);
                    outMv.Data = reverseMvMv(inMv.Data);
            end
            
        end
        
        function outMv = gradeInvolution(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv0Kv0(inMv.Data);
                case 1
                    outMv = ga104.Multivector(1, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv1Kv1(inMv.Data);
                case 2
                    outMv = ga104.Multivector(2, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv2Kv2(inMv.Data);
                case 3
                    outMv = ga104.Multivector(3, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv3Kv3(inMv.Data);
                case 4
                    outMv = ga104.Multivector(4, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv4Kv4(inMv.Data);
                case 5
                    outMv = ga104.Multivector(5, inMv.SampleCount);
                    outMv.Data = gradeInvolutionKv5Kv5(inMv.Data);
                otherwise
                    outMv = ga104.Multivector(-1, inMv.SampleCount);
                    outMv.Data = gradeInvolutionMvMv(inMv.Data);
            end
            
        end
        
        function outMv = cliffordConjugate(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv0Kv0(inMv.Data);
                case 1
                    outMv = ga104.Multivector(1, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv1Kv1(inMv.Data);
                case 2
                    outMv = ga104.Multivector(2, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv2Kv2(inMv.Data);
                case 3
                    outMv = ga104.Multivector(3, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv3Kv3(inMv.Data);
                case 4
                    outMv = ga104.Multivector(4, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv4Kv4(inMv.Data);
                case 5
                    outMv = ga104.Multivector(5, inMv.SampleCount);
                    outMv.Data = cliffordConjugateKv5Kv5(inMv.Data);
                otherwise
                    outMv = ga104.Multivector(-1, inMv.SampleCount);
                    outMv.Data = cliffordConjugateMvMv(inMv.Data);
            end
            
        end
        
        function outMv = conjugate(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv0Kv0(inMv.Data);
                case 1
                    outMv = ga104.Multivector(1, inMv.SampleCount);
                    outMv.Data = conjugateKv1Kv1(inMv.Data);
                case 2
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv2Kv0(inMv.Data);
                case 3
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv3Kv0(inMv.Data);
                case 4
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv4Kv0(inMv.Data);
                case 5
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = conjugateKv5Kv0(inMv.Data);
                otherwise
                    outMv = ga104.Multivector(-1, inMv.SampleCount);
                    outMv.Data = conjugateMvMv(inMv.Data);
            end
            
        end
        
        function outMv = unDual(inMv)
            arguments
                inMv (1,1) ga104.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga104.Multivector(5, inMv.SampleCount);
                    outMv.Data = unDualKv0Kv5(inMv.Data);
                case 1
                    outMv = ga104.Multivector(4, inMv.SampleCount);
                    outMv.Data = unDualKv1Kv4(inMv.Data);
                case 2
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = unDualKv2Kv0(inMv.Data);
                case 3
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = unDualKv3Kv0(inMv.Data);
                case 4
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = unDualKv4Kv0(inMv.Data);
                case 5
                    outMv = ga104.Multivector(0, inMv.SampleCount);
                    outMv.Data = unDualKv5Kv0(inMv.Data);
                otherwise
                    outMv = ga104.Multivector(-1, inMv.SampleCount);
                    outMv.Data = unDualMvMv(inMv.Data);
            end
            
        end
        
        function outMv = plus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            if (inMv1.SampleCount ~= inMv2.SampleCount)
                error('Number of samples in both multivectors must match');
            end
        
            if (inMv1.Grade == inMv2.Grade)
                outMv = ga104.Multivector(inMv1.Grade, inMv1.SampleCount);
                outMv.Data = inMv1.Data + inMv2.Data;
            else
                outMv = ga104.Multivector(-1, inMv1.SampleCount);
                
                switch inMv1.Grade
                    case 0
                        outMv.Data(1,:) = inMv1.Data;
                    case 1
                        outMv.Data(2:6,:) = inMv1.Data;
                    case 2
                        outMv.Data(7:16,:) = inMv1.Data;
                    case 3
                        outMv.Data(17:26,:) = inMv1.Data;
                    case 4
                        outMv.Data(27:31,:) = inMv1.Data;
                    case 5
                        outMv.Data(32,:) = inMv1.Data;
                    otherwise
                        outMv.Data = inMv1.Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMv.Data(1,:) = outMv.Data(1,:) + inMv2.Data;
                    case 1
                        outMv.Data(2:6,:) = outMv.Data(2:6,:) + inMv2.Data;
                    case 2
                        outMv.Data(7:16,:) = outMv.Data(7:16,:) + inMv2.Data;
                    case 3
                        outMv.Data(17:26,:) = outMv.Data(17:26,:) + inMv2.Data;
                    case 4
                        outMv.Data(27:31,:) = outMv.Data(27:31,:) + inMv2.Data;
                    case 5
                        outMv.Data(32,:) = outMv.Data(32,:) + inMv2.Data;
                    otherwise
                        outMv.Data = outMv.Data + inMv2.Data;
                end
            end
        end
        
        function outMv = minus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            if (inMv1.SampleCount ~= inMv2.SampleCount)
                error('Number of samples in both multivectors must match');
            end
        
            if (inMv1.Grade == inMv2.Grade)
                outMv = ga104.Multivector(inMv1.Grade, inMv1.SampleCount);
                outMv.Data = inMv1.Data - inMv2.Data;
            else
                outMv = ga104.Multivector(-1, inMv1.SampleCount);
                
                switch inMv1.Grade
                    case 0
                        outMv.Data(1,:) = inMv1.Data;
                    case 1
                        outMv.Data(2:6,:) = inMv1.Data;
                    case 2
                        outMv.Data(7:16,:) = inMv1.Data;
                    case 3
                        outMv.Data(17:26,:) = inMv1.Data;
                    case 4
                        outMv.Data(27:31,:) = inMv1.Data;
                    case 5
                        outMv.Data(32,:) = inMv1.Data;
                    otherwise
                        outMv.Data = inMv1.Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMv.Data(1,:) = outMv.Data(1,:) - inMv2.Data;
                    case 1
                        outMv.Data(2:6,:) = outMv.Data(2:6,:) - inMv2.Data;
                    case 2
                        outMv.Data(7:16,:) = outMv.Data(7:16,:) - inMv2.Data;
                    case 3
                        outMv.Data(17:26,:) = outMv.Data(17:26,:) - inMv2.Data;
                    case 4
                        outMv.Data(27:31,:) = outMv.Data(27:31,:) - inMv2.Data;
                    case 5
                        outMv.Data(32,:) = outMv.Data(32,:) - inMv2.Data;
                    otherwise
                        outMv.Data = outMv.Data - inMv2.Data;
                end
            end
        end
        
        function outMv = sp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv1MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv2MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv3MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv4MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spKv5MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvKv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = spMvMvKv0(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = op(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = opKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = opKv0Kv3Kv3(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = opKv0Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv0Kv5Kv5(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = opKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv1Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = opKv1Kv2Kv3(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = opKv1Kv3Kv4(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv1Kv4Kv5(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv1Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = opKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = opKv2Kv1Kv3(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = opKv2Kv2Kv4(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv2Kv3Kv5(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv2MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = opKv3Kv0Kv3(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = opKv3Kv1Kv4(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv3Kv2Kv5(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv3MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = opKv4Kv0Kv4(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv4Kv1Kv5(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opKv4MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv5Kv0Kv5(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv5Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = opKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opKv5MvKv5(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvKv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = opMvKv5Kv5(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = opMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = lcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv3Kv3(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = lcpKv0Kv5Kv5(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv2Kv1(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv3Kv2(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv4Kv3(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = lcpKv1Kv5Kv4(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv2MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv3MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv4MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpKv5MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = lcpMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvKv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvKv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvKv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvKv5Mv(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = lcpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = rcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv1Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpKv2MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = rcpKv3Kv0Kv3(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = rcpKv3Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv3Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpKv3MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = rcpKv4Kv0Kv4(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = rcpKv4Kv1Kv3(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpKv4MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = rcpKv5Kv0Kv5(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = rcpKv5Kv1Kv4(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpKv5MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpMvKv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpMvKv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpMvKv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = rcpMvKv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = rcpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = fdp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv3Kv3(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = fdpKv0Kv5Kv5(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv2Kv1(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv3Kv2(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv4Kv3(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = fdpKv1Kv5Kv4(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv2MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = fdpKv3Kv0Kv3(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = fdpKv3Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv3Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv3MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = fdpKv4Kv0Kv4(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = fdpKv4Kv1Kv3(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv4MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = fdpKv5Kv0Kv5(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = fdpKv5Kv1Kv4(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = fdpKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpKv5MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvKv5Mv(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = fdpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = cp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv2Kv1(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv3Kv4(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv4Kv3(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv1Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv2Kv2(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv3Kv3(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpKv2MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv3Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = cpKv3Kv1Kv4(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = cpKv3Kv2Kv3(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpKv3MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv4Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = cpKv4Kv1Kv3(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = cpKv4Kv2Kv4(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpKv4MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpKv5MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpMvKv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpMvKv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpMvKv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = cpMvKv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = cpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = acp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv3Kv3(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = acpKv0Kv5Kv5(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv2Kv3(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv3Kv2(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv4Kv5(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = acpKv1Kv5Kv4(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv1Kv3(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv2Kv4(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv3Kv5(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv2MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = acpKv3Kv0Kv3(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = acpKv3Kv1Kv2(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = acpKv3Kv2Kv5(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = acpKv3Kv3Kv4(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv3MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = acpKv4Kv0Kv4(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = acpKv4Kv1Kv5(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv4MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = acpKv5Kv0Kv5(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = acpKv5Kv1Kv4(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = acpKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpKv5MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvKv5Mv(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = acpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = gp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga104.Multivector
                inMv2 (1,1) ga104.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv1Kv1(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv2Kv2(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv3Kv3(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = gpKv0Kv5Kv5(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv0MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(1, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv0Kv1(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv1Kv5Kv4(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv1MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(2, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv0Kv2(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv4Kv4(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv2MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(3, inMv1.SampleCount);
                            outMv.Data = gpKv3Kv0Kv3(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv3Kv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv3Kv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv3Kv3Kv4(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv3MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv4Kv0Kv4(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv4Kv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv4Kv2Kv4(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv4MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(5, inMv1.SampleCount);
                            outMv.Data = gpKv5Kv0Kv5(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(4, inMv1.SampleCount);
                            outMv.Data = gpKv5Kv1Kv4(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(0, inMv1.SampleCount);
                            outMv.Data = gpKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpKv5MvMv(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv0Mv(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv1Mv(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv2Mv(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv3Mv(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv4Mv(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvKv5Mv(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = ga104.Multivector(-1, inMv1.SampleCount);
                            outMv.Data = gpMvMvMv(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outText = getLaTeX(inMv)
        	arguments
        		inMv (1,1) ga104.Multivector
        	end
        
            switch inMv.Grade
                case 0
                    basisText = "";
                case 1
                    basisText = ["\bm{e}_{01}"; "\bm{e}_{02}"; "\bm{e}_{03}"; "\bm{e}_{04}"; "\bm{e}_{1}"];
                case 2
                    basisText = ["\bm{e}_{01,02}"; "\bm{e}_{01,03}"; "\bm{e}_{02,03}"; "\bm{e}_{01,04}"; "\bm{e}_{02,04}"; "\bm{e}_{03,04}"; "\bm{e}_{01,1}"; "\bm{e}_{02,1}"; "\bm{e}_{03,1}"; "\bm{e}_{04,1}"];
                case 3
                    basisText = ["\bm{e}_{01,02,03}"; "\bm{e}_{01,02,04}"; "\bm{e}_{01,03,04}"; "\bm{e}_{02,03,04}"; "\bm{e}_{01,02,1}"; "\bm{e}_{01,03,1}"; "\bm{e}_{02,03,1}"; "\bm{e}_{01,04,1}"; "\bm{e}_{02,04,1}"; "\bm{e}_{03,04,1}"];
                case 4
                    basisText = ["\bm{e}_{01,02,03,04}"; "\bm{e}_{01,02,03,1}"; "\bm{e}_{01,02,04,1}"; "\bm{e}_{01,03,04,1}"; "\bm{e}_{02,03,04,1}"];
                case 5
                    basisText = "\bm{e}_{01,02,03,04,1}";
                otherwise
                    basisText = [""; "\bm{e}_{01}"; "\bm{e}_{02}"; "\bm{e}_{03}"; "\bm{e}_{04}"; "\bm{e}_{1}"; "\bm{e}_{01,02}"; "\bm{e}_{01,03}"; "\bm{e}_{02,03}"; "\bm{e}_{01,04}"; "\bm{e}_{02,04}"; "\bm{e}_{03,04}"; "\bm{e}_{01,1}"; "\bm{e}_{02,1}"; "\bm{e}_{03,1}"; "\bm{e}_{04,1}"; "\bm{e}_{01,02,03}"; "\bm{e}_{01,02,04}"; "\bm{e}_{01,03,04}"; "\bm{e}_{02,03,04}"; "\bm{e}_{01,02,1}"; "\bm{e}_{01,03,1}"; "\bm{e}_{02,03,1}"; "\bm{e}_{01,04,1}"; "\bm{e}_{02,04,1}"; "\bm{e}_{03,04,1}"; "\bm{e}_{01,02,03,04}"; "\bm{e}_{01,02,03,1}"; "\bm{e}_{01,02,04,1}"; "\bm{e}_{01,03,04,1}"; "\bm{e}_{02,03,04,1}"; "\bm{e}_{01,02,03,04,1}"];
            end
        
        	outText = strings(1, inMv.SampleCount);
        	
        	for s = 1:inMv.SampleCount
        		[i,~,v] = find(inMv.Data(:,s));
        		outText(1, s) = extractAfter(join("+ (" + string(v) + ") " + basisText(i)), 2);
        	end
        end
        
    end
    
end
