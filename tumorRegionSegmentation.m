function tumor_img = tumorRegionSegmentation(img, D)
    img_dod = DoD(img, D);
    img_dod = imcomplement(img_dod);
    img_conncomp = bwconncomp(img_dod);
    labeledMat = labelmatrix(img_conncomp);
    regionProps = regionprops(labeledMat, 'Solidity', 'Area');
    density = [regionProps.Solidity];
    avgDensity = mean(density);
    highDenseArea = density > avgDensity;
    area = [regionProps.Area];
    maxArea = max(area(highDenseArea));
    labelTumor = find(area == maxArea);
    tumor_img = ismember(labeledMat, labelTumor);
end

