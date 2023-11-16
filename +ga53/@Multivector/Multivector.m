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
                    obj.ScalarCount = 8;
                case 2
                    obj.Grade = 2;
                    obj.ScalarCount = 28;
                case 3
                    obj.Grade = 3;
                    obj.ScalarCount = 56;
                case 4
                    obj.Grade = 4;
                    obj.ScalarCount = 70;
                case 5
                    obj.Grade = 5;
                    obj.ScalarCount = 56;
                case 6
                    obj.Grade = 6;
                    obj.ScalarCount = 28;
                case 7
                    obj.Grade = 7;
                    obj.ScalarCount = 8;
                case 8
                    obj.Grade = 8;
                    obj.ScalarCount = 1;
                otherwise
                    obj.Grade = -1;
                    obj.ScalarCount = 256;
                
            end
        
            if (obj.ScalarCount ~= size(data, 1))
                error('Invalid number of scalars per multivector');
            end
        
            obj.SampleCount = size(data, 2);
            obj.Data = data;
        end
        
        function outMv = getScalarPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 0)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(1,:);
            end
        
            outMv = ga53.Multivector(0, outMvData);
        end
        
        function outMv = getVectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 1)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(2:9,:);
            end
        
            outMv = ga53.Multivector(1, outMvData);
        end
        
        function outMv = getBivectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 2)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(10:37,:);
            end
        
            outMv = ga53.Multivector(2, outMvData);
        end
        
        function outMv = getTrivectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 3)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(38:93,:);
            end
        
            outMv = ga53.Multivector(3, outMvData);
        end
        
        function outMv = get4VectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 4)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(94:163,:);
            end
        
            outMv = ga53.Multivector(4, outMvData);
        end
        
        function outMv = get5VectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 5)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(164:219,:);
            end
        
            outMv = ga53.Multivector(5, outMvData);
        end
        
        function outMv = get6VectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 6)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(220:247,:);
            end
        
            outMv = ga53.Multivector(6, outMvData);
        end
        
        function outMv = get7VectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 7)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(248:255,:);
            end
        
            outMv = ga53.Multivector(7, outMvData);
        end
        
        function outMv = get8VectorPart(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            if (inMv.Grade == 8)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                outMvData = inMv.Data(256,:);
            end
        
            outMv = ga53.Multivector(8, outMvData);
        end
        
        function outMv = getKVectorPart(inMv, grade)
            arguments
                inMv (1,1) ga53.Multivector
                grade (1,1) int32
            end
        
            if (grade < 0 || grade > 8)
                error('Invalid k-vector grade');
            end
        
            if (inMv.Grade == grade)
                outMvData = inMv.Data;
            elseif (inMv.Grade < 0)
                switch grade
                    case 0
                        outMvData = inMv.Data(1,:);
                    case 1
                        outMvData = inMv.Data(2:9,:);
                    case 2
                        outMvData = inMv.Data(10:37,:);
                    case 3
                        outMvData = inMv.Data(38:93,:);
                    case 4
                        outMvData = inMv.Data(94:163,:);
                    case 5
                        outMvData = inMv.Data(164:219,:);
                    case 6
                        outMvData = inMv.Data(220:247,:);
                    case 7
                        outMvData = inMv.Data(248:255,:);
                    case 8
                        outMvData = inMv.Data(256,:);
                end
            end
        
            outMv = ga53.Multivector(grade, outMvData);
        end
        
        function outMv = getFullMultivector(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMvData(1,:) = inMv.Data;
                case 1
                    outMvData(2:9,:) = inMv.Data;
                case 2
                    outMvData(10:37,:) = inMv.Data;
                case 3
                    outMvData(38:93,:) = inMv.Data;
                case 4
                    outMvData(94:163,:) = inMv.Data;
                case 5
                    outMvData(164:219,:) = inMv.Data;
                case 6
                    outMvData(220:247,:) = inMv.Data;
                case 7
                    outMvData(248:255,:) = inMv.Data;
                case 8
                    outMvData(256,:) = inMv.Data;
                otherwise
                    outMvData = inMv.Data;
            end
        
            outMv = ga53.Multivector(-1, outMvData);
        end
        
        function outMvData = getDataArray(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            outMvData = inMv.Data;
        end
        
        function outMvData = getFullMultivectorDataArray(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            outMvData = zeros(256, inMv.SampleCount, 'double');
        
            switch inMv.Grade
                case 0
                    outMvData(1,:) = inMv.Data;
                case 1
                    outMvData(2:9,:) = inMv.Data;
                case 2
                    outMvData(10:37,:) = inMv.Data;
                case 3
                    outMvData(38:93,:) = inMv.Data;
                case 4
                    outMvData(94:163,:) = inMv.Data;
                case 5
                    outMvData(164:219,:) = inMv.Data;
                case 6
                    outMvData(220:247,:) = inMv.Data;
                case 7
                    outMvData(248:255,:) = inMv.Data;
                case 8
                    outMvData(256,:) = inMv.Data;
                otherwise
                    outMvData = inMv.Data;
            end
        end
        
        function outMv = uplus(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            outMv = ga53.Multivector(inMv.Grade, inMv.Data);
        end
        
        function outMv = uminus(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            outMv = ga53.Multivector(inMv.Grade, -inMv.Data);
        end
        
        function outMv = mtimes(inMv, inScalar)
            arguments
                inMv (1,1) ga53.Multivector
                inScalar (:,:) double
            end
        
            inScalarSize = size(inScalar);
        
            if (inScalarSize(1) == 1 && inScalarSize(2) == 1)
                outMv = ga53.Multivector(inMv.Grade, inMv.Data * inScalar);
            elseif (inScalarSize(1) == 1 && inScalarSize(2) == inMv.SampleCount)
                outMv = ga53.Multivector(inMv.Grade, inMv.Data .* repmat(inScalar, [inMv.ScalarCount, 1]));
            else
                error('Invalid size of scalar array inScalar');
            end
        end
        
        function outMv = mrdivide(inMv, inScalar)
            arguments
                inMv (1,1) ga53.Multivector
                inScalar (:,:) double
            end
        
            inScalarSize = size(inScalar);
        
            if (inScalarSize(1) == 1 && inScalarSize(2) == 1)
                outMv = ga53.Multivector(inMv.Grade, inMv.Data / inScalar);
            elseif (inScalarSize(1) == 1 && inScalarSize(2) == inMv.SampleCount)
                outMv = ga53.Multivector(inMv.Grade, inMv.Data ./ repmat(inScalar, [inMv.ScalarCount, 1]));
            else
                error('Invalid size of scalar array inScalar');
            end
        end
        
        function outScalar = normSquared(inMv)
            arguments
                inMv (1,1) ga53.Multivector
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
                case 6
                    outScalar = normSquaredKv6(inMv.Data);
                case 7
                    outScalar = normSquaredKv7(inMv.Data);
                case 8
                    outScalar = normSquaredKv8(inMv.Data);
                otherwise
                    outScalar = normSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = norm(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            outScalar = sqrt(abs(inMv.normSquared()));
        end
        
        function outScalar = pseudoNormSquared(inMv)
            arguments
                inMv (1,1) ga53.Multivector
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
                case 6
                    outScalar = pseudoNormSquaredKv6(inMv.Data);
                case 7
                    outScalar = pseudoNormSquaredKv7(inMv.Data);
                case 8
                    outScalar = pseudoNormSquaredKv8(inMv.Data);
                otherwise
                    outScalar = pseudoNormSquaredMv(inMv.Data);
            end
            
        end
        
        function outScalar = pseudoNorm(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            outScalar = sqrt(abs(inMv.pseudoNormSquared()));
        end
        
        function outMv = negative(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(0, negativeKv0Kv0(inMv.Data));
                case 1
                    outMv = ga53.Multivector(1, negativeKv1Kv1(inMv.Data));
                case 2
                    outMv = ga53.Multivector(2, negativeKv2Kv2(inMv.Data));
                case 3
                    outMv = ga53.Multivector(3, negativeKv3Kv3(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, negativeKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(5, negativeKv5Kv5(inMv.Data));
                case 6
                    outMv = ga53.Multivector(6, negativeKv6Kv6(inMv.Data));
                case 7
                    outMv = ga53.Multivector(7, negativeKv7Kv7(inMv.Data));
                case 8
                    outMv = ga53.Multivector(8, negativeKv8Kv8(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, negativeMvMv(inMv.Data));
            end
            
        end
        
        function outMv = reverse(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(0, reverseKv0Kv0(inMv.Data));
                case 1
                    outMv = ga53.Multivector(1, reverseKv1Kv1(inMv.Data));
                case 2
                    outMv = ga53.Multivector(2, reverseKv2Kv2(inMv.Data));
                case 3
                    outMv = ga53.Multivector(3, reverseKv3Kv3(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, reverseKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(5, reverseKv5Kv5(inMv.Data));
                case 6
                    outMv = ga53.Multivector(6, reverseKv6Kv6(inMv.Data));
                case 7
                    outMv = ga53.Multivector(7, reverseKv7Kv7(inMv.Data));
                case 8
                    outMv = ga53.Multivector(8, reverseKv8Kv8(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, reverseMvMv(inMv.Data));
            end
            
        end
        
        function outMv = gradeInvolution(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(0, gradeInvolutionKv0Kv0(inMv.Data));
                case 1
                    outMv = ga53.Multivector(1, gradeInvolutionKv1Kv1(inMv.Data));
                case 2
                    outMv = ga53.Multivector(2, gradeInvolutionKv2Kv2(inMv.Data));
                case 3
                    outMv = ga53.Multivector(3, gradeInvolutionKv3Kv3(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, gradeInvolutionKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(5, gradeInvolutionKv5Kv5(inMv.Data));
                case 6
                    outMv = ga53.Multivector(6, gradeInvolutionKv6Kv6(inMv.Data));
                case 7
                    outMv = ga53.Multivector(7, gradeInvolutionKv7Kv7(inMv.Data));
                case 8
                    outMv = ga53.Multivector(8, gradeInvolutionKv8Kv8(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, gradeInvolutionMvMv(inMv.Data));
            end
            
        end
        
        function outMv = cliffordConjugate(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(0, cliffordConjugateKv0Kv0(inMv.Data));
                case 1
                    outMv = ga53.Multivector(1, cliffordConjugateKv1Kv1(inMv.Data));
                case 2
                    outMv = ga53.Multivector(2, cliffordConjugateKv2Kv2(inMv.Data));
                case 3
                    outMv = ga53.Multivector(3, cliffordConjugateKv3Kv3(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, cliffordConjugateKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(5, cliffordConjugateKv5Kv5(inMv.Data));
                case 6
                    outMv = ga53.Multivector(6, cliffordConjugateKv6Kv6(inMv.Data));
                case 7
                    outMv = ga53.Multivector(7, cliffordConjugateKv7Kv7(inMv.Data));
                case 8
                    outMv = ga53.Multivector(8, cliffordConjugateKv8Kv8(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, cliffordConjugateMvMv(inMv.Data));
            end
            
        end
        
        function outMv = conjugate(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(0, conjugateKv0Kv0(inMv.Data));
                case 1
                    outMv = ga53.Multivector(1, conjugateKv1Kv1(inMv.Data));
                case 2
                    outMv = ga53.Multivector(2, conjugateKv2Kv2(inMv.Data));
                case 3
                    outMv = ga53.Multivector(3, conjugateKv3Kv3(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, conjugateKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(5, conjugateKv5Kv5(inMv.Data));
                case 6
                    outMv = ga53.Multivector(6, conjugateKv6Kv6(inMv.Data));
                case 7
                    outMv = ga53.Multivector(7, conjugateKv7Kv7(inMv.Data));
                case 8
                    outMv = ga53.Multivector(8, conjugateKv8Kv8(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, conjugateMvMv(inMv.Data));
            end
            
        end
        
        function outMv = dual(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(8, dualKv0Kv8(inMv.Data));
                case 1
                    outMv = ga53.Multivector(7, dualKv1Kv7(inMv.Data));
                case 2
                    outMv = ga53.Multivector(6, dualKv2Kv6(inMv.Data));
                case 3
                    outMv = ga53.Multivector(5, dualKv3Kv5(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, dualKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(3, dualKv5Kv3(inMv.Data));
                case 6
                    outMv = ga53.Multivector(2, dualKv6Kv2(inMv.Data));
                case 7
                    outMv = ga53.Multivector(1, dualKv7Kv1(inMv.Data));
                case 8
                    outMv = ga53.Multivector(0, dualKv8Kv0(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, dualMvMv(inMv.Data));
            end
            
        end
        
        function outMv = unDual(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            switch inMv.Grade
                case 0
                    outMv = ga53.Multivector(8, unDualKv0Kv8(inMv.Data));
                case 1
                    outMv = ga53.Multivector(7, unDualKv1Kv7(inMv.Data));
                case 2
                    outMv = ga53.Multivector(6, unDualKv2Kv6(inMv.Data));
                case 3
                    outMv = ga53.Multivector(5, unDualKv3Kv5(inMv.Data));
                case 4
                    outMv = ga53.Multivector(4, unDualKv4Kv4(inMv.Data));
                case 5
                    outMv = ga53.Multivector(3, unDualKv5Kv3(inMv.Data));
                case 6
                    outMv = ga53.Multivector(2, unDualKv6Kv2(inMv.Data));
                case 7
                    outMv = ga53.Multivector(1, unDualKv7Kv1(inMv.Data));
                case 8
                    outMv = ga53.Multivector(0, unDualKv8Kv0(inMv.Data));
                otherwise
                    outMv = ga53.Multivector(-1, unDualMvMv(inMv.Data));
            end
            
        end
        
        function outMv = inverse(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            reverseMv = inMv.reverse();
            outMv = reverseMv.mrdivide(inMv.sp(reverseMv));
        end
        
        function outMv = pseudoInverse(inMv)
            arguments
                inMv (1,1) ga53.Multivector
            end
        
            conjugateMv = inMv.conjugate();
            outMv = conjugateMv.mrdivide(inMv.sp(conjugateMv));
        end
        
        function outMv = plus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
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
                outMv = ga53.Multivector(inMv1.Grade, inMv1Data + inMv2Data);
            else
                outMvData = zeros(256, sampleCount, 'double');
        
                switch inMv1.Grade
                    case 0
                        outMvData(1,:) = inMv1Data;
                    case 1
                        outMvData(2:9,:) = inMv1Data;
                    case 2
                        outMvData(10:37,:) = inMv1Data;
                    case 3
                        outMvData(38:93,:) = inMv1Data;
                    case 4
                        outMvData(94:163,:) = inMv1Data;
                    case 5
                        outMvData(164:219,:) = inMv1Data;
                    case 6
                        outMvData(220:247,:) = inMv1Data;
                    case 7
                        outMvData(248:255,:) = inMv1Data;
                    case 8
                        outMvData(256,:) = inMv1Data;
                    otherwise
                        outMvData = inMv1Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMvData(1,:) = outMvData(1,:) + inMv2Data;
                    case 1
                        outMvData(2:9,:) = outMvData(2:9,:) + inMv2Data;
                    case 2
                        outMvData(10:37,:) = outMvData(10:37,:) + inMv2Data;
                    case 3
                        outMvData(38:93,:) = outMvData(38:93,:) + inMv2Data;
                    case 4
                        outMvData(94:163,:) = outMvData(94:163,:) + inMv2Data;
                    case 5
                        outMvData(164:219,:) = outMvData(164:219,:) + inMv2Data;
                    case 6
                        outMvData(220:247,:) = outMvData(220:247,:) + inMv2Data;
                    case 7
                        outMvData(248:255,:) = outMvData(248:255,:) + inMv2Data;
                    case 8
                        outMvData(256,:) = outMvData(256,:) + inMv2Data;
                    otherwise
                        outMvData = outMvData + inMv2Data;
                end
        
                outMv = ga53.Multivector(-1, outMvData);
            end
        end
        
        function outMv = minus(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
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
                outMv = ga53.Multivector(inMv1.Grade, inMv1Data - inMv2Data);
            else
                outMvData = zeros(256, sampleCount, 'double');
        
                switch inMv1.Grade
                    case 0
                        outMvData(1,:) = inMv1Data;
                    case 1
                        outMvData(2:9,:) = inMv1Data;
                    case 2
                        outMvData(10:37,:) = inMv1Data;
                    case 3
                        outMvData(38:93,:) = inMv1Data;
                    case 4
                        outMvData(94:163,:) = inMv1Data;
                    case 5
                        outMvData(164:219,:) = inMv1Data;
                    case 6
                        outMvData(220:247,:) = inMv1Data;
                    case 7
                        outMvData(248:255,:) = inMv1Data;
                    case 8
                        outMvData(256,:) = inMv1Data;
                    otherwise
                        outMvData = inMv1Data;
                end
                
                switch inMv2.Grade
                    case 0
                        outMvData(1,:) = outMvData(1,:) - inMv2Data;
                    case 1
                        outMvData(2:9,:) = outMvData(2:9,:) - inMv2Data;
                    case 2
                        outMvData(10:37,:) = outMvData(10:37,:) - inMv2Data;
                    case 3
                        outMvData(38:93,:) = outMvData(38:93,:) - inMv2Data;
                    case 4
                        outMvData(94:163,:) = outMvData(94:163,:) - inMv2Data;
                    case 5
                        outMvData(164:219,:) = outMvData(164:219,:) - inMv2Data;
                    case 6
                        outMvData(220:247,:) = outMvData(220:247,:) - inMv2Data;
                    case 7
                        outMvData(248:255,:) = outMvData(248:255,:) - inMv2Data;
                    case 8
                        outMvData(256,:) = outMvData(256,:) - inMv2Data;
                    otherwise
                        outMvData = outMvData - inMv2Data;
                end
        
                outMv = ga53.Multivector(-1, outMvData);
            end
        end
        
        function outMv = sp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
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
                        case 6
                            outMv = spKv0Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv0Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv0Kv8Kv0(inMv1.Data, inMv2.Data);
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
                        case 6
                            outMv = spKv1Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv1Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv1Kv8Kv0(inMv1.Data, inMv2.Data);
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
                        case 6
                            outMv = spKv2Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv2Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv2Kv8Kv0(inMv1.Data, inMv2.Data);
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
                        case 6
                            outMv = spKv3Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv3Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv3Kv8Kv0(inMv1.Data, inMv2.Data);
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
                        case 6
                            outMv = spKv4Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv4Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv4Kv8Kv0(inMv1.Data, inMv2.Data);
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
                        case 6
                            outMv = spKv5Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv5Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv5Kv8Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv5MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = spKv6Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv6Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv6Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv6Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv6Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv6Kv5Kv0(inMv1.Data, inMv2.Data);
                        case 6
                            outMv = spKv6Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv6Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv6Kv8Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv6MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = spKv7Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv7Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv7Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv7Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv7Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv7Kv5Kv0(inMv1.Data, inMv2.Data);
                        case 6
                            outMv = spKv7Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv7Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv7Kv8Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv7MvKv0(inMv1.Data, inMv2.Data);
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = spKv8Kv0Kv0(inMv1.Data, inMv2.Data);
                        case 1
                            outMv = spKv8Kv1Kv0(inMv1.Data, inMv2.Data);
                        case 2
                            outMv = spKv8Kv2Kv0(inMv1.Data, inMv2.Data);
                        case 3
                            outMv = spKv8Kv3Kv0(inMv1.Data, inMv2.Data);
                        case 4
                            outMv = spKv8Kv4Kv0(inMv1.Data, inMv2.Data);
                        case 5
                            outMv = spKv8Kv5Kv0(inMv1.Data, inMv2.Data);
                        case 6
                            outMv = spKv8Kv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spKv8Kv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spKv8Kv8Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spKv8MvKv0(inMv1.Data, inMv2.Data);
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
                        case 6
                            outMv = spMvKv6Kv0(inMv1.Data, inMv2.Data);
                        case 7
                            outMv = spMvKv7Kv0(inMv1.Data, inMv2.Data);
                        case 8
                            outMv = spMvKv8Kv0(inMv1.Data, inMv2.Data);
                        otherwise
                            outMv = spMvMvKv0(inMv1.Data, inMv2.Data);
                    end
                    
            end
            
        end
        
        function outMv = op(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, opKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, opKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, opKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, opKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, opKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(5, opKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(6, opKv0Kv6Kv6(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(7, opKv0Kv7Kv7(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(8, opKv0Kv8Kv8(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(1, opKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(2, opKv1Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(3, opKv1Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(4, opKv1Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(5, opKv1Kv4Kv5(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(6, opKv1Kv5Kv6(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(7, opKv1Kv6Kv7(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(8, opKv1Kv7Kv8(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv1Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(2, opKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(3, opKv2Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(4, opKv2Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(5, opKv2Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(6, opKv2Kv4Kv6(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(7, opKv2Kv5Kv7(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(8, opKv2Kv6Kv8(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv2Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv2Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(3, opKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(4, opKv3Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(5, opKv3Kv2Kv5(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(6, opKv3Kv3Kv6(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(7, opKv3Kv4Kv7(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(8, opKv3Kv5Kv8(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, opKv3Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv3Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv3Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(4, opKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(5, opKv4Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(6, opKv4Kv2Kv6(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(7, opKv4Kv3Kv7(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(8, opKv4Kv4Kv8(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, opKv4Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, opKv4Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv4Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv4Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(5, opKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(6, opKv5Kv1Kv6(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(7, opKv5Kv2Kv7(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(8, opKv5Kv3Kv8(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, opKv5Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, opKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, opKv5Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv5Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv5Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(6, opKv6Kv0Kv6(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(7, opKv6Kv1Kv7(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(8, opKv6Kv2Kv8(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, opKv6Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, opKv6Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, opKv6Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, opKv6Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv6Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv6Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(7, opKv7Kv0Kv7(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(8, opKv7Kv1Kv8(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, opKv7Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, opKv7Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, opKv7Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, opKv7Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, opKv7Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv7Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv7Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(8, opKv8Kv0Kv8(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, opKv8Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, opKv8Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, opKv8Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, opKv8Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, opKv8Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, opKv8Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, opKv8Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, opKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(8, opKv8MvKv8(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(-1, opMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, opMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, opMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, opMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, opMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, opMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, opMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, opMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(8, opMvKv8Kv8(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, opMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = lcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, lcpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, lcpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, lcpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, lcpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(5, lcpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(6, lcpKv0Kv6Kv6(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(7, lcpKv0Kv7Kv7(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(8, lcpKv0Kv8Kv8(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(1, lcpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(2, lcpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(3, lcpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(4, lcpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(5, lcpKv1Kv6Kv5(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(6, lcpKv1Kv7Kv6(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(7, lcpKv1Kv8Kv7(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv2Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(1, lcpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(2, lcpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, lcpKv2Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(4, lcpKv2Kv6Kv4(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(5, lcpKv2Kv7Kv5(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(6, lcpKv2Kv8Kv6(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv3Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv3Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, lcpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(1, lcpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(2, lcpKv3Kv5Kv2(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(3, lcpKv3Kv6Kv3(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(4, lcpKv3Kv7Kv4(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(5, lcpKv3Kv8Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv4Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv4Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, lcpKv4Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, lcpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(1, lcpKv4Kv5Kv1(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, lcpKv4Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(3, lcpKv4Kv7Kv3(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(4, lcpKv4Kv8Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv5Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv5Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv5Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, lcpKv5Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, lcpKv5Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, lcpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(1, lcpKv5Kv6Kv1(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(2, lcpKv5Kv7Kv2(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(3, lcpKv5Kv8Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv6Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv6Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv6Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, lcpKv6Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, lcpKv6Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, lcpKv6Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, lcpKv6Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, lcpKv6Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(2, lcpKv6Kv8Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv7Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv7Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv7Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, lcpKv7Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, lcpKv7Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, lcpKv7Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, lcpKv7Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, lcpKv7Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(1, lcpKv7Kv8Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpKv8Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, lcpKv8Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, lcpKv8Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, lcpKv8Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, lcpKv8Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, lcpKv8Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, lcpKv8Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, lcpKv8Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, lcpKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(0, lcpKv8MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, lcpMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, lcpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, lcpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, lcpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, lcpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, lcpMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, lcpMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, lcpMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(-1, lcpMvKv8Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, lcpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = rcp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, rcpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, rcpKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, rcpKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, rcpKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, rcpKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, rcpKv0Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv0Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv0Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv0Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(0, rcpKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(1, rcpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, rcpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, rcpKv1Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, rcpKv1Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, rcpKv1Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, rcpKv1Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv1Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv1Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv1Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(2, rcpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, rcpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, rcpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, rcpKv2Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, rcpKv2Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, rcpKv2Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv2Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv2Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv2Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(3, rcpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(2, rcpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(1, rcpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, rcpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, rcpKv3Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, rcpKv3Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv3Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv3Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv3Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(4, rcpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(3, rcpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, rcpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(1, rcpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, rcpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, rcpKv4Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv4Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv4Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv4Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(5, rcpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(4, rcpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(3, rcpKv5Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(2, rcpKv5Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(1, rcpKv5Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, rcpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv5Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv5Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv5Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(6, rcpKv6Kv0Kv6(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(5, rcpKv6Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(4, rcpKv6Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, rcpKv6Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(2, rcpKv6Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(1, rcpKv6Kv5Kv1(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, rcpKv6Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv6Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv6Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(7, rcpKv7Kv0Kv7(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(6, rcpKv7Kv1Kv6(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(5, rcpKv7Kv2Kv5(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(4, rcpKv7Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(3, rcpKv7Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(2, rcpKv7Kv5Kv2(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(1, rcpKv7Kv6Kv1(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, rcpKv7Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv7Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(8, rcpKv8Kv0Kv8(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(7, rcpKv8Kv1Kv7(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(6, rcpKv8Kv2Kv6(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(5, rcpKv8Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, rcpKv8Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, rcpKv8Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, rcpKv8Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, rcpKv8Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpKv8MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(-1, rcpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, rcpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, rcpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, rcpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, rcpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, rcpMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, rcpMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, rcpMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, rcpMvKv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, rcpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = fdp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, fdpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, fdpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, fdpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, fdpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, fdpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(5, fdpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(6, fdpKv0Kv6Kv6(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(7, fdpKv0Kv7Kv7(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(8, fdpKv0Kv8Kv8(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(1, fdpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, fdpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(1, fdpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(2, fdpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(3, fdpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(4, fdpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(5, fdpKv1Kv6Kv5(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(6, fdpKv1Kv7Kv6(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(7, fdpKv1Kv8Kv7(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(2, fdpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, fdpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, fdpKv2Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(1, fdpKv2Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(2, fdpKv2Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, fdpKv2Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(4, fdpKv2Kv6Kv4(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(5, fdpKv2Kv7Kv5(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(6, fdpKv2Kv8Kv6(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(3, fdpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(2, fdpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(1, fdpKv3Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, fdpKv3Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(1, fdpKv3Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(2, fdpKv3Kv5Kv2(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(3, fdpKv3Kv6Kv3(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(4, fdpKv3Kv7Kv4(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(5, fdpKv3Kv8Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(4, fdpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(3, fdpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, fdpKv4Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(1, fdpKv4Kv3Kv1(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, fdpKv4Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(1, fdpKv4Kv5Kv1(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, fdpKv4Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(3, fdpKv4Kv7Kv3(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(4, fdpKv4Kv8Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(5, fdpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(4, fdpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(3, fdpKv5Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(2, fdpKv5Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(1, fdpKv5Kv4Kv1(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, fdpKv5Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(1, fdpKv5Kv6Kv1(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(2, fdpKv5Kv7Kv2(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(3, fdpKv5Kv8Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(6, fdpKv6Kv0Kv6(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(5, fdpKv6Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(4, fdpKv6Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, fdpKv6Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(2, fdpKv6Kv4Kv2(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(1, fdpKv6Kv5Kv1(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, fdpKv6Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, fdpKv6Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(2, fdpKv6Kv8Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(7, fdpKv7Kv0Kv7(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(6, fdpKv7Kv1Kv6(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(5, fdpKv7Kv2Kv5(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(4, fdpKv7Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(3, fdpKv7Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(2, fdpKv7Kv5Kv2(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(1, fdpKv7Kv6Kv1(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, fdpKv7Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(1, fdpKv7Kv8Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(8, fdpKv8Kv0Kv8(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(7, fdpKv8Kv1Kv7(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(6, fdpKv8Kv2Kv6(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(5, fdpKv8Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, fdpKv8Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, fdpKv8Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, fdpKv8Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, fdpKv8Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, fdpKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpKv8MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(-1, fdpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, fdpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, fdpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, fdpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, fdpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, fdpMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, fdpMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, fdpMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(-1, fdpMvKv8Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, fdpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = cp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, cpKv0Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, cpKv0Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, cpKv0Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, cpKv0Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, cpKv0Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, cpKv0Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, cpKv0Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, cpKv0Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(0, cpKv0MvKv0(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv1Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(2, cpKv1Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(1, cpKv1Kv2Kv1(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(4, cpKv1Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(3, cpKv1Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(6, cpKv1Kv5Kv6(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(5, cpKv1Kv6Kv5(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(8, cpKv1Kv7Kv8(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(7, cpKv1Kv8Kv7(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv2Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, cpKv2Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, cpKv2Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, cpKv2Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, cpKv2Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(5, cpKv2Kv5Kv5(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(6, cpKv2Kv6Kv6(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(7, cpKv2Kv7Kv7(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, cpKv2Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv3Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(4, cpKv3Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(3, cpKv3Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, cpKv3Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, cpKv3Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, cpKv3Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, cpKv3Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(6, cpKv3Kv7Kv6(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(5, cpKv3Kv8Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv4Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(3, cpKv4Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(4, cpKv4Kv2Kv4(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, cpKv4Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, cpKv4Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, cpKv4Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(4, cpKv4Kv6Kv4(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(5, cpKv4Kv7Kv5(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, cpKv4Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv5Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(6, cpKv5Kv1Kv6(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(5, cpKv5Kv2Kv5(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, cpKv5Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, cpKv5Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, cpKv5Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, cpKv5Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(4, cpKv5Kv7Kv4(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(3, cpKv5Kv8Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv6Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(5, cpKv6Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(6, cpKv6Kv2Kv6(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, cpKv6Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, cpKv6Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, cpKv6Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, cpKv6Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(3, cpKv6Kv7Kv3(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, cpKv6Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv7Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(8, cpKv7Kv1Kv8(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(7, cpKv7Kv2Kv7(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(6, cpKv7Kv3Kv6(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(5, cpKv7Kv4Kv5(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(4, cpKv7Kv5Kv4(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(3, cpKv7Kv6Kv3(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(2, cpKv7Kv7Kv2(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(1, cpKv7Kv8Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpKv8Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(7, cpKv8Kv1Kv7(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(0, cpKv8Kv2Kv0(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(5, cpKv8Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(0, cpKv8Kv4Kv0(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, cpKv8Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(0, cpKv8Kv6Kv0(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, cpKv8Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, cpKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpKv8MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, cpMvKv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, cpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, cpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, cpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, cpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, cpMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, cpMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, cpMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(-1, cpMvKv8Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, cpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = acp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, acpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, acpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, acpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, acpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, acpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(5, acpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(6, acpKv0Kv6Kv6(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(7, acpKv0Kv7Kv7(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(8, acpKv0Kv8Kv8(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(1, acpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, acpKv1Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(3, acpKv1Kv2Kv3(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(2, acpKv1Kv3Kv2(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(5, acpKv1Kv4Kv5(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(4, acpKv1Kv5Kv4(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(7, acpKv1Kv6Kv7(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(6, acpKv1Kv7Kv6(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, acpKv1Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(2, acpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(3, acpKv2Kv1Kv3(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, acpKv2Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, acpKv2Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, acpKv2Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, acpKv2Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, acpKv2Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(5, acpKv2Kv7Kv5(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(6, acpKv2Kv8Kv6(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(3, acpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(2, acpKv3Kv1Kv2(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, acpKv3Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, acpKv3Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, acpKv3Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, acpKv3Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(5, acpKv3Kv6Kv5(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(4, acpKv3Kv7Kv4(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, acpKv3Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(4, acpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(5, acpKv4Kv1Kv5(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, acpKv4Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, acpKv4Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, acpKv4Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, acpKv4Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, acpKv4Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(3, acpKv4Kv7Kv3(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(4, acpKv4Kv8Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(5, acpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(4, acpKv5Kv1Kv4(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, acpKv5Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, acpKv5Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, acpKv5Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, acpKv5Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(3, acpKv5Kv6Kv3(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(2, acpKv5Kv7Kv2(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, acpKv5Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(6, acpKv6Kv0Kv6(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(7, acpKv6Kv1Kv7(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, acpKv6Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(5, acpKv6Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, acpKv6Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, acpKv6Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, acpKv6Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, acpKv6Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(2, acpKv6Kv8Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(7, acpKv7Kv0Kv7(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(6, acpKv7Kv1Kv6(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(5, acpKv7Kv2Kv5(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(4, acpKv7Kv3Kv4(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(3, acpKv7Kv4Kv3(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(2, acpKv7Kv5Kv2(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(1, acpKv7Kv6Kv1(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, acpKv7Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, acpKv7Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(8, acpKv8Kv0Kv8(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(0, acpKv8Kv1Kv0(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(6, acpKv8Kv2Kv6(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(0, acpKv8Kv3Kv0(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, acpKv8Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(0, acpKv8Kv5Kv0(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, acpKv8Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(0, acpKv8Kv7Kv0(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, acpKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpKv8MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(-1, acpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, acpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, acpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, acpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, acpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, acpMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, acpMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, acpMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(-1, acpMvKv8Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, acpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outMv = gp(inMv1, inMv2)
            arguments
                inMv1 (1,1) ga53.Multivector
                inMv2 (1,1) ga53.Multivector
            end
        
            switch inMv1.Grade
                case 0
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(0, gpKv0Kv0Kv0(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(1, gpKv0Kv1Kv1(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(2, gpKv0Kv2Kv2(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(3, gpKv0Kv3Kv3(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, gpKv0Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(5, gpKv0Kv5Kv5(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(6, gpKv0Kv6Kv6(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(7, gpKv0Kv7Kv7(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(8, gpKv0Kv8Kv8(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv0MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 1
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(1, gpKv1Kv0Kv1(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv1Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv1Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv1Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv1Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv1Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv1Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv1Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(7, gpKv1Kv8Kv7(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv1MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 2
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(2, gpKv2Kv0Kv2(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv2Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv2Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv2Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv2Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv2Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv2Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv2Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(6, gpKv2Kv8Kv6(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv2MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 3
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(3, gpKv3Kv0Kv3(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv3Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv3Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv3Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv3Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv3Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv3Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv3Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(5, gpKv3Kv8Kv5(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv3MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 4
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(4, gpKv4Kv0Kv4(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv4Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv4Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv4Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv4Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv4Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv4Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv4Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(4, gpKv4Kv8Kv4(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv4MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 5
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(5, gpKv5Kv0Kv5(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv5Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv5Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv5Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv5Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv5Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv5Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv5Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(3, gpKv5Kv8Kv3(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv5MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 6
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(6, gpKv6Kv0Kv6(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv6Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv6Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv6Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv6Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv6Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv6Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv6Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(2, gpKv6Kv8Kv2(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv6MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 7
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(7, gpKv7Kv0Kv7(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpKv7Kv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpKv7Kv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpKv7Kv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpKv7Kv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpKv7Kv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpKv7Kv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpKv7Kv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(1, gpKv7Kv8Kv1(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv7MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                case 8
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(8, gpKv8Kv0Kv8(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(7, gpKv8Kv1Kv7(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(6, gpKv8Kv2Kv6(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(5, gpKv8Kv3Kv5(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(4, gpKv8Kv4Kv4(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(3, gpKv8Kv5Kv3(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(2, gpKv8Kv6Kv2(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(1, gpKv8Kv7Kv1(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(0, gpKv8Kv8Kv0(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpKv8MvMv(inMv1.Data, inMv2.Data));
                    end
                    
                otherwise
                    switch inMv2.Grade
                        case 0
                            outMv = ga53.Multivector(-1, gpMvKv0Mv(inMv1.Data, inMv2.Data));
                        case 1
                            outMv = ga53.Multivector(-1, gpMvKv1Mv(inMv1.Data, inMv2.Data));
                        case 2
                            outMv = ga53.Multivector(-1, gpMvKv2Mv(inMv1.Data, inMv2.Data));
                        case 3
                            outMv = ga53.Multivector(-1, gpMvKv3Mv(inMv1.Data, inMv2.Data));
                        case 4
                            outMv = ga53.Multivector(-1, gpMvKv4Mv(inMv1.Data, inMv2.Data));
                        case 5
                            outMv = ga53.Multivector(-1, gpMvKv5Mv(inMv1.Data, inMv2.Data));
                        case 6
                            outMv = ga53.Multivector(-1, gpMvKv6Mv(inMv1.Data, inMv2.Data));
                        case 7
                            outMv = ga53.Multivector(-1, gpMvKv7Mv(inMv1.Data, inMv2.Data));
                        case 8
                            outMv = ga53.Multivector(-1, gpMvKv8Mv(inMv1.Data, inMv2.Data));
                        otherwise
                            outMv = ga53.Multivector(-1, gpMvMvMv(inMv1.Data, inMv2.Data));
                    end
                    
            end
            
        end
        
        function outText = getLaTeX(inMv)
        	arguments
        		inMv (1,1) ga53.Multivector
        	end
        
            switch inMv.Grade
                case 0
                    basisText = "";
                case 1
                    basisText = ["\bm{e}_{-1}"; "\bm{e}_{-2}"; "\bm{e}_{-3}"; "\bm{e}_{1}"; "\bm{e}_{2}"; "\bm{e}_{3}"; "\bm{e}_{4}"; "\bm{e}_{5}"];
                case 2
                    basisText = ["\bm{e}_{-1,-2}"; "\bm{e}_{-1,-3}"; "\bm{e}_{-2,-3}"; "\bm{e}_{-1,1}"; "\bm{e}_{-2,1}"; "\bm{e}_{-3,1}"; "\bm{e}_{-1,2}"; "\bm{e}_{-2,2}"; "\bm{e}_{-3,2}"; "\bm{e}_{1,2}"; "\bm{e}_{-1,3}"; "\bm{e}_{-2,3}"; "\bm{e}_{-3,3}"; "\bm{e}_{1,3}"; "\bm{e}_{2,3}"; "\bm{e}_{-1,4}"; "\bm{e}_{-2,4}"; "\bm{e}_{-3,4}"; "\bm{e}_{1,4}"; "\bm{e}_{2,4}"; "\bm{e}_{3,4}"; "\bm{e}_{-1,5}"; "\bm{e}_{-2,5}"; "\bm{e}_{-3,5}"; "\bm{e}_{1,5}"; "\bm{e}_{2,5}"; "\bm{e}_{3,5}"; "\bm{e}_{4,5}"];
                case 3
                    basisText = ["\bm{e}_{-1,-2,-3}"; "\bm{e}_{-1,-2,1}"; "\bm{e}_{-1,-3,1}"; "\bm{e}_{-2,-3,1}"; "\bm{e}_{-1,-2,2}"; "\bm{e}_{-1,-3,2}"; "\bm{e}_{-2,-3,2}"; "\bm{e}_{-1,1,2}"; "\bm{e}_{-2,1,2}"; "\bm{e}_{-3,1,2}"; "\bm{e}_{-1,-2,3}"; "\bm{e}_{-1,-3,3}"; "\bm{e}_{-2,-3,3}"; "\bm{e}_{-1,1,3}"; "\bm{e}_{-2,1,3}"; "\bm{e}_{-3,1,3}"; "\bm{e}_{-1,2,3}"; "\bm{e}_{-2,2,3}"; "\bm{e}_{-3,2,3}"; "\bm{e}_{1,2,3}"; "\bm{e}_{-1,-2,4}"; "\bm{e}_{-1,-3,4}"; "\bm{e}_{-2,-3,4}"; "\bm{e}_{-1,1,4}"; "\bm{e}_{-2,1,4}"; "\bm{e}_{-3,1,4}"; "\bm{e}_{-1,2,4}"; "\bm{e}_{-2,2,4}"; "\bm{e}_{-3,2,4}"; "\bm{e}_{1,2,4}"; "\bm{e}_{-1,3,4}"; "\bm{e}_{-2,3,4}"; "\bm{e}_{-3,3,4}"; "\bm{e}_{1,3,4}"; "\bm{e}_{2,3,4}"; "\bm{e}_{-1,-2,5}"; "\bm{e}_{-1,-3,5}"; "\bm{e}_{-2,-3,5}"; "\bm{e}_{-1,1,5}"; "\bm{e}_{-2,1,5}"; "\bm{e}_{-3,1,5}"; "\bm{e}_{-1,2,5}"; "\bm{e}_{-2,2,5}"; "\bm{e}_{-3,2,5}"; "\bm{e}_{1,2,5}"; "\bm{e}_{-1,3,5}"; "\bm{e}_{-2,3,5}"; "\bm{e}_{-3,3,5}"; "\bm{e}_{1,3,5}"; "\bm{e}_{2,3,5}"; "\bm{e}_{-1,4,5}"; "\bm{e}_{-2,4,5}"; "\bm{e}_{-3,4,5}"; "\bm{e}_{1,4,5}"; "\bm{e}_{2,4,5}"; "\bm{e}_{3,4,5}"];
                case 4
                    basisText = ["\bm{e}_{-1,-2,-3,1}"; "\bm{e}_{-1,-2,-3,2}"; "\bm{e}_{-1,-2,1,2}"; "\bm{e}_{-1,-3,1,2}"; "\bm{e}_{-2,-3,1,2}"; "\bm{e}_{-1,-2,-3,3}"; "\bm{e}_{-1,-2,1,3}"; "\bm{e}_{-1,-3,1,3}"; "\bm{e}_{-2,-3,1,3}"; "\bm{e}_{-1,-2,2,3}"; "\bm{e}_{-1,-3,2,3}"; "\bm{e}_{-2,-3,2,3}"; "\bm{e}_{-1,1,2,3}"; "\bm{e}_{-2,1,2,3}"; "\bm{e}_{-3,1,2,3}"; "\bm{e}_{-1,-2,-3,4}"; "\bm{e}_{-1,-2,1,4}"; "\bm{e}_{-1,-3,1,4}"; "\bm{e}_{-2,-3,1,4}"; "\bm{e}_{-1,-2,2,4}"; "\bm{e}_{-1,-3,2,4}"; "\bm{e}_{-2,-3,2,4}"; "\bm{e}_{-1,1,2,4}"; "\bm{e}_{-2,1,2,4}"; "\bm{e}_{-3,1,2,4}"; "\bm{e}_{-1,-2,3,4}"; "\bm{e}_{-1,-3,3,4}"; "\bm{e}_{-2,-3,3,4}"; "\bm{e}_{-1,1,3,4}"; "\bm{e}_{-2,1,3,4}"; "\bm{e}_{-3,1,3,4}"; "\bm{e}_{-1,2,3,4}"; "\bm{e}_{-2,2,3,4}"; "\bm{e}_{-3,2,3,4}"; "\bm{e}_{1,2,3,4}"; "\bm{e}_{-1,-2,-3,5}"; "\bm{e}_{-1,-2,1,5}"; "\bm{e}_{-1,-3,1,5}"; "\bm{e}_{-2,-3,1,5}"; "\bm{e}_{-1,-2,2,5}"; "\bm{e}_{-1,-3,2,5}"; "\bm{e}_{-2,-3,2,5}"; "\bm{e}_{-1,1,2,5}"; "\bm{e}_{-2,1,2,5}"; "\bm{e}_{-3,1,2,5}"; "\bm{e}_{-1,-2,3,5}"; "\bm{e}_{-1,-3,3,5}"; "\bm{e}_{-2,-3,3,5}"; "\bm{e}_{-1,1,3,5}"; "\bm{e}_{-2,1,3,5}"; "\bm{e}_{-3,1,3,5}"; "\bm{e}_{-1,2,3,5}"; "\bm{e}_{-2,2,3,5}"; "\bm{e}_{-3,2,3,5}"; "\bm{e}_{1,2,3,5}"; "\bm{e}_{-1,-2,4,5}"; "\bm{e}_{-1,-3,4,5}"; "\bm{e}_{-2,-3,4,5}"; "\bm{e}_{-1,1,4,5}"; "\bm{e}_{-2,1,4,5}"; "\bm{e}_{-3,1,4,5}"; "\bm{e}_{-1,2,4,5}"; "\bm{e}_{-2,2,4,5}"; "\bm{e}_{-3,2,4,5}"; "\bm{e}_{1,2,4,5}"; "\bm{e}_{-1,3,4,5}"; "\bm{e}_{-2,3,4,5}"; "\bm{e}_{-3,3,4,5}"; "\bm{e}_{1,3,4,5}"; "\bm{e}_{2,3,4,5}"];
                case 5
                    basisText = ["\bm{e}_{-1,-2,-3,1,2}"; "\bm{e}_{-1,-2,-3,1,3}"; "\bm{e}_{-1,-2,-3,2,3}"; "\bm{e}_{-1,-2,1,2,3}"; "\bm{e}_{-1,-3,1,2,3}"; "\bm{e}_{-2,-3,1,2,3}"; "\bm{e}_{-1,-2,-3,1,4}"; "\bm{e}_{-1,-2,-3,2,4}"; "\bm{e}_{-1,-2,1,2,4}"; "\bm{e}_{-1,-3,1,2,4}"; "\bm{e}_{-2,-3,1,2,4}"; "\bm{e}_{-1,-2,-3,3,4}"; "\bm{e}_{-1,-2,1,3,4}"; "\bm{e}_{-1,-3,1,3,4}"; "\bm{e}_{-2,-3,1,3,4}"; "\bm{e}_{-1,-2,2,3,4}"; "\bm{e}_{-1,-3,2,3,4}"; "\bm{e}_{-2,-3,2,3,4}"; "\bm{e}_{-1,1,2,3,4}"; "\bm{e}_{-2,1,2,3,4}"; "\bm{e}_{-3,1,2,3,4}"; "\bm{e}_{-1,-2,-3,1,5}"; "\bm{e}_{-1,-2,-3,2,5}"; "\bm{e}_{-1,-2,1,2,5}"; "\bm{e}_{-1,-3,1,2,5}"; "\bm{e}_{-2,-3,1,2,5}"; "\bm{e}_{-1,-2,-3,3,5}"; "\bm{e}_{-1,-2,1,3,5}"; "\bm{e}_{-1,-3,1,3,5}"; "\bm{e}_{-2,-3,1,3,5}"; "\bm{e}_{-1,-2,2,3,5}"; "\bm{e}_{-1,-3,2,3,5}"; "\bm{e}_{-2,-3,2,3,5}"; "\bm{e}_{-1,1,2,3,5}"; "\bm{e}_{-2,1,2,3,5}"; "\bm{e}_{-3,1,2,3,5}"; "\bm{e}_{-1,-2,-3,4,5}"; "\bm{e}_{-1,-2,1,4,5}"; "\bm{e}_{-1,-3,1,4,5}"; "\bm{e}_{-2,-3,1,4,5}"; "\bm{e}_{-1,-2,2,4,5}"; "\bm{e}_{-1,-3,2,4,5}"; "\bm{e}_{-2,-3,2,4,5}"; "\bm{e}_{-1,1,2,4,5}"; "\bm{e}_{-2,1,2,4,5}"; "\bm{e}_{-3,1,2,4,5}"; "\bm{e}_{-1,-2,3,4,5}"; "\bm{e}_{-1,-3,3,4,5}"; "\bm{e}_{-2,-3,3,4,5}"; "\bm{e}_{-1,1,3,4,5}"; "\bm{e}_{-2,1,3,4,5}"; "\bm{e}_{-3,1,3,4,5}"; "\bm{e}_{-1,2,3,4,5}"; "\bm{e}_{-2,2,3,4,5}"; "\bm{e}_{-3,2,3,4,5}"; "\bm{e}_{1,2,3,4,5}"];
                case 6
                    basisText = ["\bm{e}_{-1,-2,-3,1,2,3}"; "\bm{e}_{-1,-2,-3,1,2,4}"; "\bm{e}_{-1,-2,-3,1,3,4}"; "\bm{e}_{-1,-2,-3,2,3,4}"; "\bm{e}_{-1,-2,1,2,3,4}"; "\bm{e}_{-1,-3,1,2,3,4}"; "\bm{e}_{-2,-3,1,2,3,4}"; "\bm{e}_{-1,-2,-3,1,2,5}"; "\bm{e}_{-1,-2,-3,1,3,5}"; "\bm{e}_{-1,-2,-3,2,3,5}"; "\bm{e}_{-1,-2,1,2,3,5}"; "\bm{e}_{-1,-3,1,2,3,5}"; "\bm{e}_{-2,-3,1,2,3,5}"; "\bm{e}_{-1,-2,-3,1,4,5}"; "\bm{e}_{-1,-2,-3,2,4,5}"; "\bm{e}_{-1,-2,1,2,4,5}"; "\bm{e}_{-1,-3,1,2,4,5}"; "\bm{e}_{-2,-3,1,2,4,5}"; "\bm{e}_{-1,-2,-3,3,4,5}"; "\bm{e}_{-1,-2,1,3,4,5}"; "\bm{e}_{-1,-3,1,3,4,5}"; "\bm{e}_{-2,-3,1,3,4,5}"; "\bm{e}_{-1,-2,2,3,4,5}"; "\bm{e}_{-1,-3,2,3,4,5}"; "\bm{e}_{-2,-3,2,3,4,5}"; "\bm{e}_{-1,1,2,3,4,5}"; "\bm{e}_{-2,1,2,3,4,5}"; "\bm{e}_{-3,1,2,3,4,5}"];
                case 7
                    basisText = ["\bm{e}_{-1,-2,-3,1,2,3,4}"; "\bm{e}_{-1,-2,-3,1,2,3,5}"; "\bm{e}_{-1,-2,-3,1,2,4,5}"; "\bm{e}_{-1,-2,-3,1,3,4,5}"; "\bm{e}_{-1,-2,-3,2,3,4,5}"; "\bm{e}_{-1,-2,1,2,3,4,5}"; "\bm{e}_{-1,-3,1,2,3,4,5}"; "\bm{e}_{-2,-3,1,2,3,4,5}"];
                case 8
                    basisText = "\bm{e}_{-1,-2,-3,1,2,3,4,5}";
                otherwise
                    basisText = [""; "\bm{e}_{-1}"; "\bm{e}_{-2}"; "\bm{e}_{-3}"; "\bm{e}_{1}"; "\bm{e}_{2}"; "\bm{e}_{3}"; "\bm{e}_{4}"; "\bm{e}_{5}"; "\bm{e}_{-1,-2}"; "\bm{e}_{-1,-3}"; "\bm{e}_{-2,-3}"; "\bm{e}_{-1,1}"; "\bm{e}_{-2,1}"; "\bm{e}_{-3,1}"; "\bm{e}_{-1,2}"; "\bm{e}_{-2,2}"; "\bm{e}_{-3,2}"; "\bm{e}_{1,2}"; "\bm{e}_{-1,3}"; "\bm{e}_{-2,3}"; "\bm{e}_{-3,3}"; "\bm{e}_{1,3}"; "\bm{e}_{2,3}"; "\bm{e}_{-1,4}"; "\bm{e}_{-2,4}"; "\bm{e}_{-3,4}"; "\bm{e}_{1,4}"; "\bm{e}_{2,4}"; "\bm{e}_{3,4}"; "\bm{e}_{-1,5}"; "\bm{e}_{-2,5}"; "\bm{e}_{-3,5}"; "\bm{e}_{1,5}"; "\bm{e}_{2,5}"; "\bm{e}_{3,5}"; "\bm{e}_{4,5}"; "\bm{e}_{-1,-2,-3}"; "\bm{e}_{-1,-2,1}"; "\bm{e}_{-1,-3,1}"; "\bm{e}_{-2,-3,1}"; "\bm{e}_{-1,-2,2}"; "\bm{e}_{-1,-3,2}"; "\bm{e}_{-2,-3,2}"; "\bm{e}_{-1,1,2}"; "\bm{e}_{-2,1,2}"; "\bm{e}_{-3,1,2}"; "\bm{e}_{-1,-2,3}"; "\bm{e}_{-1,-3,3}"; "\bm{e}_{-2,-3,3}"; "\bm{e}_{-1,1,3}"; "\bm{e}_{-2,1,3}"; "\bm{e}_{-3,1,3}"; "\bm{e}_{-1,2,3}"; "\bm{e}_{-2,2,3}"; "\bm{e}_{-3,2,3}"; "\bm{e}_{1,2,3}"; "\bm{e}_{-1,-2,4}"; "\bm{e}_{-1,-3,4}"; "\bm{e}_{-2,-3,4}"; "\bm{e}_{-1,1,4}"; "\bm{e}_{-2,1,4}"; "\bm{e}_{-3,1,4}"; "\bm{e}_{-1,2,4}"; "\bm{e}_{-2,2,4}"; "\bm{e}_{-3,2,4}"; "\bm{e}_{1,2,4}"; "\bm{e}_{-1,3,4}"; "\bm{e}_{-2,3,4}"; "\bm{e}_{-3,3,4}"; "\bm{e}_{1,3,4}"; "\bm{e}_{2,3,4}"; "\bm{e}_{-1,-2,5}"; "\bm{e}_{-1,-3,5}"; "\bm{e}_{-2,-3,5}"; "\bm{e}_{-1,1,5}"; "\bm{e}_{-2,1,5}"; "\bm{e}_{-3,1,5}"; "\bm{e}_{-1,2,5}"; "\bm{e}_{-2,2,5}"; "\bm{e}_{-3,2,5}"; "\bm{e}_{1,2,5}"; "\bm{e}_{-1,3,5}"; "\bm{e}_{-2,3,5}"; "\bm{e}_{-3,3,5}"; "\bm{e}_{1,3,5}"; "\bm{e}_{2,3,5}"; "\bm{e}_{-1,4,5}"; "\bm{e}_{-2,4,5}"; "\bm{e}_{-3,4,5}"; "\bm{e}_{1,4,5}"; "\bm{e}_{2,4,5}"; "\bm{e}_{3,4,5}"; "\bm{e}_{-1,-2,-3,1}"; "\bm{e}_{-1,-2,-3,2}"; "\bm{e}_{-1,-2,1,2}"; "\bm{e}_{-1,-3,1,2}"; "\bm{e}_{-2,-3,1,2}"; "\bm{e}_{-1,-2,-3,3}"; "\bm{e}_{-1,-2,1,3}"; "\bm{e}_{-1,-3,1,3}"; "\bm{e}_{-2,-3,1,3}"; "\bm{e}_{-1,-2,2,3}"; "\bm{e}_{-1,-3,2,3}"; "\bm{e}_{-2,-3,2,3}"; "\bm{e}_{-1,1,2,3}"; "\bm{e}_{-2,1,2,3}"; "\bm{e}_{-3,1,2,3}"; "\bm{e}_{-1,-2,-3,4}"; "\bm{e}_{-1,-2,1,4}"; "\bm{e}_{-1,-3,1,4}"; "\bm{e}_{-2,-3,1,4}"; "\bm{e}_{-1,-2,2,4}"; "\bm{e}_{-1,-3,2,4}"; "\bm{e}_{-2,-3,2,4}"; "\bm{e}_{-1,1,2,4}"; "\bm{e}_{-2,1,2,4}"; "\bm{e}_{-3,1,2,4}"; "\bm{e}_{-1,-2,3,4}"; "\bm{e}_{-1,-3,3,4}"; "\bm{e}_{-2,-3,3,4}"; "\bm{e}_{-1,1,3,4}"; "\bm{e}_{-2,1,3,4}"; "\bm{e}_{-3,1,3,4}"; "\bm{e}_{-1,2,3,4}"; "\bm{e}_{-2,2,3,4}"; "\bm{e}_{-3,2,3,4}"; "\bm{e}_{1,2,3,4}"; "\bm{e}_{-1,-2,-3,5}"; "\bm{e}_{-1,-2,1,5}"; "\bm{e}_{-1,-3,1,5}"; "\bm{e}_{-2,-3,1,5}"; "\bm{e}_{-1,-2,2,5}"; "\bm{e}_{-1,-3,2,5}"; "\bm{e}_{-2,-3,2,5}"; "\bm{e}_{-1,1,2,5}"; "\bm{e}_{-2,1,2,5}"; "\bm{e}_{-3,1,2,5}"; "\bm{e}_{-1,-2,3,5}"; "\bm{e}_{-1,-3,3,5}"; "\bm{e}_{-2,-3,3,5}"; "\bm{e}_{-1,1,3,5}"; "\bm{e}_{-2,1,3,5}"; "\bm{e}_{-3,1,3,5}"; "\bm{e}_{-1,2,3,5}"; "\bm{e}_{-2,2,3,5}"; "\bm{e}_{-3,2,3,5}"; "\bm{e}_{1,2,3,5}"; "\bm{e}_{-1,-2,4,5}"; "\bm{e}_{-1,-3,4,5}"; "\bm{e}_{-2,-3,4,5}"; "\bm{e}_{-1,1,4,5}"; "\bm{e}_{-2,1,4,5}"; "\bm{e}_{-3,1,4,5}"; "\bm{e}_{-1,2,4,5}"; "\bm{e}_{-2,2,4,5}"; "\bm{e}_{-3,2,4,5}"; "\bm{e}_{1,2,4,5}"; "\bm{e}_{-1,3,4,5}"; "\bm{e}_{-2,3,4,5}"; "\bm{e}_{-3,3,4,5}"; "\bm{e}_{1,3,4,5}"; "\bm{e}_{2,3,4,5}"; "\bm{e}_{-1,-2,-3,1,2}"; "\bm{e}_{-1,-2,-3,1,3}"; "\bm{e}_{-1,-2,-3,2,3}"; "\bm{e}_{-1,-2,1,2,3}"; "\bm{e}_{-1,-3,1,2,3}"; "\bm{e}_{-2,-3,1,2,3}"; "\bm{e}_{-1,-2,-3,1,4}"; "\bm{e}_{-1,-2,-3,2,4}"; "\bm{e}_{-1,-2,1,2,4}"; "\bm{e}_{-1,-3,1,2,4}"; "\bm{e}_{-2,-3,1,2,4}"; "\bm{e}_{-1,-2,-3,3,4}"; "\bm{e}_{-1,-2,1,3,4}"; "\bm{e}_{-1,-3,1,3,4}"; "\bm{e}_{-2,-3,1,3,4}"; "\bm{e}_{-1,-2,2,3,4}"; "\bm{e}_{-1,-3,2,3,4}"; "\bm{e}_{-2,-3,2,3,4}"; "\bm{e}_{-1,1,2,3,4}"; "\bm{e}_{-2,1,2,3,4}"; "\bm{e}_{-3,1,2,3,4}"; "\bm{e}_{-1,-2,-3,1,5}"; "\bm{e}_{-1,-2,-3,2,5}"; "\bm{e}_{-1,-2,1,2,5}"; "\bm{e}_{-1,-3,1,2,5}"; "\bm{e}_{-2,-3,1,2,5}"; "\bm{e}_{-1,-2,-3,3,5}"; "\bm{e}_{-1,-2,1,3,5}"; "\bm{e}_{-1,-3,1,3,5}"; "\bm{e}_{-2,-3,1,3,5}"; "\bm{e}_{-1,-2,2,3,5}"; "\bm{e}_{-1,-3,2,3,5}"; "\bm{e}_{-2,-3,2,3,5}"; "\bm{e}_{-1,1,2,3,5}"; "\bm{e}_{-2,1,2,3,5}"; "\bm{e}_{-3,1,2,3,5}"; "\bm{e}_{-1,-2,-3,4,5}"; "\bm{e}_{-1,-2,1,4,5}"; "\bm{e}_{-1,-3,1,4,5}"; "\bm{e}_{-2,-3,1,4,5}"; "\bm{e}_{-1,-2,2,4,5}"; "\bm{e}_{-1,-3,2,4,5}"; "\bm{e}_{-2,-3,2,4,5}"; "\bm{e}_{-1,1,2,4,5}"; "\bm{e}_{-2,1,2,4,5}"; "\bm{e}_{-3,1,2,4,5}"; "\bm{e}_{-1,-2,3,4,5}"; "\bm{e}_{-1,-3,3,4,5}"; "\bm{e}_{-2,-3,3,4,5}"; "\bm{e}_{-1,1,3,4,5}"; "\bm{e}_{-2,1,3,4,5}"; "\bm{e}_{-3,1,3,4,5}"; "\bm{e}_{-1,2,3,4,5}"; "\bm{e}_{-2,2,3,4,5}"; "\bm{e}_{-3,2,3,4,5}"; "\bm{e}_{1,2,3,4,5}"; "\bm{e}_{-1,-2,-3,1,2,3}"; "\bm{e}_{-1,-2,-3,1,2,4}"; "\bm{e}_{-1,-2,-3,1,3,4}"; "\bm{e}_{-1,-2,-3,2,3,4}"; "\bm{e}_{-1,-2,1,2,3,4}"; "\bm{e}_{-1,-3,1,2,3,4}"; "\bm{e}_{-2,-3,1,2,3,4}"; "\bm{e}_{-1,-2,-3,1,2,5}"; "\bm{e}_{-1,-2,-3,1,3,5}"; "\bm{e}_{-1,-2,-3,2,3,5}"; "\bm{e}_{-1,-2,1,2,3,5}"; "\bm{e}_{-1,-3,1,2,3,5}"; "\bm{e}_{-2,-3,1,2,3,5}"; "\bm{e}_{-1,-2,-3,1,4,5}"; "\bm{e}_{-1,-2,-3,2,4,5}"; "\bm{e}_{-1,-2,1,2,4,5}"; "\bm{e}_{-1,-3,1,2,4,5}"; "\bm{e}_{-2,-3,1,2,4,5}"; "\bm{e}_{-1,-2,-3,3,4,5}"; "\bm{e}_{-1,-2,1,3,4,5}"; "\bm{e}_{-1,-3,1,3,4,5}"; "\bm{e}_{-2,-3,1,3,4,5}"; "\bm{e}_{-1,-2,2,3,4,5}"; "\bm{e}_{-1,-3,2,3,4,5}"; "\bm{e}_{-2,-3,2,3,4,5}"; "\bm{e}_{-1,1,2,3,4,5}"; "\bm{e}_{-2,1,2,3,4,5}"; "\bm{e}_{-3,1,2,3,4,5}"; "\bm{e}_{-1,-2,-3,1,2,3,4}"; "\bm{e}_{-1,-2,-3,1,2,3,5}"; "\bm{e}_{-1,-2,-3,1,2,4,5}"; "\bm{e}_{-1,-2,-3,1,3,4,5}"; "\bm{e}_{-1,-2,-3,2,3,4,5}"; "\bm{e}_{-1,-2,1,2,3,4,5}"; "\bm{e}_{-1,-3,1,2,3,4,5}"; "\bm{e}_{-2,-3,1,2,3,4,5}"; "\bm{e}_{-1,-2,-3,1,2,3,4,5}"];
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
