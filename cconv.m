% source: http://octave.1599824.n4.nabble.com/Circular-convolution-td1611981.html

function a = cconv( b, c )

  nb = length(b) ;
  nc = length(c) ;

  
  % Ensure the two vectors are the same length

  if (nb < nc)
    b = [ b zeros(1,nc-nb) ] ;
  endif

  if (nc < nb)
    c = [ c zeros(1,nb-nc) ] ;
  endif

  a = ifft(fft(b) .* fft(c)) ;

  % Get rid of any tiny imaginary bits that should be zero

  if (all(b == real(b)) && all(c == real(c)))
    a = real(a) ;
  endif

endfunction
