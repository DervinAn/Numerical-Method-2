function mainI()

    x = [0, 2, 3, 5];
    fx = [-1, 2, 9, 87];
    Li= [0,0,0,0];

    syms X;
    B = sym(zeros(4, 4));

    for i = 1:4
        for j = 1:4
            if j ~= i
                B(i, j) = x(i) - x(j);
            else
                B(i, j) = X - x(i);
            end
        end
    end

    disp(B);

 for i = 1:4
        Li = 1;
        for j = 1:4
            if j ~= i
                Li = Li * (X - x(j)) / (x(i) - x(j));
            end
        end
        L(i) = Li;
    end
      disp('Lagrange Basis Polynomials:');
    disp(L);

     p = 0;


    for i = 1:4
        p = p + fx(i) * L(i);
    end


    disp('Interpolated Polynomial p(X):');
    disp(expand(p));



end

