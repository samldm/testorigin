SRC 	=	main.c

CC		=	gcc
CFLAGS	=	-W -Wall -Wextra -Werror

OBJ		=	$(SRC:.c=.o)

NAME	=	a.out

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CFLAGS)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
