%function S = find_S(X, y)

%- data representation (data_raw, name, varLevel)
data = cat_data_represent(data_raw, varLevel);

[n, p] = size(data);

h = cell(1, p); % cell of most specific cos
for i = 1:n
  if data(i, 1) != 1
    continue;
   else % for each positive traning example
    for j = 1:p % for each attribute
      if sum(ismember(h{j}, data(i, j))) > 1
        continue;
      else
        h{j} = constraint_generalizer(h{j}, data(i, j), varLevelNum{j})
      endif
    endfor
   endif