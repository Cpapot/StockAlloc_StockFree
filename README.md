
# StockMem

This project contains two functions that allow you to optimize memory management in your C projects.

## memlist

```
typedef struct s_memstock
{
	void				*content;
	struct s_memstock	*next;
}						t_memlist;
```
## stock_malloc

```
void		*stock_malloc(size_t size, t_memlist **stock);
```


## stock_free

```
void		stock_free(t_memlist **stock);
```
## Usage/Examples

```c
#include "inc/stockmem.h"

int	main(void)
{
	t_memlist	*mem;
	char		*testchar1;
	char		*testchar2;
	char		*testchar3;
	char		*testchar4;

	mem = NULL;
	testchar1 = stock_malloc(sizeof(char)*10,&mem);
	testchar2 = stock_malloc(sizeof(char)*10,&mem);
	testchar3 = stock_malloc(sizeof(char)*10,&mem);
	testchar4 = stock_malloc(sizeof(char)*10,&mem);
	stock_free(&mem);
}
```

```
==28526== HEAP SUMMARY:
==28526==     in use at exit: 0 bytes in 0 blocks
==28526==   total heap usage: 8 allocs, 8 frees, 104 bytes allocated
==28526==
==28526== All heap blocks were freed -- no leaks are possible
```
