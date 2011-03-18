function playerheatmap(f, x, y, filename)

if nargin<3
  if nargin<2
    error('syntax: playerheatmap(f, x, y, filename)');
  end
  x = 1:size(f,2);
  y = 1:size(f,1);
end

if nargin<4
  filename = 'playerheatmap.png';
end

imagesc(x, y, f);

for j=1:size(f,2);
for k=1:size(f,1);
text(x(j),y(k),num2str(f(k,j),"%.0f"));
end
end

print(filename);
