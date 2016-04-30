#include <iostream>
#include <set>
#include <sstream>
#include <algorithm>

using namespace std;

int main ()
{
	int a, b, c;
	set < string > output;
	for (a = 1 ; a <= 20 ; a ++)
		for (b = a ; b <= 20 - a ; b ++)
		{
			c = 20 - a - b;
			int A [3] = {a, b, c};
			sort (A, A + 3);
			stringstream ss;
			ss << A [0] << " " << A [1] << " " << A [2] << "\n";
			if (a + b > c and a + c > b and b + c > a)
				output.insert (ss.str ());
		}
	for (auto& x : output)
	{
		cout << x;
	}
}

