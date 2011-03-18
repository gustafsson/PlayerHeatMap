x = linspace(-1, 1, 20);
y = linspace(-3, 3, 30)';

X = ones(size(y))*x;
Y = y*ones(size(x));

f = 10*exp(-X.^2 - Y.^2);

g = zeros(numel(f), 3);
for j=1:size(f,2);
for k=1:size(f,1);
g( j + (k-1)*size(f,2), :) = [ x(j), y(k), f(k,j) ];
end
end
save('-ascii','testdata.txt','g');

