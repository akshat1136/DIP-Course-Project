function img_ijk = diffusion(img, lambda, itr)
    id_mat = eye(240);
    LM = id_mat - lambda;
    inverse = inv(LM);
    RM = id_mat + lambda;
    img_ijk = img;
    for it = 1:itr
        img_ijk = matMul(inverse, matMul(RM, img_ijk, 240), 240);
    end
end

