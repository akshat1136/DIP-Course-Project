function M = matMul(A, B, N)
    M = zeros(N);
    for i = 1:N
        for j = 1:N
            for k = 1:N
                tmp = M(i, j);
                M(i, j) = M(i, j) + (A(i, k) * B(k, j));
            end
        end
    end
end

