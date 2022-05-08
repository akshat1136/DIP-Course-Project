function tumor_img = tumorRegionSegmentation(img, D, N)
    img_dod = DoD(img, D, N);
    img_dod = imcomplement(img_dod);
    img_conncomp = conncomp(img_dod);
    labeledMat = labelmatrix(img_conncomp);
    regionProps = regionprops(labeledMat, 'Solidity', 'Area');
    density = [regionProps.Solidity];
    avgDensity = mean(Density);
    highDenseArea = density > avgDensity;
    area = [regionProps.Area];
    maxArea = max(Area(highDenseArea));
    labelTumor = find(area == maxArea);
    tumor_img = ismember(labeledMat, labelTumor);
end

