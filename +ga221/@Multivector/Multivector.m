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
                    obj.ScalarCount = 5;
                case 2
                    obj.Grade = 2;
                    obj.ScalarCount = 10;
                case 3
                    obj.Grade = 3;
                    obj.ScalarCount = 10;
                case 4
                    obj.Grade = 4;
                    obj.ScalarCount = 5;
                case 5
                    obj.Grade = 5;
                    obj.ScalarCount = 1;
                otherwise
                    obj.Grade = -1;
                    obj.ScalarCount = 32;
                
            end
        
            if (obj.ScalarCount ~= size(data, 1))
                error('Invalid number of scalars per multivector');
            end
        
            obj.SampleCount = size(data, 2);
            obj.Data = data;
        end
        
        function outMv = getScalarPart(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            if (inMv.Grade == 0)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(1,:);
            end
        
            outMv = ga221.Multivector(0, outMvData);
        end
        
        function outMv = getVectorPart(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            if (inMv.Grade == 1)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(2:6,:);
            end
        
            outMv = ga221.Multivector(1, outMvData);
        end
        
        function outMv = getBivectorPart(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            if (inMv.Grade == 2)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(7:16,:);
            end
        
            outMv = ga221.Multivector(2, outMvData);
        end
        
        function outMv = getTrivectorPart(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            if (inMv.Grade == 3)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(17:26,:);
            end
        
            outMv = ga221.Multivector(3, outMvData);
        end
        
        function outMv = get4VectorPart(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            if (inMv.Grade == 4)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(27:31,:);
            end
        
            outMv = ga221.Multivector(4, outMvData);
        end
        
        function outMv = get5VectorPart(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            if (inMv.Grade == 5)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(32,:);
            end
        
            outMv = ga221.Multivector(5, outMvData);
        end
        
        function outMv = getKVectorPart(inMv, grade)
            arguments
                inMv (1,1) ga221.Multivector
                grade (1,1) int32
            end
        
            if (grade < 0 || grade > 5)
                error('Invalid k-vector grade');
            end
        
            if (inMv.Grade == grade)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                switch grade
                    case 0
                        outMvData = inMv.Data(1,:);
                    case 1
                        outMvData = inMv.Data(2:6,:);
                    case 2
                        outMvData = inMv.Data(7:16,:);
                    case 3
                        outMvData = inMv.Data(17:26,:);
                    case 4
                        outMvData = inMv.Data(27:31,:);
                    case 5
                        outMvData = inMv.Data(32,:);
                end
            end
        
            outMv = ga221.Multivector(grade, outMvData);
        end
        
        function outMv = getFullMultivector(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMvData(1,:) = inMv.Data;
                case 1
                    outMvData(2:6,:) = inMv.Data;
                case 2
                    outMvData(7:16,:) = inMv.Data;
                case 3
                    outMvData(17:26,:) = inMv.Data;
                case 4
                    outMvData(27:31,:) = inMv.Data;
                case 5
                    outMvData(32,:) = inMv.Data;
                otherwise
                    outMvData = inMv.Data;
            end
        
            outMv = ga221.Multivector(-1, outMvData);
        end
        
        function outMvData = getDataArray(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            outMvData = inMv.Data;
        end
        
        function outMvData = getFullMultivectorDataArray(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            outMvData = zeros(32, inMv.SampleCount, 'double');
        
            switch inMv.Grade
                case 0
                    outMvData(1,:) = inMv.Data;
                case 1
                    outMvData(2:6,:) = inMv.Data;
                case 2
                    outMvData(7:16,:) = inMv.Data;
                case 3
                    outMvData(17:26,:) = inMv.Data;
                case 4
                    outMvData(27:31,:) = inMv.Data;
                case 5
                    outMvData(32,:) = inMv.Data;
                otherwise
                    outMvData = inMv.Data;
            end
        end
        
        function outMv = uplus(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            outMv = ga221.Multivector(inMv.Grade, inMv.Data);
        end
        
        function outMv = uminus(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            outMv = ga221.Multivector(inMv.Grade, -inMv.Data);
        end
        
        function outMv = mtimes(inMv, inScalar)
            arguments
                inMv (1,1) ga221.Multivector
                inScalar (:,:) double
            end
        
            inScalarSize = size(inScalar);
        
            if (inScalarSize(1) == 1 && inScalarSize(2) == 1)
                outMv = ga221.Multivector(inMv.Grade, inMv.Data * inScalar);
            elseif (inScalarSize(1) == 1 && inScalarSize(2) == inMv.SampleCount)
                outMv = ga221.Multivector(inMv.Grade, inMv.Data .* repmat(inScalar, [inMv.ScalarCount, 1]));
            else
                error('Invalid size of scalar array inScalar');
            end
        end
        
        function outMv = mrdivide(inMv, inScalar)
            arguments
                inMv (1,1) ga221.Multivector
                inScalar (:,:) double
            end
        
            inScalarSize = size(inScalar);
        
            if (inScalarSize(1) == 1 && inScalarSize(2) == 1)
                outMv = ga221.Multivector(inMv.Grade, inMv.Data / inScalar);
            elseif (inScalarSize(1) == 1 && inScalarSize(2) == inMv.SampleCount)
                outMv = ga221.Multivector(inMv.Grade, inMv.Data ./ repmat(inScalar, [inMv.ScalarCount, 1]));
            else
                error('Invalid size of scalar array inScalar');
            end
        end
        
        function outScalar = normSquared(inMv)
            arguments
                inMv (1,1) ga221.Multivector
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
                inMv (1,1) ga221.Multivector
            end
        
            outScalar = sqrt(abs(inMv.normSquared()));
        end
        
        function outScalar = pseudoNormSquared(inMv)
            arguments
                inMv (1,1) ga221.Multivector
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
                case 5
                    outScalar = pseudoNormSquaredKv5(inMv.Data);
                otherwise
                    outScalar = pseudoNormSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = pseudoNorm(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            outScalar = sqrt(abs(inMv.pseudoNormSquared()));
        end
        
        function outMv = negative(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga221.Multivector(0, negativeKv0Kv0(inMv.Data));
                case 1
                    outMv = ga221.Multivector(1, negativeKv1Kv1(inMv.Data));
                case 2
                    outMv = ga221.Multivector(2, negativeKv2Kv2(inMv.Data));
                case 3
                    outMv = ga221.Multivector(3, negativeKv3Kv3(inMv.Data));
                case 4
                    outMv = ga221.Multivector(4, negativeKv4Kv4(inMv.Data));
                case 5
                    outMv = ga221.Multivector(5, negativeKv5Kv5(inMv.Data));
                otherwise
                    outMv = ga221.Multivector(-1, negativeMvMv(inMv.Data));
            end
            
        end
        
        function outMv = reverse(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga221.Multivector(0, reverseKv0Kv0(inMv.Data));
                case 1
                    outMv = ga221.Multivector(1, reverseKv1Kv1(inMv.Data));
                case 2
                    outMv = ga221.Multivector(2, reverseKv2Kv2(inMv.Data));
                case 3
                    outMv = ga221.Multivector(3, reverseKv3Kv3(inMv.Data));
                case 4
                    outMv = ga221.Multivector(4, reverseKv4Kv4(inMv.Data));
                case 5
                    outMv = ga221.Multivector(5, reverseKv5Kv5(inMv.Data));
                otherwise
                    outMv = ga221.Multivector(-1, reverseMvMv(inMv.Data));
            end
            
        end
        
        function outMv = gradeInvolution(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga221.Multivector(0, gradeInvolutionKv0Kv0(inMv.Data));
                case 1
                    outMv = ga221.Multivector(1, gradeInvolutionKv1Kv1(inMv.Data));
                case 2
                    outMv = ga221.Multivector(2, gradeInvolutionKv2Kv2(inMv.Data));
                case 3
                    outMv = ga221.Multivector(3, gradeInvolutionKv3Kv3(inMv.Data));
                case 4
                    outMv = ga221.Multivector(4, gradeInvolutionKv4Kv4(inMv.Data));
                case 5
                    outMv = ga221.Multivector(5, gradeInvolutionKv5Kv5(inMv.Data));
                otherwise
                    outMv = ga221.Multivector(-1, gradeInvolutionMvMv(inMv.Data));
            end
            
        end
        
        function outMv = cliffordConjugate(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga221.Multivector(0, cliffordConjugateKv0Kv0(inMv.Data));
                case 1
                    outMv = ga221.Multivector(1, cliffordConjugateKv1Kv1(inMv.Data));
                case 2
                    outMv = ga221.Multivector(2, cliffordConjugateKv2Kv2(inMv.Data));
                case 3
                    outMv = ga221.Multivector(3, cliffordConjugateKv3Kv3(inMv.Data));
                case 4
                    outMv = ga221.Multivector(4, cliffordConjugateKv4Kv4(inMv.Data));
                case 5
                    outMv = ga221.Multivector(5, cliffordConjugateKv5Kv5(inMv.Data));
                otherwise
                    outMv = ga221.Multivector(-1, cliffordConjugateMvMv(inMv.Data));
            end
            
        end
        
        function outMv = conjugate(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga221.Multivector(0, conjugateKv0Kv0(inMv.Data));
                case 1
                    outMv = ga221.Multivector(1, conjugateKv1Kv1(inMv.Data));
                case 2
                    outMv = ga221.Multivector(2, conjugateKv2Kv2(inMv.Data));
                case 3
                    outMv = ga221.Multivector(3, conjugateKv3Kv3(inMv.Data));
                case 4
                    outMv = ga221.Multivector(4, conjugateKv4Kv4(inMv.Data));
                case 5
                    outMv = ga221.Multivector(0, conjugateKv5Kv0(inMv.Data));
                otherwise
                    outMv = ga221.Multivector(-1, conjugateMvMv(inMv.Data));
            end
            
        end
        
        function outMv = unDual(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga221.Multivector(5, unDualKv0Kv5(inMv.Data));
                case 1
                    outMv = ga221.Multivector(4, unDualKv1Kv4(inMv.Data));
                case 2
                    outMv = ga221.Multivector(3, unDualKv2Kv3(inMv.Data));
                case 3
                    outMv = ga221.Multivector(2, unDualKv3Kv2(inMv.Data));
                case 4
                    outMv = ga221.Multivector(1, unDualKv4Kv1(inMv.Data));
                case 5
                    outMv = ga221.Multivector(0, unDualKv5Kv0(inMv.Data));
                otherwise
                    outMv = ga221.Multivector(-1, unDualMvMv(inMv.Data));
            end
            
        end
        
        function outMv = inverse(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            reverseMv = inMv.reverse();
            outMv = reverseMv.mrdivide(inMv.sp(reverseMv));
        end
        
        function outMv = pseudoInverse(inMv)
            arguments
                inMv (1,1) ga221.Multivector
            end
        
            conjugateMv = inMv.conjugate();
            outMv = conjugateMv.mrdivide(inMv.sp(conjugateMv));
        end
        
        function outMv = plus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
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
                outMv = ga221.Multivector(inMv1.Grade, inMv1Data + inMv2Data);
            else
                outMvData = zeros(32, sampleCount, 'double');
        
                switch inMv1.Grade
                    case 0
                        outMvData(1,:) = inMv1Data;
                    case 1
                        outMvData(2:6,:) = inMv1Data;
                    case 2
                        outMvData(7:16,:) = inMv1Data;
                    case 3
                        outMvData(17:26,:) = inMv1Data;
                    case 4
                        outMvData(27:31,:) = inMv1Data;
                    case 5
                        outMvData(32,:) = inMv1Data;
                    otherwise
                        outMvData = inMv1Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMvData(1,:) = outMvData(1,:) + inMv2Data;
                    case 1
                        outMvData(2:6,:) = outMvData(2:6,:) + inMv2Data;
                    case 2
                        outMvData(7:16,:) = outMvData(7:16,:) + inMv2Data;
                    case 3
                        outMvData(17:26,:) = outMvData(17:26,:) + inMv2Data;
                    case 4
                        outMvData(27:31,:) = outMvData(27:31,:) + inMv2Data;
                    case 5
                        outMvData(32,:) = outMvData(32,:) + inMv2Data;
                    otherwise
                        outMvData = outMvData + inMv2Data;
                end
        
                outMv = ga221.Multivector(-1, outMvData);
            end
        end
        
        function outMv = minus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
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
                outMv = ga221.Multivector(inMv1.Grade, inMv1Data - inMv2Data);
            else
                outMvData = zeros(32, sampleCount, 'double');
        
                switch inMv1.Grade
                    case 0
                        outMvData(1,:) = inMv1Data;
                    case 1
                        outMvData(2:6,:) = inMv1Data;
                    case 2
                        outMvData(7:16,:) = inMv1Data;
                    case 3
                        outMvData(17:26,:) = inMv1Data;
                    case 4
                        outMvData(27:31,:) = inMv1Data;
                    case 5
                        outMvData(32,:) = inMv1Data;
                    otherwise
                        outMvData = inMv1Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMvData(1,:) = outMvData(1,:) - inMv2Data;
                    case 1
                        outMvData(2:6,:) = outMvData(2:6,:) - inMv2Data;
                    case 2
                        outMvData(7:16,:) = outMvData(7:16,:) - inMv2Data;
                    case 3
                        outMvData(17:26,:) = outMvData(17:26,:) - inMv2Data;
                    case 4
                        outMvData(27:31,:) = outMvData(27:31,:) - inMv2Data;
                    case 5
                        outMvData(32,:) = outMvData(32,:) - inMv2Data;
                    otherwise
                        outMvData = outMvData - inMv2Data;
                end
        
                outMv = ga221.Multivector(-1, outMvData);
            end
        end
        
        function outMv = sp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = spKv0Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv0Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv0Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv0Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv0Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv0Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv0MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = spKv1Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv1Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv1Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv1Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv1Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv1Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv1MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = spKv2Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv2Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv2Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv2Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv2Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv2Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv2MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = spKv3Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv3Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv3Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv3Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv3Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv3Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv3MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = spKv4Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv4Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv4Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv4Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv4Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv4Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv4MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = spKv5Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv5Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv5Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv5Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv5Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv5Kv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv5MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = spMvKv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spMvKv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spMvKv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spMvKv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spMvKv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spMvKv5Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spMvMvKv0(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = op(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, opKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, opKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, opKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, opKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(4, opKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(5, opKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, opKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(1, opKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(2, opKv1Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, opKv1Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(4, opKv1Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(5, opKv1Kv4Kv5(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, opKv1Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, opKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(2, opKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(3, opKv2Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(4, opKv2Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(5, opKv2Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, opKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, opKv2Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, opKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(3, opKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(4, opKv3Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(5, opKv3Kv2Kv5(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, opKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, opKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, opKv3Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, opKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(4, opKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(5, opKv4Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, opKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, opKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, opKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, opKv4Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, opKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(5, opKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, opKv5Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, opKv5Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, opKv5Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, opKv5Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, opKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(5, opKv5MvKv5(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(-1, opMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, opMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, opMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, opMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, opMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(5, opMvKv5Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, opMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = lcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, lcpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, lcpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, lcpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(4, lcpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(5, lcpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, lcpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, lcpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(1, lcpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, lcpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(3, lcpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(4, lcpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, lcpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, lcpKv2Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, lcpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(1, lcpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(2, lcpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(3, lcpKv2Kv5Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, lcpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, lcpKv3Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, lcpKv3Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, lcpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, lcpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(2, lcpKv3Kv5Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, lcpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, lcpKv4Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, lcpKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, lcpKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, lcpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(1, lcpKv4Kv5Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, lcpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpKv5Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, lcpKv5Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, lcpKv5Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, lcpKv5Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, lcpKv5Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, lcpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(0, lcpKv5MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, lcpMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, lcpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, lcpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, lcpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, lcpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(-1, lcpMvKv5Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, lcpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = rcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, rcpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, rcpKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, rcpKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, rcpKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, rcpKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpKv0Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(0, rcpKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(1, rcpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, rcpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, rcpKv1Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, rcpKv1Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, rcpKv1Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpKv1Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, rcpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(2, rcpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, rcpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, rcpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, rcpKv2Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, rcpKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpKv2Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, rcpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(3, rcpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(2, rcpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(1, rcpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, rcpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, rcpKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpKv3Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, rcpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(4, rcpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(3, rcpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, rcpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(1, rcpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, rcpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpKv4Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, rcpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(5, rcpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(4, rcpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, rcpKv5Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, rcpKv5Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, rcpKv5Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, rcpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(-1, rcpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, rcpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, rcpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, rcpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, rcpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, rcpMvKv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, rcpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = fdp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, fdpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, fdpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, fdpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, fdpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(4, fdpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(5, fdpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(1, fdpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, fdpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(1, fdpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, fdpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(3, fdpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(4, fdpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(2, fdpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, fdpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, fdpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(1, fdpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(2, fdpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(3, fdpKv2Kv5Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(3, fdpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(2, fdpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(1, fdpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, fdpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, fdpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(2, fdpKv3Kv5Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(4, fdpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(3, fdpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, fdpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(1, fdpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, fdpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(1, fdpKv4Kv5Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(5, fdpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(4, fdpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, fdpKv5Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, fdpKv5Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, fdpKv5Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, fdpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(-1, fdpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, fdpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, fdpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, fdpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, fdpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(-1, fdpMvKv5Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, fdpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = cp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, cpKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, cpKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, cpKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, cpKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpKv0Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(0, cpKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(2, cpKv1Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(1, cpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(4, cpKv1Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(3, cpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpKv1Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, cpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, cpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, cpKv2Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, cpKv2Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(4, cpKv2Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpKv2Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, cpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(4, cpKv3Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, cpKv3Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, cpKv3Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, cpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpKv3Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, cpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(3, cpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(4, cpKv4Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(1, cpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(2, cpKv4Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpKv4Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, cpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpKv5Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, cpKv5Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(0, cpKv5Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(0, cpKv5Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, cpKv5Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(0, cpKv5MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, cpMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, cpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, cpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, cpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, cpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, cpMvKv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, cpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = acp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, acpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, acpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, acpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, acpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(4, acpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(5, acpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(1, acpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(0, acpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, acpKv1Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, acpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(5, acpKv1Kv4Kv5(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(4, acpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(2, acpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(3, acpKv2Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, acpKv2Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, acpKv2Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(2, acpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(3, acpKv2Kv5Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(3, acpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(2, acpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, acpKv3Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, acpKv3Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(3, acpKv3Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(2, acpKv3Kv5Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(4, acpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(5, acpKv4Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, acpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, acpKv4Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(0, acpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(1, acpKv4Kv5Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(5, acpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(4, acpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, acpKv5Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, acpKv5Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, acpKv5Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, acpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(-1, acpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, acpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, acpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, acpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, acpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(-1, acpMvKv5Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, acpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = gp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga221.Multivector
                inMv2 (1,1) ga221.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(0, gpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(1, gpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(2, gpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(3, gpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(4, gpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(5, gpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(1, gpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, gpKv1Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, gpKv1Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, gpKv1Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, gpKv1Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(4, gpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(2, gpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, gpKv2Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, gpKv2Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, gpKv2Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, gpKv2Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(3, gpKv2Kv5Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(3, gpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, gpKv3Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, gpKv3Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, gpKv3Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, gpKv3Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(2, gpKv3Kv5Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(4, gpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, gpKv4Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, gpKv4Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, gpKv4Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, gpKv4Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(1, gpKv4Kv5Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(5, gpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(4, gpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(3, gpKv5Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(2, gpKv5Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(1, gpKv5Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(0, gpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga221.Multivector(-1, gpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga221.Multivector(-1, gpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga221.Multivector(-1, gpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga221.Multivector(-1, gpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga221.Multivector(-1, gpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga221.Multivector(-1, gpMvKv5Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga221.Multivector(-1, gpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outText = getLaTeX(inMv)
        	arguments
        		inMv (1,1) ga221.Multivector
        	end
        
            switch inMv.Grade
                case 0
                    basisText = "";
                case 1
                    basisText = ["\bm{e}_{-1}"; "\bm{e}_{-2}"; "\bm{e}_{0}"; "\bm{e}_{1}"; "\bm{e}_{2}"];
                case 2
                    basisText = ["\bm{e}_{-1,-2}"; "\bm{e}_{-1,0}"; "\bm{e}_{-2,0}"; "\bm{e}_{-1,1}"; "\bm{e}_{-2,1}"; "\bm{e}_{0,1}"; "\bm{e}_{-1,2}"; "\bm{e}_{-2,2}"; "\bm{e}_{0,2}"; "\bm{e}_{1,2}"];
                case 3
                    basisText = ["\bm{e}_{-1,-2,0}"; "\bm{e}_{-1,-2,1}"; "\bm{e}_{-1,0,1}"; "\bm{e}_{-2,0,1}"; "\bm{e}_{-1,-2,2}"; "\bm{e}_{-1,0,2}"; "\bm{e}_{-2,0,2}"; "\bm{e}_{-1,1,2}"; "\bm{e}_{-2,1,2}"; "\bm{e}_{0,1,2}"];
                case 4
                    basisText = ["\bm{e}_{-1,-2,0,1}"; "\bm{e}_{-1,-2,0,2}"; "\bm{e}_{-1,-2,1,2}"; "\bm{e}_{-1,0,1,2}"; "\bm{e}_{-2,0,1,2}"];
                case 5
                    basisText = "\bm{e}_{-1,-2,0,1,2}";
                otherwise
                    basisText = [""; "\bm{e}_{-1}"; "\bm{e}_{-2}"; "\bm{e}_{0}"; "\bm{e}_{1}"; "\bm{e}_{2}"; "\bm{e}_{-1,-2}"; "\bm{e}_{-1,0}"; "\bm{e}_{-2,0}"; "\bm{e}_{-1,1}"; "\bm{e}_{-2,1}"; "\bm{e}_{0,1}"; "\bm{e}_{-1,2}"; "\bm{e}_{-2,2}"; "\bm{e}_{0,2}"; "\bm{e}_{1,2}"; "\bm{e}_{-1,-2,0}"; "\bm{e}_{-1,-2,1}"; "\bm{e}_{-1,0,1}"; "\bm{e}_{-2,0,1}"; "\bm{e}_{-1,-2,2}"; "\bm{e}_{-1,0,2}"; "\bm{e}_{-2,0,2}"; "\bm{e}_{-1,1,2}"; "\bm{e}_{-2,1,2}"; "\bm{e}_{0,1,2}"; "\bm{e}_{-1,-2,0,1}"; "\bm{e}_{-1,-2,0,2}"; "\bm{e}_{-1,-2,1,2}"; "\bm{e}_{-1,0,1,2}"; "\bm{e}_{-2,0,1,2}"; "\bm{e}_{-1,-2,0,1,2}"];
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
