%function S = find_S(X, y)

data_enjoysports;
%- data representation (data_raw, name, varLevel)
data = cat_data_represent(data_raw, varLevel);
y = data(:, 1);
attribute = data(:, 2:end);

[n, p] = size(attribute);

h = cell(1, p); % cell of most specific cos
for i = 1:n
  if y(i) != 1
    continue;
  else % for each positive traning example
    for j = 1:p % for each attribute, note j > 1
      if sum(ismember(h{j}, attribute(i, j))) > 0
        continue;
      else
        h{j} = constraint_generalizer(h{j}, attribute(i, j), attrLevelNum{j});
      endif
    endfor
  endif
  printf('Iteration: %d', i);
  disp(h);
endfor
