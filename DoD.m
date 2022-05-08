function img_dod = DoD(img, D, N)
    itr1 = 1;
    itr2 = 2;
    alpha = 1.5;
    delT = power(4, -1*alpha);
    h = 1;
    lambda = getLambda(delT, alpha, h, D, N);
    img_d1 = diffusion(img, lambda, itr1, N);
    img_d2 = diffusion(img, lambda, itr2, N);
    img_dod = img_d2 - img_d1;
end

