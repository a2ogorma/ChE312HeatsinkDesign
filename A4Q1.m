clear all
global E
E = 1/2;
funerf = @(T) 1 - erf((1-E)/(2*T^0.5)); %short contact time assumption
for iter = 1:10000
    T(iter) = iter/1000;
    yerf(iter) = funerf(T(iter));
    ysov(iter) = funsov(T(iter));
    err(iter) = abs(yerf(iter)-ysov(iter))/ysov(iter);
end
err(iter)
plot(T,yerf,T,ysov)
legend('y_e_r_f','y_s_o_v')