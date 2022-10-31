# Sample Pointer Dereference (GAS/AT&T Syntax)
This is a sample asm program to illustrate the operation of a pointer dereference.

I wrote this in preparation for writing the `moca` compiler whenever I eventually have to deal with writing references/pointers.

This should be equivalent to the following C code:
```c
#include <stdint.h>
#include <stdio.h>

int main()
{
	int64_t x = 5;
	int64_t* y = &x;
	*y = 10;
	
	printf("Value is: %ld\n", x);

	return 0;
}
```

**Compilation:**
`gcc -no-pie pointer_deref.s -o pointer_deref`
