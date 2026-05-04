##
## Project 	: LibC
## Author	: Daniil Stepanov
## File		: Makefile
##

SRC			:=	$(wildcard src/*.asm)

OBJ			:=	$(SRC:.asm=.o)

TESTS		:=	$(wildcard tests/*.c)

NAME		:= 	lib$(notdir $(CURDIR)).so

TEST		:=	unit_tests

FLAGS		:=	-shared -fPIC -nostdlib

LDFLAGS		:=	-nostdlib -Wall -Wextra

RM 			:= 	rm -rf

GARBAGE			:=	obj/	\
					bin/	\
					*.gcno	
all			:	$(OBJ)
				@echo "Linking $(NAME)..."
				@gcc $(FLAGS) $(OBJ) -o $(NAME)
				@mkdir -p obj/
				@mkdir -p bin/
				@mv src/*.o obj/
				@cp $(NAME) bin/

.PHONY: re clean tests all

clean			:
				@echo "Cleaning all object files"
				@$(RM) src/*.o
				@echo "Cleaning $(NAME)"
				@$(RM) $(NAME)
				@$(RM) $(GARBAGE)

re				:	clean all

%.o			:	%.asm
				@echo "Assembling $<..."
			@nasm -f elf64 -o $@ $<

tests			:	all
			@gcc -o $(TEST) -Wall -Wextra $(TESTS) -I./include/ -L./bin/ -lwchar
			@LD_LIBRARY_PATH=./bin ./$(TEST)