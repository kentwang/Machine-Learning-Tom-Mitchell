%% This data representation function is designed for data with

function data = cat_data_represent(data_raw, varLevel)
  [n, p] = size(data_raw);
  data = zeros(n, p);
  for i = 1:n
    for j = 1:p
      data(i, j) = find(ismember(varLevel{j}, data_raw{i, j}));
     endfor
   endfor