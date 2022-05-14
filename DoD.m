function img_dod = DoD(img, D)
    itr1 = 1;
    itr2 = 2;
    lambdaVals = load('lambda.mat');
    lambda = lambdaVals.l;
    img_d1 = diffusion(img, lambda, itr1);
    img_d2 = diffusion(img, lambda, itr2);
    img_dod = img_d2 - img_d1;
    img_dod = cast(img_dod, 'uint8');
end

