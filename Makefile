# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmateus- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/11/04 10:51:58 by gmateus-          #+#    #+#              #
#    Updated: 2025/11/06 12:11:08 by gmateus-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c ft_printf_utils.c

OBJ = $(SRC:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
AR = ar rcs
INCLUDE = -I .

all: $(NAME)

%.o : %.c
	@$(CC) $(CFLAGS) $(INCLUDE) -c $<

$(NAME): $(OBJ)
	@echo "Objetos criados e disponiveis para a execução Sr."
	@$(AR) $(NAME) $(OBJ)
	@echo "Libftprintf.a disponivel para a utilização Sr."

clean :
	@$(RM) $(OBJ)
	@echo "Objetos completamente deletados Sr."

fclean : clean
	@$(RM) $(NAME)
	@echo "Todos os arquivos foram precisamente obliterados Sr."

re : fclean all
	@echo "Arquivos corretamente recompilados Sr."

.PHONY: all clean fclean re
