function x_comp = DCT_Compression(m,x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IC1 = dct(x); 
[~,ind] = sort(abs(IC1),'descend');
tmp = zeros(size(IC1));
tmp(ind(1:m)) = IC1(ind(1:m));
IC1 = tmp;
x_comp = idct(IC1);
x_comp = double(x_comp);
end