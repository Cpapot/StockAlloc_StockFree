/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cpapot <cpapot@student.42lyon.fr >         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/07 22:57:25 by cpapot            #+#    #+#             */
/*   Updated: 2023/02/07 22:57:28 by cpapot           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
