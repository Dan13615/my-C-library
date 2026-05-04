/*
** Project 	: LibC
** Author	: Daniil Stepanov
** File		: strlen.c
*/

#include "../include/string_test.h"
#include <stdio.h>
#include <assert.h>
#include <string.h>

void test_strlen(void)
{
    printf("Testing strlen...\n");
    assert(strlen("Hello") == 5);
    assert(strlen("") == 0);
    assert(strlen("a") == 1);
    assert(strlen("Test string") == 11);
    printf("  ✓ strlen tests passed\n");
}

void test_strcmp(void)
{
    printf("Testing strcmp...\n");
    assert(strcmp("hello", "hello") == 0);
    assert(strcmp("abc", "abd") < 0);
    assert(strcmp("abd", "abc") > 0);
    assert(strcmp("", "") == 0);
    assert(strcmp("a", "") > 0);
    assert(strcmp("", "a") < 0);
    printf("  ✓ strcmp tests passed\n");
}

void test_strncmp(void)
{
    printf("Testing strncmp...\n");
    assert(strncmp("hello", "hello", 5) == 0);
    assert(strncmp("hello", "help", 3) == 0);
    assert(strncmp("abc", "abd", 2) == 0);
    assert(strncmp("abc", "abd", 3) < 0);
    assert(strncmp("", "", 0) == 0);
    assert(strncmp("hello", "hello", 3) == 0);
    printf("  ✓ strncmp tests passed\n");
}

void test_strcasecmp(void)
{
    printf("Testing strcasecmp...\n");
    assert(strcasecmp("hello", "HELLO") == 0);
    assert(strcasecmp("HeLLo", "hello") == 0);
    assert(strcasecmp("ABC", "abc") == 0);
    assert(strcasecmp("abc", "abd") < 0);
    assert(strcasecmp("ABD", "abc") > 0);
    printf("  ✓ strcasecmp tests passed\n");
}

void test_strchr(void)
{
    printf("Testing strchr...\n");
    const char *str = "hello world";
    assert(strchr(str, 'h') == str);
    assert(strchr(str, 'e') == str + 1);
    assert(strchr(str, 'o') == str + 4);
    assert(strchr(str, 'w') == str + 6);
    assert(strchr(str, 'x') == NULL);
    assert(strchr("", 'a') == NULL);
    printf("  ✓ strchr tests passed\n");
}

void test_strrchr(void)
{
    printf("Testing strrchr...\n");
    const char *str = "hello world";
    assert(strrchr(str, 'o') == str + 7);
    assert(strrchr(str, 'l') == str + 9);
    assert(strrchr(str, 'h') == str);
    assert(strrchr(str, 'x') == NULL);
    assert(strrchr("", 'a') == NULL);
    printf("  ✓ strrchr tests passed\n");
}

void test_strstr(void)
{
    printf("Testing strstr...\n");
    const char *str = "hello world";
    assert(strstr(str, "hello") == str);
    assert(strstr(str, "world") == str + 6);
    assert(strstr(str, "o w") == str + 4);
    assert(strstr(str, "xyz") == NULL);
    assert(strstr("", "") != NULL);
    const char *hello = "hello";
    assert(strstr(hello, "") == hello);
    printf("  ✓ strstr tests passed\n");
}

void test_strspn(void)
{
    printf("Testing strspn...\n");
    assert(strspn("hello", "helo") == 5);
    assert(strspn("hello", "he") == 2);
    assert(strspn("hello", "xyz") == 0);
    assert(strspn("", "abc") == 0);
    assert(strspn("aaa", "a") == 3);
    printf("  ✓ strspn tests passed\n");
}

void test_strcspn(void)
{
    printf("Testing strcspn...\n");
    assert(strcspn("hello", "x") == 5);
    assert(strcspn("hello", "o") == 4);
    assert(strcspn("hello", "l") == 2);
    assert(strcspn("hello", "helo") == 0);
    assert(strcspn("", "abc") == 0);
    printf("  ✓ strcspn tests passed\n");
}

void test_strpbrk(void)
{
    printf("Testing strpbrk...\n");
    const char *str = "hello world";
    assert(strpbrk(str, "w") == str + 6);
    assert(strpbrk(str, "xyz") == NULL);
    assert(strpbrk(str, "helo") == str);  // 'h' is first match
    assert(strpbrk(str, "wrld") == str + 2);  // 'l' is first match at index 2
    printf("  ✓ strpbrk tests passed\n");
}

void test_memcpy(void)
{
    printf("Testing memcpy...\n");
    char src[] = "hello";
    char dest[20] = {0};
    memcpy(dest, src, 5);
    assert(strcmp(dest, "hello") == 0);
    
    unsigned char buf1[10] = {1, 2, 3, 4, 5};
    unsigned char buf2[10] = {0};
    memcpy(buf2, buf1, 5);
    for (int i = 0; i < 5; i++)
        assert(buf2[i] == buf1[i]);
    printf("  ✓ memcpy tests passed\n");
}

void test_memmove(void)
{
    printf("Testing memmove...\n");
    char src[] = "hello";
    char dest[10] = {0};
    memmove(dest, src, 5);
    assert(strcmp(dest, "hello") == 0);
    
    char overlap[12] = "abcdefghij";
    memmove(overlap + 2, overlap, 5);
    assert(overlap[2] == 'a');
    assert(overlap[3] == 'b');
    printf("  ✓ memmove tests passed\n");
}

void test_memset(void)
{
    printf("Testing memset...\n");
    char buf[20];
    memset(buf, 'A', 5);
    for (int i = 0; i < 5; i++)
        assert(buf[i] == 'A');
    
    unsigned char bytes[20];
    memset(bytes, 0xFF, 4);
    for (int i = 0; i < 4; i++)
        assert(bytes[i] == 0xFF);
    printf("  ✓ memset tests passed\n");
}

int main(void)
{
    printf("\n=== Running String Library Tests ===\n\n");
    
    test_strlen();
    test_strcmp();
    test_strncmp();
    test_strcasecmp();
    test_strchr();
    test_strrchr();
    test_strstr();
    test_strspn();
    test_strcspn();
    test_strpbrk();
    test_memcpy();
    test_memmove();
    test_memset();
    
    printf("\n=== All tests passed! ===\n\n");
    return 0;
}
