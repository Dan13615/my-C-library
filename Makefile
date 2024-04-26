##
## Project 	: LibC
## Author	: Daniil Stepanov
## File		: Makefile
##

SRC			=	strlen.asm		\
				strcmp.asm		\
				strncmp.asm		\
				strcasecmp.asm	\
				strchr.asm		\
				strrchr.asm		\
				memset.asm		\
				memcpy.asm		\
				memmove.asm		\
				strstr.asm		\
				strpbrk.asm		\
				strspn.asm		\
				strcspn.asm		\

OBJ			=	$(SRC:.asm=.o)

NAME		= 	Clib.so

FLAGS		=	-shared -fPIC -nostdlib

RM 			= 	rm -rf

all			:	$(OBJ)
				@echo "Linking $(NAME)..."
				@gcc $(FLAGS) $(OBJ) -o $(NAME)
				@mkdir obj/
				@mv *.o obj/

%.o			:	%.asm
				@echo "Assembling $<..."
				@nasm -f elf64 -o $@ $<

clean		:
				@$(RM) obj/
				@echo "Cleaning all object files"

fclean		: 	clean
				@$(RM) $(NAME)
				@echo "Cleaning $(NAME)"

re			: 	fclean clean all

.PHONY		:	all clean fclean re