z = zeros(length(x))
z[1] ~ D1()
x[1] ~ D2(z[1])

%1 = length(x)
z = zeros(%1)
%2 = D1()
%3 = tilde(... @varname(z[1]) ... %2)
%4 = setindex!(z, 1, %3)
%5 = getindex(z, 1)
%6 = D2(%5)
%7 = tilde(... @varname(x[1] ... %6)
%8 = setindex!(x, 1, %7)