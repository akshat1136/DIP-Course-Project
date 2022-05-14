function display_Img_Mask(location)
    img = h5read(location, '/image');
    img = permute(img, [2, 3, 1]);
    img = cast(normImg(img), 'uint8');
    
    mask = h5read(location, '/mask');
    mask = permute(mask, [2, 3, 1]);
    mask = mask(:, :, 2) * 255;
    
    figure;
    
    subplot(1, 2, 1)
    imshow(img(:, :, 2))
    title('Original Scan', 'FontSize', 12);
    
    subplot(1, 2, 2)
    imshow(mask)
    title('Mask of Tumor', 'FontSize', 12);
end

