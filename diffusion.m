function img_ijk = diffusion(img, lambda, itr, N)
    id_mat = eye(N);
    LM = id_mat - lambda;
    RM = id_mat + lambda;
    img_ijk = img;
    for it = 1:itr
        img_ijk = INV(LM) * (RM * img_ijk);
    end
end

