function img = normImg(img)
    mask = img < 0;
    img(mask) = 0;
    img = (img / max(max(max(img)))) * 255;
end

