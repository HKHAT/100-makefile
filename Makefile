# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elchakir <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/19 20:07:54 by elchakir          #+#    #+#              #
#    Updated: 2023/11/21 22:30:43 by elchakir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_atoi.c ft_isalnum.c ft_isdigit.c ft_memcpy.c ft_putchar_fd.c \
	ft_striteri.c ft_strlcpy.c ft_strncmp.c ft_tolower.c ft_putchar_fd.c ft_itoa.c ft_split.c \
	ft_bzero.c ft_isalpha.c ft_isprint.c ft_memchr.c ft_memmove.c ft_putnbr_fd.c ft_strnstr.c ft_putstr_fd.c ft_strchr.c \
	ft_strjoin.c ft_strlen.c ft_strrchr.c ft_toupper.c ft_calloc.c ft_strdup.c ft_strrchr.c \
	ft_calloc.c ft_isascii.c ft_isspace.c ft_memcmp.c ft_memset.c ft_putstr_fd.c ft_putendl_fd.c ft_strdup.c ft_strtrim.c \
	ft_strlcat.c ft_strmapi.c ft_substr.c

SRCB = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c \
	ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c \
	ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJS = $(SRCS:.c=.o)

OBJB = $(SRCB:.c=.o)

CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

#.o: .c
#	$(CC) $(CFLAGS) -c $< 

bonus: $(OBJB) all
	
$(OBJB): $(SRCB)
	$(CC) $(CFLAGS) -c $(SRCB) 
	$(AR) $(NAME) $(OBJB)
clean:
	rm -f $(OBJS) $(OBJB)

fclean: clean
	rm -f $(NAME)

re: fclean all

