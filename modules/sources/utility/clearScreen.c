#include "../../headers/utility/clearScreen.h"
#include <stdlib.h>

void clrscr() {
    #ifdef _WIN32
        system("cls");
    #else
        system("clear");
    #endif
}