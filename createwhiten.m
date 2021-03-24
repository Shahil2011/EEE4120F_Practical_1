# createwhiten
# Creates white noise using a for loop
# returns an array of values in [-1, 1]


function result = createwhiten(n)

  bitRate = 48000
  result = zeros(bitRate*n, 1);
  for i = 1:bitRate*n
    result(i) = (rand()*2)-1;
  endfor

endfunction
