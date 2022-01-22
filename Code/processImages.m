clear;

classClrs = [...
    132, 202, 80;...
    240, 125, 2;...
    230, 0, 0;...
    158, 19, 19];

% san fran
traffic(:,:,1) = imread('E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\fused\sanfran_traffic.tif',1);
traffic(:,:,2) = imread('E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\fused\sanfran_traffic.tif',2);
traffic(:,:,3) = imread('E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\fused\sanfran_traffic.tif',3);

sat(:,:,1) = imread('E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\fused\sanfran_sat.tif',1);
sat(:,:,2) = imread('E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\fused\sanfran_sat.tif',2);
sat(:,:,3) = imread('E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\fused\sanfran_sat.tif',3);

class1 = segmentClass1Congestion(traffic);
class2 = segmentClass2Congestion(traffic);
class3 = segmentClass3Congestion(traffic);
class4 = segmentClass4Congestion(traffic);

class1([class2 | class3 | class4]) = 0;
class2([class1 | class3 | class4]) = 0;
class3([class1 | class2 | class4]) = 0;
class4([class1 | class2 | class3]) = 0;

fullMapSegmented = zeros(size(class1));
fullMapSegmented(class1) = 1;
fullMapSegmented(class2) = 2;
fullMapSegmented(class3) = 3;
fullMapSegmented(class4) = 4;

fullMapSegmentedColorized = colorizeSegmentation(fullMapSegmented, [1:4], classClrs);

