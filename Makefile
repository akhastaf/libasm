# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akhastaf <akhastaf@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/14 10:54:13 by akhastaf          #+#    #+#              #
#    Updated: 2020/10/16 18:44:55 by akhastaf         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


C = gcc

SRC = _ft_strlen.s _ft_read.s _ft_write.s _ft_strcmp.s _ft_strcpy.s _ft_strdup.s

OBJ = $(SRC:.s=.o)

NASM = nasm -f macho64

NAME = libasm.a

FLAG = -Wall -Wextra -Werror

%.o:	%.s
		$(NASM) $<

all: $(NAME)

$(NAME):	$(OBJ)
			ar rcs $(NAME) $(OBJ)
	
test:
			$(C) $(FLAG) main.c $(NAME)
			
clean:		
		rm -f $(OBJ) 

fclean: clean
			rm -f $(NAME)

re: clean fclean all
