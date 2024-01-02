

x << k == x multiplied by 2 to the power of k
x >> k == x divided by 2 to the power of k

You can use these shifts to do any multiplication operation. For example:

x * 14 == x * 16 - x * 2 == (x << 4) - (x << 1)
x * 12 == x * 8 + x * 4 == (x << 3) + (x << 2)

To divide a number by a non-power of two, I'm not aware of any easy way, 
unless you want to implement some low-level logic, use other binary operations 
and use some form of iteration.

