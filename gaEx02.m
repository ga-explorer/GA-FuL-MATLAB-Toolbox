clc;
gafulInit;

% Create a CGA geometry processor
cgaGeo = defineGeometryCGA5();

% Encode some flats and rounds as CGA blades
ipnsPlane = cgaGeo.EncodeIpnsFlat.Plane3D(double(10), double(1), double(1), double(1));
ipnsShere = cgaGeo.EncodeIpnsRound.RealSphere3D(double(15), double([0, 0, 0]));

dispCGA(ipnsPlane, 'IPNS plane');
dispCGA(ipnsShere, 'IPNS sphere');

% Intersect the blades of the encoded objects
ipnsCircle = ipnsPlane.MeetIpns(ipnsShere);

dispCGA(ipnsCircle, 'IPNS intersection circle');

circle = ipnsCircle.DecodeIpnsRound.Element();

disp2(' ');
disp2('Intersection circle decoded data:');
disp2(circle.CenterToVector3D(), 'center');
disp2(circle.NormalDirectionToVector3D(), 'normal');
disp2(sqrt(circle.RadiusSquared), 'squared radius');
disp2(circle.Weight, 'weight');