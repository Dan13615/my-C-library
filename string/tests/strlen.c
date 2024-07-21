/*
** Project 	: LibC
** Author	: Daniil Stepanov
** File		: Makefile
*/

#include "../include/string_test.h"
#include "unistd.h"

int main(void)
{
    int test1 = my_strlen("Hello");

    write(1, &test1, sizeof(int));
}
