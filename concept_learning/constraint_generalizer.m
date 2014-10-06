function hj = constraint_generalizer(hj, attr, attrLevels)
  if sum(size(hj)) == 0 % most specific constraint
    hj = attr;
  else
    hj = attrLevels;
  endif