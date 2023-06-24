#include "../../headers/startup/introduction.h"
#include <ncurses.h>
#include "../../headers/utility/colorText.h"


void lineOne() {
    printw("A hushed whisper carries through the ancient trees as you awaken in a ");
    colorText(3, "realm unknown");
    printw(". The air is thick with the scent of moss and ");
    colorText(5, "magic");
    printw(", and a soft glow permeates the dense foliage. You feel a tingling sensation, a sign that you have stumbled upon the mystical realm of the ");
    colorText(5, "Enchanted Forest");
    printw(".");
}
void lineTwo() {
    printw("\n\nAs your eyes adjust to the ethereal glow, you realize that memories elude you. How did you find yourself in this ");
    colorText(3, "bewitching place");
    printw("? The secrets of your arrival are hidden, waiting to be ");
    colorText(3, "unveiled");
    printw(".");
}
void lineThree() {
    printw("\n\nIn the heart of this ");
    colorText(5, "enchanting forest");
    printw(" lies your only hope: a frayed and weathered ");
    colorText(4, "map");
    printw(", seemingly left behind by a forgotten ");
    colorText(2, "traveler");
    printw(". Its worn edges reveal the whispers of a path, a path that may lead you back to the world you call home. But be warned, for the ");
    colorText(5, "Enchanted Forest");
    printw(" is not a realm to be traversed without ");
    colorText(6, "caution");
    printw(".");
}
void lineFour() {
    printw("\n\nLegends speak of ");
    colorText(5, "ancient creatures");
    printw(", their eyes gleaming with untold power, lurking within the shadows. ");
    colorText(3, "Mysterious riddles and cunning puzzles");
    printw(" guard the secrets of this realm, testing your mind and spirit. Yet, within this mystic domain, there may also be ");
    colorText(4, "hidden treasures");
    printw(" and ");
    colorText(2, "allies");
    printw(" eager to aid you on your journey.");
}
void lineFive() {
    printw("\n\nSteel your nerves, dear adventurer, for the path ahead is ");
    colorText(6, "treacherous");
    printw(" and brimming with ");
    colorText(5, "enchantment");
    printw(". Unlock the ");
    colorText(3, "mysteries");
    printw(", summon your courage, and navigate the ");
    colorText(6, "twisting trails");
    printw(". With each step, you edge closer to the truth and the ");
    colorText(4, "key");
    printw(" that may unlock your ");
    colorText(1, "escape");
    printw(".");
}
void lineSix() {
    printw("\n\nMay the ");
    colorText(2, "spirits");
    printw(" of the forest guide your way as you embark on this grand odyssey of mind, heart, and spirit. Embrace the unknown, for the tale of the ");
    colorText(5, "Enchanted Forest");
    printw(" is waiting to be woven by your hand.");
}
void lineExec() {
    lineOne();
    getch();
    lineTwo();
    getch();
    lineThree();
    getch();
    lineFour();
    getch();
    lineFive();
    getch();
    lineSix();

    refresh();
    getch();
}

void introduction() {
    lineExec();

    clear();
    refresh();
}