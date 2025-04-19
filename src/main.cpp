#include <stdio.h>

int h()
{
    int h_var = 123;
    char* ptr = (char*)&h_var;

    printf("h_var=%p\n", ptr);

    for (int i = -32; i <= 32; i++) {
        char* current = ptr + i;
        printf("c=%p\n", current);
        printf("h=%p\n", (0xFF & *current));
    }

    return 0;
}

int f()
{
    h();
    return 0;
}