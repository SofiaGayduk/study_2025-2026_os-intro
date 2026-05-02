#include <stdio.h>
#include <stdlib.h>

int main() {
    int n;

    printf("Ввод числа ");
    scanf("%d", &n);

    if(n > 0) {
        printf("больше 0\n");
        exit(1);
    }else if(n < 0) {
        printf("меньше 0\n");
        exit(2);
    }else {
        printf("Равно 0\n");
        exit(0);
    }
}
