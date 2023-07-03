#include <stdio.h>

extern unsigned int string_length(const char *str);
extern unsigned int utf8_get_chr(const char *str, char **end);

const char *str1 = "¡Hola Mundo!";

int main() {
    int len = string_length(str1);
    printf("Length (bytes) of '%s' = %d\n", str1, len);

    char *next_char;
    unsigned int first_char = utf8_get_chr(str1, &next_char);
    printf("First character of '%s' = %d\n", str1, first_char);
    printf("After first character = '%s'\n", next_char);

    return 0;
}