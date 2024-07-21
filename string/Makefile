##
## Project 	: LibC
## Author	: Daniil Stepanov
## File		: Makefile
##

SRC			=	src/strlen.asm		\
				src/strcmp.asm		\
				src/strncmp.asm		\
				src/strcasecmp.asm	\
				src/strchr.asm		\
				src/strrchr.asm		\
				src/memset.asm		\
				src/memcpy.asm		\
				src/memmove.asm		\
				src/strstr.asm		\
				src/strpbrk.asm		\
				src/strspn.asm		\
				src/strcspn.asm		\

OBJ			=	$(SRC:.asm=.o)

TESTS		=	tests/strlen.c		\

NAME		= 	libstring.so

TEST		=	unit_tests

FLAGS		=	-shared -fPIC -nostdlib

LDFLAGS		=	-nostdlib -Wall -Wextra

RM 			= 	rm -rf

GARBAGE			=	obj/	\
					bin/	\
					*.gcno	\
				
all			:	$(OBJ)
				@echo "Linking $(NAME)..."
				@gcc $(FLAGS) $(OBJ) -o $(NAME)
				@mkdir obj/
				@mkdir bin/
				@mv src/*.o obj/
				@cp $(NAME) bin/

%.o			:	%.asm
				@echo "Assembling $<..."
				@nasm -f elf64 -o $@ $<

clean		:
				@$(RM) $(GARBAGE)
				@echo "Cleaning all object files"

fclean		: 	clean
				@$(RM) $(NAME)
				@$(RM) $(TEST)
				@echo "Cleaning $(NAME)"

re			: 	fclean clean all

tests			:	all
				@gcc -o $(TEST) $(LDFLAGS) $(TESTS) -I/include/ -L./bin/ -lstring
				@LD_LIBRARY_PATH=./bin ./$(TEST)

.PHONY		:	all clean fclean re
