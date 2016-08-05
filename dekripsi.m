function [decipn] = dekripsi (cipn, M, N, L, key)
decipa=reshape(cipn,1,M*N*L);
for i=1:M*N*L
    decip(1,i)=mod(decipa(1,i)-key(1,i),256);
end
decipn=reshape(decip,M,N,L);