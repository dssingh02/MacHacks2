function [clrSeg] = colorizeSegmentation(segmented, classes, clrs)

r = zeros(size(segmented));
g = zeros(size(segmented));
b = zeros(size(segmented));

for i = 1:length(classes)
    sel = segmented == classes(i);
    r(sel) = clrs(i,1);
    g(sel) = clrs(i,2);
    b(sel) = clrs(i,3);
end

clrSeg(:,:,1) = r;
clrSeg(:,:,2) = g;
clrSeg(:,:,3) = b;
clrSeg = uint8(clrSeg);

end