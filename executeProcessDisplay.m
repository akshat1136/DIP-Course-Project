function executeProcessDisplay(location, layer_num, D)
    img = h5read(location, '/image');
    img = permute(img, [2, 3, 1]);
    img = normImg(img);
    
    mask = h5read(location, '/mask');
    mask = permute(mask, [2, 3, 1]);
    mask = mask(:, :, 2) * 255;
    
    img_dod = DoD(img(:, :, layer_num), D);
    img_dod = imcomplement(img_dod);
    img_conncomp = bwconncomp(img_dod);
    labeledMat = labelmatrix(img_conncomp);
    labeledMat = imcomplement(labeledMat * 255);
    
    figure;
    
    subplot(1, 3, 1)
    imshow(img_dod)
    title('Difference of Diffusion', 'FontSize', 10);
    
    subplot(1, 3, 2)
    imshow(labeledMat)
    title('Calculated Mask', 'FontSize', 10);
    
    subplot(1, 3, 3)
    imshow(mask)
    title('Ground Truth Mask', 'FontSize', 10);
end

