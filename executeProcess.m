function res = executeProcess(location, layer_num, D)
    img = h5read(location, '/image');
    img = permute(img, [2, 3, 1]);
    img = normImg(img);
    
    mask = h5read(location, '/mask');
    mask = permute(mask, [2, 3, 1]);
    mask = mask(:, :, 2) * 255;
    
    res = DoD(img(:, :, layer_num), D);
end

