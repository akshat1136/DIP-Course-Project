function lambda = getLambda(delT, alpha, h, D, N)
    eeta = (D * delT) / (2 * power(h, alpha));
    lambda = zeros(N);
    for i = 1:N
       for j = 1:N
           if j <= i - 1
               lambda(i, j) = eeta * getG(alpha, i-j+1);
           elseif j == i
               lambda(i, j) = eeta * getG(alpha, 1);
           elseif j == i + 1
               lambda(i, j) = eeta * getG(alpha, 0);
           end
       end
    end
end

