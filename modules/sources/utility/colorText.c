#include "../../headers/utility/colorText.h"
#include <ncurses.h>

void colorText(int pair, char text[]) {
    attrset(COLOR_PAIR(pair));
    printw(text);
    attroff(COLOR_PAIR(pair));
}

void mvcolorText(int pair, int top, int left, char text[]) {
    attrset(COLOR_PAIR(pair));
    mvprintw(top, left, text);
    attroff(COLOR_PAIR(pair));
}