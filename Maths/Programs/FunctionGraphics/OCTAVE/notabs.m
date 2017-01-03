function ans1 = polynom1 (x)
ans1 = x .^ 6 .+ 7 * x + 5;
endfunction

function ans2 = polynom2 (x)
ans2 = x .^ 5 .+ 3 * x + 5;
endfunction

function list = get_intersections (polynom1a, polynom2a, all_values_of_x)
list = [];
index_of_intersection = [];
while (!isempty (find (polynom1a == polynom2a)))
index_of_intersection = find (polynom1a == polynom2a);

if (all_values_of_x (index_of_intersection) == all_values_of_x (length (all_values_of_x)))
if (polynom1a (index_of_intersection) == polynom2a (index_of_intersection))
disp ("Answer: ");
disp (all_values_of_x (index_of_intersection));
list (length (list) + 1) = all_values_of_x (index_of_intersection);
break
endif
break
endif

disp ("Answer: ");
disp (all_values_of_x (index_of_intersection));
list (length (list) + 1) = all_values_of_x (index_of_intersection);

index_of_intersection = all_values_of_x (index_of_intersection + 1);
all_values_of_x = [index_of_intersection:0.001:100];
polynom1a = polynom1 (all_values_of_x);
polynom2a = polynom2 (all_values_of_x);
endwhile
endfunction

all_values_of_x = [-100:0.001:100];
polynom1a = polynom1 (all_values_of_x);
polynom2a = polynom2 (all_values_of_x);
get_intersections (polynom1a, polynom2a, all_values_of_x)
