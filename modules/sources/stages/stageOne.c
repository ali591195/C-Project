#include "../../headers/stages/stageOne.h"
#include "../../headers/utility/colorText.h"
#include <stdlib.h>
#include <ncurses.h>

void startingPointText() {
    printw("As you slowly regain consciousness, your surroundings come into focus. You find yourself in a mystical grove enveloped by a thick mist, the air heavy with an ");
    colorText(5, "ethereal aura");
    printw(" Towering ancient trees loom over you, their gnarled branches reaching towards the heavens. Your head still swims with a sense of disorientation, and your memory eludes you.");
    getch();

    printw("\n\nWith a bewildered gaze, you survey your environment, only to realize that the grove offers no respite. Trees stand sentinel-like, encircling you on all sides, shrouding the sky from view. Their bark possesses an otherworldly hue, tinged with a faint bluish tint. Amidst the foliage, ");
    colorText(4, "tantalizing fruits");
    printw(" dangle enticingly, teasingly out of your grasp.");
    getch();

    printw("\n\nAs you immerse yourself in this surreal scene, an ");
    colorText(3, "enigmatic whisper");
    printw(" emanates from the depths of the forest, echoing through the stillness. It beckons to you, stirring an inexplicable curiosity within your being. The call is undeniable, though its origins remain obscured.");
    getch();

    printw("\n\nIn this uncertain moment, the path ahead is yours to choose.");
    getch();
}
void startingPoint() {
    refresh();
    startingPointText();
    clear();
    refresh();
    printw("What do you want to do:");

    mvcolorText(1, 2, 8, "Climb the Tree");
    mvprintw(3, 8, "Investigate the Whisper");

    int ch;
    int countOption = 0;
    while((ch = getch()) != 27 ) {
        if((ch == KEY_DOWN || ch == 'S' || ch == 's') && countOption == 0) {
            mvprintw(2, 8, "Climb the Tree");
            mvcolorText(1, 3, 8, "Investigate the Whisper");
            countOption = 1;
        }
        else if((ch == KEY_UP || ch == 'W' || ch == 'w') && countOption == 1) {
            mvcolorText(1, 2, 8, "Climb the Tree");
            mvprintw(3, 8, "Investigate the Whisper");
            countOption = 0;
        }
        else if (ch == KEY_ENTER || ch == '\n') {
            break;
        }
    }
    clear();
    refresh();
}

void stageOne() {
    curs_set(0);
    refresh();

    startingPoint();
    
    clear();
    refresh();
}