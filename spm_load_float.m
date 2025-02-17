function dat = spm_load_float(V)
% Load a volume into a floating point array
% FORMAT dat = spm_load_float(V)
% V   - handle from spm_vol
% dat - a 3D floating point array
%_______________________________________________________________________
% Copyright (C) 2005 Wellcome Department of Imaging Neuroscience

% John Ashburner
% $Id: spm_load_float.m 112 2005-05-04 18:20:52Z john $


dim = V(1).dim(1:3);
dat = single(0);
dat(dim(1),dim(2),dim(3))=0;
for i=1:V(1).dim(3),
	M = spm_matrix([0 0 i]);
	dat(:,:,i) = single(spm_slice_vol(V(1),M,dim(1:2),1));
end;
return;
