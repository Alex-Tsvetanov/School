function asdf1 = f1 (x)
	x = x * 1.375;
	asdf1 = (2 * (x .* x .+ abs (x) - 6)) ./ (3 * (x .* x .+ abs (x) + 2)) - sqrt (25 - x .* x);
endfunction

function asdf2 = f2 (x)
	x = x * 1.375;
	asdf2 = (2 * (x .* x .+ abs (x) - 6)) ./ (3 * (x .* x .+ abs (x) + 2)) + sqrt (25 - x .* x);
endfunction

x = [-(sqrt(25)):0.001:(sqrt(25))];
plot (x, f1(x), "r-", x, f2(x), "r-");
