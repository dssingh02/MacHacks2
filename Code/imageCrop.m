clear;
load cropParams.mat;

importFileDir = "E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\sanfran sat raw\";
exportFileDir = "E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\sanfran sat crop\";

fileList = dir(sprintf('%s*.png', importFileDir));

for i = 1:length(fileList)
    img = imread(fullfile(fileList(i).folder, fileList(i).name));
    img = imcrop(img, cropParams);
    fName = sprintf('tile_%02i.png',i);
    imwrite(img, fullfile(exportFileDir, fName));
end

