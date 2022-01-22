clear;
load cropParams.mat;

importFileDir = "E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\sanfran raw\";
exportFileDir = "E:\Google Drives\Personal Drive\MacHacks2\MacHacks2\Data\sanfran crop\";

fileList = dir(sprintf('%s*.png', importFileDir));

for i = 1:length(fileList)
    img = imread(fullfile(fileList(i).folder, fileList(i).name));
    img = imcrop(img, cropParams);
    imwrite(img, fullfile(exportFileDir, fileList(i).name));
end

