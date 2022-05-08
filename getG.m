function G_val = getG(alpha, l)
    gamma1 = gamma(l - alpha);
    gamma2 = gamma(-1 * alpha);
    gamma3 = gamma(l + 1);
    G_val = gamma1 / (gamma2 * gamma3);
end