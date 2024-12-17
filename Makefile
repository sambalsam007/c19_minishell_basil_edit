NAME = minishell

CC = clang
CFLAGS= -Wall -Wextra -Werror -g
DEBUG_FLAGS= -fsanitize=address -fsanitize=undefined -fsanitize=bounds -fsanitize=null
INCLUDES = -I ./libf
INCFLAGS= -I src/libft -L src/libft -lft -lreadline
LIBFT=./src/libft/libft.a

MAIN_SRCS= minishell_main.c 

SRCS = $(MAIN_SRCS)

SRC_DIRS = src/main

vpath %.c $(SRC_DIRS)  

OBJECTS = $(patsubst %.c,obj/%.o,$(SRCS))

all: $(LIBFT) obj $(NAME)
	@(make -q $(NAME) && echo "Everything up to date") || (make  build)

