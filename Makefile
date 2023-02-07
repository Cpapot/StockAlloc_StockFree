#				______ _ _
#				|  ____(_) |
#				| |__   _| | ___  ___
#				|  __| | | |/ _ \/ __|
#				| |    | | |  __/\__ \.
#				|_|    |_|_|\___||___/

HEADERS 	=	stockmem.h

SRCSFILE		= stock_malloc.c stock_free.c

#					Directories

HEADERSDIR	=	./inc/

SRCSDIR		=	./src/

OBJSDIR		=	./objs/

#					Full Path

HEAD		=	$(addprefix $(HEADERSDIR),$(HEADERS))

SRCS		=	$(addprefix $(SRCSDIR),$(SRCSFILE))

LIBFT		=	$(addprefix $(LIBFTDIR),$(LIBFTSRC))

OBJS		=	$(SRCS:$(SRCSDIR)%.c=$(OBJSDIR)%.o)

#		 __      __        _       _     _
#		 \ \    / /       (_)     | |   | |
#		  \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___
#		   \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#		    \  / (_| | |  | | (_| | |_) | |  __/\__ \.
#		     \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/

PRINT_COMPILE = @echo "\033[1;32m⏳ compiling stockmem\033[1;0m"

AR			=	ar rc

NAME		=	stockmem.a

CFLAGS		=	-Wall -Wextra -Werror

CC			=	gcc

RM			=	rm -rf

MKDIR		=	mkdir -p

#				  _____       _
#				 |  __ \     | |
#				 | |__) |   _| | ___  ___
#				 |  _  / | | | |/ _ \/ __|
#				 | | \ \ |_| | |  __/\__ \.
#				 |_|  \_\__,_|_|\___||___/

all : ${NAME}
	@echo "\033[1;32m✅ stockmem OK\033[1;0m"

${NAME}:	${OBJS} Makefile
	@${AR} ${NAME} ${OBJS}

$(OBJSDIR)%.o: ${SRCSDIR}%.c ${HEAD}
	@$(MKDIR) $(OBJSDIR)
	@$(CC) ${CFLAGS} -c $< -o $@ -I$(HEADERSDIR)
	@$(PRINT_COMPILE)
	@$(eval PRINT_COMPILE = @:)

clean:
	@${RM} ${OBJS}
	@echo "\033[1;31m🗑  stockmem cleaned\033[1;0m"

fclean:
	@${RM} ${OBJS}
	@${RM} ${OBJSDIR}
	@${RM} ${NAME}
	@echo "\033[1;31m🗑  stockmem cleaned\033[1;0m"

re:
	@${MAKE} --no-print-directory fclean
	@${MAKE} --no-print-directory all

.PHONY : re all clean fclean printf
