#include <stdio.h>

int h()
{
    int l = 5;
    printf("&l=%p\n", &l);
    return 0;
}

int g(int a, int b)
{
    int y = a+b;
    printf("&a=%p\n", &a);
    printf("&b=%p\n", &b);
    printf("&y=%p\n", &y);
    h();
    return y;
}

int f()
{
    h();
    printf("&f=%p\n", &f);
    printf("&g=%p\n", &g);
    printf("&h=%p\n", &h);
    // int x = g(5,6);
    // printf("&x=%p\n", &x);
    return 0;
}