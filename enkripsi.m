function [cipn] = enkripsi (Im, M, N, L, key)
ImR=reshape (Im,1,M*N*L);    
for i=1:M*N*L
    cip(1,i)=mod(key(1,i)+double(ImR(1,i)),256);
end
cipn=reshape(cip,M,N,L);