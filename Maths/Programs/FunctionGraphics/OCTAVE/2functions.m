function ans1 = f1 (x)
	ans1 = x .^ 3;
endfunction

function ans2 = f2 (x)
	ans2 = x .^ 2;
endfunction

x = [-(sqrt(25)):0.001:(sqrt(25))];
plot (x, f1 (x), "r-", x, f2 (x), "b--");
