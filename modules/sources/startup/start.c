#include "../../headers/startup/start.h"
#include <stdlib.h>
#include <ncurses.h>

void mvwcolorText(WINDOW *window, int colorPair, int height, int width, const char text[]) {
    wattrset(window, COLOR_PAIR(colorPair));
    mvwprintw(window, height, width, text);
    wattroff(window, COLOR_PAIR(colorPair));
}
WINDOW *titleWindow(int height, int width, int y) {
    // Title Window specs
    int titleWindowHeight = height;
    int titleWindowWidth = width;
    int titleWindowY = y;
    int titleWindowX = (COLS - titleWindowWidth) / 2;

    // Title Window creation
    WINDOW *titleWindow = newwin(titleWindowHeight, titleWindowWidth, titleWindowY, titleWindowX);

    refresh();

    //Border Creation and Cursor movement
    box(titleWindow, 0, 0);
    mvwcolorText(titleWindow, 5, titleWindowHeight / 2, titleWindowWidth / 6, "Lost in the Enchanted Forest");
    wrefresh(titleWindow);

    return titleWindow;
}
int options (int height, int width, int y) {
    // Option buttons specs
    int optionHeight = height;
    int optionWidth = width;
    int optionY = y;
    int optionX = (COLS - optionWidth) / 2;

    WINDOW *option = newwin(optionHeight, optionWidth, optionY, optionX);
    keypad(option, TRUE);
    refresh();
    
    box(option, 0, 0);
    
    mvwcolorText(option, 1,  2, 6, "Play");
    mvwprintw(option, 2, 16, "Option");
    mvwprintw(option, 2, 28, "Quit");
    wrefresh(option);

    int optionSelected = 2;
    int ch;
    int countOption = 0;
    while((ch = getch()) != 27) {
        if(ch == KEY_RIGHT || ch == 'd' || ch == 'D') {
            if(countOption == 0) {
                mvwprintw(option, 2, 6, "Play");
                mvwcolorText(option, 1,  2, 16, "Option");
                mvwprintw(option, 2, 28, "Quit");
                wrefresh(option);
                countOption = 1;
            }
            else if (countOption == 1) {
                mvwprintw(option, 2, 6, "Play");
                mvwprintw(option, 2, 16, "Option");
                mvwcolorText(option, 1,  2, 28, "Quit");
                wrefresh(option);
                countOption = 2;
            }
        }
        else if(ch == KEY_LEFT || ch == 'a' || ch == 'A') {
            if(countOption == 1) {
                mvwcolorText(option, 1,  2, 6, "Play");
                mvwprintw(option, 2, 16, "Option");
                mvwprintw(option, 2, 28, "Quit");
                wrefresh(option);
                countOption = 0;
            }
            else if(countOption == 2) {
                mvwprintw(option, 2, 6, "Play");
                mvwcolorText(option, 1,  2, 16, "Option");
                mvwprintw(option, 2, 28, "Quit");
                wrefresh(option);
                countOption = 1;
            }
        }
        else if (ch == KEY_ENTER || ch == '\n') {
            if(countOption == 0) {
                optionSelected = 0;
                break;
            }
            else if(countOption == 1) {
                optionSelected = 1;
                break;
            }
            else if(countOption == 2) {
                optionSelected = 2;
                break;
            }
        }
    }
    
    delwin(option);

    return optionSelected;
}

int start() {
    WINDOW *TitleWindow = titleWindow(5, 40, 0);
    int optionSelected = options(5, 38, 5);

    delwin(TitleWindow);
    refresh();

    return optionSelected;
}