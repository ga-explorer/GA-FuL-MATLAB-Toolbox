clc;
gafulInit;

%% Specialized handling of CGA and PGA 

% General workflow

% Create a CGA geometry processor
cgaGeo = defineGeometryCGA5();

% Encode some flats and rounds as CGA blades
ipnsPlane = cgaGeo.EncodeIpnsFlat.Plane3D(10, [1, 1, 1]);
ipnsShere = cgaGeo.EncodeIpnsRound.RealSphere3D(15, [-1, 2.5, 0.5]);

dispCGA(ipnsPlane, 'IPNS plane');
dispCGA(ipnsShere, 'IPNS sphere');

% Intersect the blades of the encoded objects
ipnsCircle = ipnsPlane.MeetIpns(ipnsShere);

dispCGA(ipnsCircle, 'IPNS intersection circle');

% Decode the IPNS circle and extract its geometric elements
circle = ipnsCircle.DecodeIpnsRound.Element();

disp2(' ');
disp2('Intersection circle decoded data:');
disp2(circle.CenterToVector3D(), '   center');
disp2(circle.NormalDirectionToVector3D(), '   normal');
disp2(double(circle.DirectionToColumnsArray2D()), '   direction bivector');
disp2(double(circle.NormalDirectionToColumnsArray2D()), '   normal');
disp2(sqrt(circle.RadiusSquared), '   squared radius');
disp2(circle.Weight, '   weight');

%% What geometry could be encoded as 5D CGA blades\versors?
clc;
cgaGeo = defineGeometryCGA5();

% IPNS Rounds:
disp2('IPNS Rounds:');
dispCGA(cgaGeo.EncodeIpnsRound.Point([1,2,3]), '   point');
disp(' ')

dispCGA(cgaGeo.EncodeIpnsRound.PointPair(-16, [1,2,3], [1,1,1]), '   point pair from (radius², center, direction)');
dispCGA(cgaGeo.EncodeIpnsRound.RealPointPair(4, [1,2,3], [1,1,1]), '   real point pair from (radius, center, direction)');
dispCGA(cgaGeo.EncodeIpnsRound.ImaginaryPointPair(4, [1,2,3], [1,1,1]), '   imaginary point pair from (radius, center, direction)');
disp(' ')

dispCGA(cgaGeo.EncodeIpnsRound.Circle3D(-16, [1,2,3], [1,1,1]), '   circle from (radius², center, normal)');
dispCGA(cgaGeo.EncodeIpnsRound.RealCircle3D(4, [1,2,3], [1,1,1]), '   real circle from (radius, center, normal)');
dispCGA(cgaGeo.EncodeIpnsRound.ImaginaryCircle3D(4, [1,2,3], [1,1,1]), '   imaginary circle from (radius, center, normal)');
disp(' ')

% OPNS Rounds:
disp2('OPNS Rounds:');
dispCGA(cgaGeo.EncodeOpnsRound.Point([1,2,3]), '   point');
dispCGA(cgaGeo.EncodeOpnsRound.PointPair([1,2,3], [-2,5,-3]), '   real point pair from 2 points');
dispCGA(cgaGeo.EncodeOpnsRound.Circle([1,2,3], [-2,5,-3], [0,0,0]), '   real circle from 3 points');
dispCGA(cgaGeo.EncodeOpnsRound.Sphere([1,2,3], [-2,5,-3], [0,0,0], [2,4,7]), '   real sphere from 4 points');
disp(' ')

% IPNS Flats:
disp2('IPNS Flats:');
dispCGA(cgaGeo.EncodeIpnsFlat.Point([1,2,3]), '   point');
disp(' ')

dispCGA(cgaGeo.EncodeIpnsFlat.Line([1,2,3], [1,1,1]), '   line from (point, direction)');
dispCGA(cgaGeo.EncodeIpnsFlat.LineFromPoints([1,2,3], [2,3,4]), '   line from two points');
disp(' ')

dispCGA(cgaGeo.EncodeIpnsFlat.Plane3D(5, [1,1,1]), '   plane from (distance, normal)');
dispCGA(cgaGeo.EncodeIpnsFlat.Plane3D([1,2,3], [1,1,1]), '   plane from (point, normal)');
dispCGA(cgaGeo.EncodeIpnsFlat.Plane([1,2,3], [0,1,1], [1,1,0]), '   plane from (point, two direction vectors)');
dispCGA(cgaGeo.EncodeIpnsFlat.PlaneFromPoints([1,0,1], [0,1,1], [1,1,0]), '   plane from 3 points');
disp(' ')

% OPNS Flats:
disp2('OPNS Flats:');
dispCGA(cgaGeo.EncodeOpnsFlat.Point([1,2,3]), '   point');
disp(' ')

dispCGA(cgaGeo.EncodeOpnsFlat.Line([1,2,3], [1,1,1]), '   line from (point, direction)');
disp(' ')

dispCGA(cgaGeo.EncodeOpnsFlat.Plane3D(5, [1,1,1]), '   plane from (distance, normal)');
dispCGA(cgaGeo.EncodeOpnsFlat.Plane([1,2,3], [0,1,1], [1,1,0]), '   plane from (point, two direction vectors)');
dispCGA(cgaGeo.EncodeOpnsFlat.PlaneFromPoints([1,0,1], [0,1,1], [1,1,0]), '   plane from 3 points');
disp(' ')

% Also IPNS/OPNS directions and tangents ...

% CGA Transformations:
disp2('CGA Transformations:');
dispCGA(cgaGeo.Encode.Translation([1,2,3]), '   translation');
dispCGA(cgaGeo.Encode.Rotation3D(pi / 3, [1,2,3], [1,1,1]), '   rotation from (radians, point, direction)');
dispCGA(cgaGeo.Encode.Scaling(0.4), '   uniform scaling');
disp(' ')

% more comming soon

% PGA Flats:
disp2('PGA Flats:');
dispCGA(cgaGeo.EncodePGa.Point([1,2,3]), '   point');
disp(' ')

dispCGA(cgaGeo.EncodePGa.Line([1,2,3], [1,1,1]), '   line from (point, direction)');
dispCGA(cgaGeo.EncodePGa.LineFromPoints([1,2,3], [2,3,4]), '   line from two points');
disp(' ')

dispCGA(cgaGeo.EncodePGa.PlaneFromPoints([1,0,1], [0,1,1], [1,1,0]), '   plane from 3 points');
dispCGA(cgaGeo.EncodePGa.NormalMidPlane3D([1,2,3], [2,3,5]), '   normal plane bisector from 2 points');
dispCGA(cgaGeo.EncodePGa.NormalPlane3D([1,2,3], [2,3,5], 0.25), '   normal plane from 2 points and an affine parameter');
disp(' ')

% PGA Transformations:
disp2('PGA Transformations:');
dispCGA(cgaGeo.EncodePGa.Translation([1,2,3]), '   translation');
dispCGA(cgaGeo.EncodePGa.Rotation3D(pi / 3, [1,2,3], [1,1,1]), '   rotation from (radians, point, direction)');
disp(' ')

