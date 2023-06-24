#include "../../headers/startup/start.h"
#include <stdlib.h>
#include <ncurses.h>

void windowColorText(WINDOW *window, int colorPair, int height, int width, const char text[]) {
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
    windowColorText(titleWindow, 5, titleWindowHeight / 2, titleWindowWidth / 6, "Lost in the Enchanted Forest");
    wrefresh(titleWindow);

    return titleWindow;
}
bool options (int height, int width, int y) {
    // Option buttons specs
    int optionHeight = height;
    int optionWidth = width;
    int optionY = y;
    int optionX = (COLS - optionWidth) / 2;

    WINDOW *option = newwin(optionHeight, optionWidth, optionY, optionX);
    keypad(option, TRUE);
    refresh();
    
    box(option, 0, 0);
    
    windowColorText(option, 1,  2, 5, "Play");
    mvwprintw(option, 2, 15, "Option");
    mvwprintw(option, 2, 30, "Quit");
    wrefresh(option);

    bool playPressed = false;
    int ch;
    int countOption = 0;
    while((ch = getch()) != 27) {
        if((ch == KEY_LEFT || ch == 'a' || ch == 'A') && countOption == 1) {
            windowColorText(option, 1,  optionHeight / 2, optionWidth / 4, "Play");
            mvwprintw(option, optionHeight / 2, optionWidth / 1.6, "Quit");
            wrefresh(option);
            countOption = 0;
        }
        else if((ch == KEY_RIGHT || ch == 'd' || ch == 'D') && countOption == 0) {
            mvwprintw(option, optionHeight / 2, optionWidth / 4, "Play");
            windowColorText(option, 1, optionHeight / 2, optionWidth / 1.6, "Quit");
            wrefresh(option);
            countOption = 1;
        }
        else if ((ch == KEY_ENTER || ch == '\n') && countOption == 0) {
            playPressed = true;
            break;
        }
        else if ((ch == KEY_ENTER || ch == '\n') && countOption == 1) {
            break;
        }
    }
    
    delwin(option);

    return playPressed;
}

bool start() {
    WINDOW *TitleWindow = titleWindow(5, 40, 0);
    bool playPressed = options(5, 45, 5);

    delwin(TitleWindow);
    refresh();

    return playPressed;
}