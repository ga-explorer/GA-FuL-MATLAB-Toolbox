gafulInit;

% Create a CGA geometry processor
cgaGeo = defineGeometryCGA5();

% Encode some flats and rounds as CGA blades
ipnsPlane = cgaGeo.EncodeIpnsFlat.Plane3D(double(10), double([1, 1, 1]));
ipnsShere = cgaGeo.EncodeIpnsRound.RealSphere3D(double(15), double([0, 0, 0]));



% Intersect the blades of the encoded objects
ipnsCircle = ipnsPlane.MeetIpns(ipnsShere);

circle = ipnsCircle.DecodeIpnsRound.Element();

disp2(circle.CenterToVector3D());
disp2(circle.NormalDirectionToVector3D());
disp2(sqrt(circle.RadiusSquared));
disp2(circle.Weight);