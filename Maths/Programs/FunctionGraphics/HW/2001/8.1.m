[xx, yy] = meshgrid (-1:0.002:1, 0:0.001:1);
f = abs(xx) .+ abs (xx .+ yy);
surf(xx,yy,f)
