## Copyright (C) 2021 shahi
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} mycorr (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: shahi <shahi@SHAHIL-DSK>
## Created: 2021-03-18

function retval = mycorr (x, y)
  
  n = length(x);
  x_bar = 0;
  y_bar = 0;  #white noise centered on 0
  covariance = 0;
  varX = 0;
  varY = 0;
  
  for i = 1:n
    covariance += (x(i)-x_bar)*(y(i)-y_bar);
    varX += (x(i)-x_bar)^2;
    varY += (y(i)-y_bar)^2;
  endfor
  
  devX = sqrt(varX);
  devY = sqrt(varY);
  #covariance = cov(x,y)
  #devX = std(x)
  #devY = std(y)

  retval = covariance/(devX*devY);

endfunction
