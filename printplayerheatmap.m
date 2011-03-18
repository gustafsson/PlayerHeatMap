function printplayerheatmap(inputfile, outputfile)

if nargin<2 || ~ischar(inputfile) || ~ischar(outputfile)
  error('syntax: printplayerheatmap(inputfile, outputfile)');
end

f = load(inputfile);

busysleep = unique(sort(f(:,1)));
handoverbytes = unique(sort(f(:,2)));

g = zeros(numel(handoverbytes), numel(busysleep));
for k=1:size(f,1)
  g( find(f(k,2)==handoverbytes), find(f(k,1)==busysleep)) = f(k,3);
end

playerheatmap(g, busysleep, handoverbytes, outputfile);

