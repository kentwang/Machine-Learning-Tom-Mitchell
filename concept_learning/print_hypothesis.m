%- This function print the final hypothesis
function hypothesis = print_hypothesis(h, attrLevel)
  p = length(h);
  hypothesis = cell(1, p);
  for j = 1:p
    if length(h{j}) == 0
      hypothesis{j} = {'None'}; 
    elseif length(h{j}) == length(attrLevel{j})
      hypothesis{j} = {'Any'};
    else
      hypothesis{j} = attrLevel{j}(h{j});
    endif
  endfor