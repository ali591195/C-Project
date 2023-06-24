cmake_minimum_required(VERSION 3.26.4)
project(LostInTheEnchantedForest)

# Add your source files
add_executable(program 
    "main.c" "./modules/sources/utility/clearScreen.c" 
    "./modules/sources/startup/start.c" 
    "./modules/sources/startup/introduction.c" 
    "./modules/sources/utility/colorText.c" 
    "./modules/sources/stages/stageOne.c"
)

# Specify the path to the ncurses library
set(CURSESW_INCLUDE_PATH "C:/msys64/mingw64/include/ncursesw")
set(CURSES_LIBRARY_PATH "C:/msys64/mingw64/lib")

# Link against the ncurses library
target_include_directories(program PRIVATE ${CURSESW_INCLUDE_PATH})
target_link_libraries(program PRIVATE ${CURSES_LIBRARY_PATH}/libncursesw.dll.a)