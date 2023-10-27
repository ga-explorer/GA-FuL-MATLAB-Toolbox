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
    properties (SetAccess = immutable)
        Grade (1,1) int32,
        ScalarCount (1,1) uint32,
        SampleCount (1,1) uint32,
        Data double
    end
    
    methods
        function obj = Multivector(grade, data)
            arguments
                grade (1,1) int32
                data (:,:) double
            end
            
            switch grade
                case 0
                    obj.Grade = 0;
                    obj.ScalarCount = 1;
                case 1
                    obj.Grade = 1;
                    obj.ScalarCount = 4;
                case 2
                    obj.Grade = 2;
                    obj.ScalarCount = 6;
                case 3
                    obj.Grade = 3;
                    obj.ScalarCount = 4;
                case 4
                    obj.Grade = 4;
                    obj.ScalarCount = 1;
                otherwise
                    obj.Grade = -1;
                    obj.ScalarCount = 16;
                
            end
        
            if (obj.ScalarCount ~= size(data, 1))
                error('Invalid number of scalars per multivector');
            end
        
            obj.SampleCount = size(data, 2);
            obj.Data = data;
        end
        
        function outMv = getScalarPart(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            if (inMv.Grade == 0)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(1,:);
            end
        
            outMv = ga301.Multivector(0, outMvData);
        end
        
        function outMv = getVectorPart(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            if (inMv.Grade == 1)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(2:5,:);
            end
        
            outMv = ga301.Multivector(1, outMvData);
        end
        
        function outMv = getBivectorPart(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            if (inMv.Grade == 2)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(6:11,:);
            end
        
            outMv = ga301.Multivector(2, outMvData);
        end
        
        function outMv = getTrivectorPart(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            if (inMv.Grade == 3)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(12:15,:);
            end
        
            outMv = ga301.Multivector(3, outMvData);
        end
        
        function outMv = get4VectorPart(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            if (inMv.Grade == 4)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(16,:);
            end
        
            outMv = ga301.Multivector(4, outMvData);
        end
        
        function outMv = getKVectorPart(inMv, grade)
            arguments
                inMv (1,1) ga301.Multivector
                grade (1,1) int32
            end
        
            if (grade < 0 || grade > 4)
                error('Invalid k-vector grade');
            end
        
            if (inMv.Grade == grade)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                switch grade
                    case 0
                        outMvData = inMv.Data(1,:);
                    case 1
                        outMvData = inMv.Data(2:5,:);
                    case 2
                        outMvData = inMv.Data(6:11,:);
                    case 3
                        outMvData = inMv.Data(12:15,:);
                    case 4
                        outMvData = inMv.Data(16,:);
                end
            end
        
            outMv = ga301.Multivector(grade, outMvData);
        end
        
        function outMv = getFullMultivector(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMvData(1,:) = inMv.Data;
                case 1
                    outMvData(2:5,:) = inMv.Data;
                case 2
                    outMvData(6:11,:) = inMv.Data;
                case 3
                    outMvData(12:15,:) = inMv.Data;
                case 4
                    outMvData(16,:) = inMv.Data;
                otherwise
                    outMvData = inMv.Data;
            end
        
            outMv = ga301.Multivector(-1, outMvData);
        end
        
        function outMvData = getDataArray(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            outMvData = inMv.Data;
        end
        
        function outMvData = getFullMultivectorDataArray(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            outMvData = zeros(16, inMv.SampleCount, 'double');
        
            switch inMv.Grade
                case 0
                    outMvData(1,:) = inMv.Data;
                case 1
                    outMvData(2:5,:) = inMv.Data;
                case 2
                    outMvData(6:11,:) = inMv.Data;
                case 3
                    outMvData(12:15,:) = inMv.Data;
                case 4
                    outMvData(16,:) = inMv.Data;
                otherwise
                    outMvData = inMv.Data;
            end
        end
        
        function outMv = uplus(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            outMv = ga301.Multivector(inMv.Grade, inMv.Data);
        end
        
        function outMv = uminus(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            outMv = ga301.Multivector(inMv.Grade, -inMv.Data);
        end
        
        function outMv = mtimes(inMv, inScalar)
            arguments
                inMv (1,1) ga301.Multivector
                inScalar (1,1) double
            end
        
            outMv = ga301.Multivector(inMv.Grade, inMv.Data * inScalar);
        end
        
        function outMv = mrdivide(inMv, inScalar)
            arguments
                inMv (1,1) ga301.Multivector
                inScalar (1,1) double
            end
        
            outMv = ga301.Multivector(inMv.Grade, inMv.Data / inScalar);
        end
        
        function outScalar = normSquared(inMv)
            arguments
                inMv (1,1) ga301.Multivector
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
                otherwise
                    outScalar = normSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = norm(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            outScalar = sqrt(abs(inMv.normSquared()));
        end
        
        function outScalar = pseudoNormSquared(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outScalar = pseudoNormSquaredKv0(inMv.Data);
                case 1
                    outScalar = pseudoNormSquaredKv1(inMv.Data);
                case 2
                    outScalar = pseudoNormSquaredKv2(inMv.Data);
                case 3
                    outScalar = pseudoNormSquaredKv3(inMv.Data);
                case 4
                    outScalar = pseudoNormSquaredKv4(inMv.Data);
                otherwise
                    outScalar = pseudoNormSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = pseudoNorm(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            outScalar = sqrt(abs(inMv.pseudoNormSquared()));
        end
        
        function outMv = negative(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga301.Multivector(0, negativeKv0Kv0(inMv.Data));
                case 1
                    outMv = ga301.Multivector(1, negativeKv1Kv1(inMv.Data));
                case 2
                    outMv = ga301.Multivector(2, negativeKv2Kv2(inMv.Data));
                case 3
                    outMv = ga301.Multivector(3, negativeKv3Kv3(inMv.Data));
                case 4
                    outMv = ga301.Multivector(4, negativeKv4Kv4(inMv.Data));
                otherwise
                    outMv = ga301.Multivector(-1, negativeMvMv(inMv.Data));
            end
            
        end
        
        function outMv = reverse(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga301.Multivector(0, reverseKv0Kv0(inMv.Data));
                case 1
                    outMv = ga301.Multivector(1, reverseKv1Kv1(inMv.Data));
                case 2
                    outMv = ga301.Multivector(2, reverseKv2Kv2(inMv.Data));
                case 3
                    outMv = ga301.Multivector(3, reverseKv3Kv3(inMv.Data));
                case 4
                    outMv = ga301.Multivector(4, reverseKv4Kv4(inMv.Data));
                otherwise
                    outMv = ga301.Multivector(-1, reverseMvMv(inMv.Data));
            end
            
        end
        
        function outMv = gradeInvolution(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga301.Multivector(0, gradeInvolutionKv0Kv0(inMv.Data));
                case 1
                    outMv = ga301.Multivector(1, gradeInvolutionKv1Kv1(inMv.Data));
                case 2
                    outMv = ga301.Multivector(2, gradeInvolutionKv2Kv2(inMv.Data));
                case 3
                    outMv = ga301.Multivector(3, gradeInvolutionKv3Kv3(inMv.Data));
                case 4
                    outMv = ga301.Multivector(4, gradeInvolutionKv4Kv4(inMv.Data));
                otherwise
                    outMv = ga301.Multivector(-1, gradeInvolutionMvMv(inMv.Data));
            end
            
        end
        
        function outMv = cliffordConjugate(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga301.Multivector(0, cliffordConjugateKv0Kv0(inMv.Data));
                case 1
                    outMv = ga301.Multivector(1, cliffordConjugateKv1Kv1(inMv.Data));
                case 2
                    outMv = ga301.Multivector(2, cliffordConjugateKv2Kv2(inMv.Data));
                case 3
                    outMv = ga301.Multivector(3, cliffordConjugateKv3Kv3(inMv.Data));
                case 4
                    outMv = ga301.Multivector(4, cliffordConjugateKv4Kv4(inMv.Data));
                otherwise
                    outMv = ga301.Multivector(-1, cliffordConjugateMvMv(inMv.Data));
            end
            
        end
        
        function outMv = conjugate(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga301.Multivector(0, conjugateKv0Kv0(inMv.Data));
                case 1
                    outMv = ga301.Multivector(1, conjugateKv1Kv1(inMv.Data));
                case 2
                    outMv = ga301.Multivector(2, conjugateKv2Kv2(inMv.Data));
                case 3
                    outMv = ga301.Multivector(3, conjugateKv3Kv3(inMv.Data));
                case 4
                    outMv = ga301.Multivector(0, conjugateKv4Kv0(inMv.Data));
                otherwise
                    outMv = ga301.Multivector(-1, conjugateMvMv(inMv.Data));
            end
            
        end
        
        function outMv = unDual(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga301.Multivector(4, unDualKv0Kv4(inMv.Data));
                case 1
                    outMv = ga301.Multivector(3, unDualKv1Kv3(inMv.Data));
                case 2
                    outMv = ga301.Multivector(2, unDualKv2Kv2(inMv.Data));
                case 3
                    outMv = ga301.Multivector(1, unDualKv3Kv1(inMv.Data));
                case 4
                    outMv = ga301.Multivector(0, unDualKv4Kv0(inMv.Data));
                otherwise
                    outMv = ga301.Multivector(-1, unDualMvMv(inMv.Data));
            end
            
        end
        
        function outMv = inverse(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            reverseMv = inMv.reverse();
            outMv = reverseMv.mrdivide(inMv.sp(reverseMv).Data);
        end
        
        function outMv = pseudoInverse(inMv)
            arguments
                inMv (1,1) ga301.Multivector
            end
        
            conjugateMv = inMv.conjugate();
            outMv = conjugateMv.mrdivide(inMv.sp(conjugateMv).Data);
        end
        
        function outMv = plus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            sampleCount1 = size(inMv1, 2);
            sampleCount2 = size(inMv2, 2);
        
            if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
                error('Number of samples in both inputs must either match or equal 1');
            end
        
            sampleCount = max(sampleCount1, sampleCount2);
        
            if (sampleCount1 == sampleCount)
                inMv1Data = inMv1.Data;
            else
                inMv1Data = repmat(inMv1.Data, 1, sampleCount);
            end
        
            if (sampleCount2 == sampleCount)
                inMv2Data = inMv2.Data;
            else
                inMv2Data = repmat(inMv2.Data, 1, sampleCount);
            end
        
            if (inMv1.Grade == inMv2.Grade)
                outMv = ga301.Multivector(inMv1.Grade, inMv1Data + inMv2Data);
            else
                outMvData = zeros(16, sampleCount, 'double');
        
                switch inMv1.Grade
                    case 0
                        outMvData(1,:) = inMv1Data;
                    case 1
                        outMvData(2:5,:) = inMv1Data;
                    case 2
                        outMvData(6:11,:) = inMv1Data;
                    case 3
                        outMvData(12:15,:) = inMv1Data;
                    case 4
                        outMvData(16,:) = inMv1Data;
                    otherwise
                        outMvData = inMv1Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMvData(1,:) = outMvData(1,:) + inMv2Data;
                    case 1
                        outMvData(2:5,:) = outMvData(2:5,:) + inMv2Data;
                    case 2
                        outMvData(6:11,:) = outMvData(6:11,:) + inMv2Data;
                    case 3
                        outMvData(12:15,:) = outMvData(12:15,:) + inMv2Data;
                    case 4
                        outMvData(16,:) = outMvData(16,:) + inMv2Data;
                    otherwise
                        outMvData = outMvData + inMv2Data;
                end
        
                outMv = ga301.Multivector(-1, outMvData);
            end
        end
        
        function outMv = minus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            sampleCount1 = size(inMv1, 2);
            sampleCount2 = size(inMv2, 2);
        
            if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
                error('Number of samples in both inputs must either match or equal 1');
            end
        
            sampleCount = max(sampleCount1, sampleCount2);
        
            if (sampleCount1 == sampleCount)
                inMv1Data = inMv1.Data;
            else
                inMv1Data = repmat(inMv1.Data, 1, sampleCount);
            end
        
            if (sampleCount2 == sampleCount)
                inMv2Data = inMv2.Data;
            else
                inMv2Data = repmat(inMv2.Data, 1, sampleCount);
            end
        
            if (inMv1.Grade == inMv2.Grade)
                outMv = ga301.Multivector(inMv1.Grade, inMv1Data - inMv2Data);
            else
                outMvData = zeros(16, sampleCount, 'double');
        
                switch inMv1.Grade
                    case 0
                        outMvData(1,:) = inMv1Data;
                    case 1
                        outMvData(2:5,:) = inMv1Data;
                    case 2
                        outMvData(6:11,:) = inMv1Data;
                    case 3
                        outMvData(12:15,:) = inMv1Data;
                    case 4
                        outMvData(16,:) = inMv1Data;
                    otherwise
                        outMvData = inMv1Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMvData(1,:) = outMvData(1,:) - inMv2Data;
                    case 1
                        outMvData(2:5,:) = outMvData(2:5,:) - inMv2Data;
                    case 2
                        outMvData(6:11,:) = outMvData(6:11,:) - inMv2Data;
                    case 3
                        outMvData(12:15,:) = outMvData(12:15,:) - inMv2Data;
                    case 4
                        outMvData(16,:) = outMvData(16,:) - inMv2Data;
                    otherwise
                        outMvData = outMvData - inMv2Data;
                end
        
                outMv = ga301.Multivector(-1, outMvData);
            end
        end
        
        function outMv = sp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, spKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, spKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, spKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, spKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, spKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, spKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, spKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, spKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, spKv1Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, spKv1Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, spKv1Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, spKv1MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, spKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, spKv2Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, spKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, spKv2Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, spKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, spKv2MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, spKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, spKv3Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, spKv3Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, spKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, spKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, spKv3MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, spKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, spKv4Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, spKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, spKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, spKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, spKv4MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, spMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, spMvKv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, spMvKv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, spMvKv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, spMvKv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, spMvMvKv0(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = op(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, opKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, opKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, opKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(3, opKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(4, opKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, opKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(1, opKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(2, opKv1Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(3, opKv1Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(4, opKv1Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, opKv1Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, opKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(2, opKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(3, opKv2Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(4, opKv2Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, opKv2Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, opKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, opKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(3, opKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(4, opKv3Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, opKv3Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, opKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, opKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, opKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(4, opKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, opKv4Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, opKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, opKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, opKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(4, opKv4MvKv4(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(-1, opMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, opMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, opMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, opMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(4, opMvKv4Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, opMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = lcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, lcpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, lcpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, lcpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(3, lcpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(4, lcpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, lcpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, lcpKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, lcpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(1, lcpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(2, lcpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(3, lcpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, lcpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, lcpKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, lcpKv2Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, lcpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, lcpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(2, lcpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, lcpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, lcpKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, lcpKv3Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, lcpKv3Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, lcpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(1, lcpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, lcpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, lcpKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, lcpKv4Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, lcpKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, lcpKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, lcpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, lcpKv4MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, lcpMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, lcpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, lcpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, lcpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(-1, lcpMvKv4Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, lcpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = rcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, rcpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, rcpKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, rcpKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, rcpKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, rcpKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, rcpKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(1, rcpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, rcpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, rcpKv1Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, rcpKv1Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, rcpKv1Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, rcpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(2, rcpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, rcpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, rcpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, rcpKv2Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, rcpKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, rcpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(3, rcpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(2, rcpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(1, rcpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, rcpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, rcpKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, rcpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(4, rcpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(3, rcpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, rcpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, rcpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, rcpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, rcpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(-1, rcpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, rcpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, rcpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, rcpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, rcpMvKv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, rcpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = fdp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, fdpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, fdpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, fdpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(3, fdpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(4, fdpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, fdpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(1, fdpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, fdpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(1, fdpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(2, fdpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(3, fdpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, fdpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(2, fdpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, fdpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, fdpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, fdpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(2, fdpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, fdpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(3, fdpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(2, fdpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(1, fdpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, fdpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(1, fdpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, fdpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(4, fdpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(3, fdpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, fdpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, fdpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, fdpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, fdpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(-1, fdpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, fdpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, fdpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, fdpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(-1, fdpMvKv4Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, fdpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = cp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, cpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, cpKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, cpKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, cpKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, cpKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(0, cpKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, cpKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(2, cpKv1Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(1, cpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(4, cpKv1Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(3, cpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, cpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, cpKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, cpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, cpKv2Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(3, cpKv2Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, cpKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, cpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, cpKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(4, cpKv3Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(3, cpKv3Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(2, cpKv3Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(1, cpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, cpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, cpKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(3, cpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(0, cpKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, cpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, cpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, cpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, cpMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, cpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, cpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, cpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(-1, cpMvKv4Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, cpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = acp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, acpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, acpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, acpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(3, acpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(4, acpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, acpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(1, acpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, acpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(3, acpKv1Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(2, acpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, acpKv1Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, acpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(2, acpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(3, acpKv2Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, acpKv2Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, acpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(2, acpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, acpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(3, acpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(2, acpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(1, acpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, acpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, acpKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, acpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(4, acpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(0, acpKv4Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, acpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(0, acpKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, acpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, acpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(-1, acpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, acpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, acpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, acpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(-1, acpMvKv4Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, acpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = gp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga301.Multivector
                inMv2 (1,1) ga301.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(0, gpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(1, gpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, gpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(3, gpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(4, gpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, gpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(1, gpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, gpKv1Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, gpKv1Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, gpKv1Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(3, gpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, gpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(2, gpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, gpKv2Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, gpKv2Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, gpKv2Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(2, gpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, gpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(3, gpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, gpKv3Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, gpKv3Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, gpKv3Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(1, gpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, gpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(4, gpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(3, gpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(2, gpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(1, gpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(0, gpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, gpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga301.Multivector(-1, gpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga301.Multivector(-1, gpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga301.Multivector(-1, gpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga301.Multivector(-1, gpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga301.Multivector(-1, gpMvKv4Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga301.Multivector(-1, gpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outText = getLaTeX(inMv)
        	arguments
        		inMv (1,1) ga301.Multivector
        	end
        
            switch inMv.Grade
                case 0
                    basisText = "";
                case 1
                    basisText = ["\bm{e}_{0}"; "\bm{e}_{1}"; "\bm{e}_{2}"; "\bm{e}_{3}"];
                case 2
                    basisText = ["\bm{e}_{0,1}"; "\bm{e}_{0,2}"; "\bm{e}_{1,2}"; "\bm{e}_{0,3}"; "\bm{e}_{1,3}"; "\bm{e}_{2,3}"];
                case 3
                    basisText = ["\bm{e}_{0,1,2}"; "\bm{e}_{0,1,3}"; "\bm{e}_{0,2,3}"; "\bm{e}_{1,2,3}"];
                case 4
                    basisText = "\bm{e}_{0,1,2,3}";
                otherwise
                    basisText = [""; "\bm{e}_{0}"; "\bm{e}_{1}"; "\bm{e}_{2}"; "\bm{e}_{3}"; "\bm{e}_{0,1}"; "\bm{e}_{0,2}"; "\bm{e}_{1,2}"; "\bm{e}_{0,3}"; "\bm{e}_{1,3}"; "\bm{e}_{2,3}"; "\bm{e}_{0,1,2}"; "\bm{e}_{0,1,3}"; "\bm{e}_{0,2,3}"; "\bm{e}_{1,2,3}"; "\bm{e}_{0,1,2,3}"];
            end
        
        	outText = strings(1, inMv.SampleCount);
        	
        	for s = 1:inMv.SampleCount
        		[i,~,v] = find(inMv.Data(:,s));
        
                if (isempty(i))
                    outText(1, s) = "0";
                else
            		outText(1, s) = extractAfter(join("+ (" + string(v) + ") " + basisText(i)), 2);
                end
        	end
        end
        
    end
    
end
