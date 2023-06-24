#include "../../headers/startup/start.h"
#include <stdlib.h>
#include <ncurses.h>
#include <stdio.h>
#include <string.h>

struct OptionButton {
    int top;
    int left;
    char text[50];
};

struct OptionSelect defaultOptionSelect() {
    struct OptionSelect s;
    s.play = false;
    s.options = false;
    return s;
}
void mvwcolorText(WINDOW *window, int colorPair, int height, int width, char text[]) {
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

struct OptionButton optionButton(int top, int left, char text[]) {
    struct OptionButton s;
    s.top = top;
    s.left = left;
    strcpy(s.text, text);
    return s;
}
struct OptionSelect options (int height, int width, int y) {
    struct OptionSelect optionSelect = defaultOptionSelect();

    // Option buttons specs
    int optionHeight = height;
    int optionWidth = width;
    int optionY = y;
    int optionX = (COLS - optionWidth) / 2;

    WINDOW *option = newwin(optionHeight, optionWidth, optionY, optionX);
    keypad(option, TRUE);
    refresh();
    
    box(option, 0, 0);
    
    struct OptionButton play = optionButton(2, 6, "Play");
    struct OptionButton options = optionButton(2, 16, "Options");
    struct OptionButton quit = optionButton(2, 29, "Quit");

    mvwcolorText(option, 1, play.top, play.left, play.text);
    mvwprintw(option, options.top, options.left, options.text);
    mvwprintw(option, quit.top, quit.left, quit.text);
    wrefresh(option);

    int ch;
    int countOption = 0;
    while((ch = getch()) != 27) {
        if(ch == KEY_RIGHT || ch == 'd' || ch == 'D') {
            if(countOption == 0) {
                mvwprintw(option, play.top, play.left, play.text);
                mvwcolorText(option, 1, options.top, options.left, options.text);
                mvwprintw(option, quit.top, quit.left, quit.text);
                wrefresh(option);
                countOption = 1;
            }
            else if (countOption == 1) {
                mvwprintw(option, play.top, play.left, play.text);
                mvwprintw(option, options.top, options.left, options.text);
                mvwcolorText(option, 1, quit.top, quit.left, quit.text);
                wrefresh(option);
                countOption = 2;
            }
        }
        else if(ch == KEY_LEFT || ch == 'a' || ch == 'A') {
            if(countOption == 1) {
                mvwcolorText(option, 1, play.top, play.left, play.text);
                mvwprintw(option, options.top, options.left, options.text);
                mvwprintw(option, quit.top, quit.left, quit.text);
                wrefresh(option);
                countOption = 0;
            }
            else if(countOption == 2) {
                mvwprintw(option, play.top, play.left, play.text);
                mvwcolorText(option, 1, options.top, options.left, options.text);
                mvwprintw(option, quit.top, quit.left, quit.text);
                wrefresh(option);
                countOption = 1;
            }
        }
        else if (ch == KEY_ENTER || ch == '\n') {
            if(countOption == 0) {
                optionSelect.play = true;
                break;
            }
            else if(countOption == 1) {
                optionSelect.options = true;
                break;
            }
            else if(countOption == 2) {
                break;
            }
        }
    }
    
    delwin(option);

    return optionSelect;
}

struct OptionSelect start() {
    WINDOW *TitleWindow = titleWindow(5, 40, 0);
    struct OptionSelect optionSelected = options(5, 39, 5);

    delwin(TitleWindow);
    refresh();

    return optionSelected;
}