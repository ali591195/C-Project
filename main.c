// All Modules
    #include <stdio.h>
    #include <stdlib.h>
    #include <ncurses.h>
    #include "./modules/headers/utility/clearScreen.h"
    #include "./modules/headers/startup/start.h"
    #include "./modules/headers/startup/introduction.h"
    #include "./modules/headers/stages/stageOne.h"

// Main Function
    int main() {

    // The basic functions for ncurses library
        initscr();
        has_colors();
        start_color();
        cbreak();
        noecho();
        keypad(stdscr, TRUE);
        curs_set(0);

    // All color pairs in the program
        init_pair(1, COLOR_GREEN, COLOR_BLACK);
        init_pair(2, COLOR_BLUE, COLOR_BLACK);
        init_pair(3, COLOR_MAGENTA, COLOR_BLACK);
        init_pair(4, COLOR_YELLOW, COLOR_BLACK);
        init_pair(5, COLOR_CYAN, COLOR_BLACK);
        init_pair(6, COLOR_RED, COLOR_BLACK);

    // The values for each buttons are: 0 for start, 1 for options, 2 for exit
    struct OptionSelect optionSelected = start();
    erase();
    refresh();
    if (optionSelected.play) {
        introduction();
        stageOne();
    }
    else if (optionSelected.options) {

    }

    endwin();
    return 0;
}