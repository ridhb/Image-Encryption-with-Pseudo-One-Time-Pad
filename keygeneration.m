function [key] = keygeneration(L, M, N, x, mu)

        for n=2:1:M*N*L
            x(1,n)=mu*x(n-1)*(1-x(n-1));
        end

        jsize=4;
        maxj=10^(jsize-1);


        for k=1:M*N*L
            b(1,k)=x(1,k);
            j=1;
            while b(1,k) < maxj
                kali=10.^j;
                b(1,k)=x(1,k).*kali;
                j=j+1;
            end

        end

        for i=1:M*N*L
            key(1,i)=mod(floor(b(1,i)),256);
        end
       