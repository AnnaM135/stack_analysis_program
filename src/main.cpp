#include <stdio.h>

int h()
{
    int h_var = 123;
    char* ptr = (char*)&h_var;

    printf("h_var=%p\n\n", ptr);

    for (int i = -32; i <= 32; i++) {
        char* current = ptr + i;
        printf("%p\n", current);
        printf("%p\n", (0xFF & *current));
    }

    return 0;
}

int f()
{
    h();
    return 0;
}