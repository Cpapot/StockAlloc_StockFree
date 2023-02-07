/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stockmem.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cpapot <cpapot@student.42lyon.fr >         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/07 21:00:37 by cpapot            #+#    #+#             */
/*   Updated: 2023/02/07 21:56:28 by cpapot           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef STOCKMEM_H
# define STOCKMEM_H

# include <stdlib.h>

typedef struct s_memstock
{
	void				*content;
	struct s_memstock	*next;
}						t_memlist;

void		*stock_malloc(size_t size, t_memlist **stock);
void		stock_free(t_memlist **stock);

#endif
