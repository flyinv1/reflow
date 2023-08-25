#ifndef __DISPLAY__
#define __DISPLAY__

// Just some macros that all menu pages can share

#include "st7735/st7735.h"

// 16bit colors
#define THEME       0xd140
#define THEME_BG    0x000

// layout guides
#define BORDER_INSET 4
#define MENU_INSET 8
#define MENU_Y_INSET 32
#define LINE_HEIGHT 14
#define MENU_HEIGHT ST7735_HEIGHT - (MENU_Y_INSET + MENU_INSET) - 2
#define MENU_WIDTH ST7735_WIDTH - (MENU_INSET * 2) - 2
#define FF Font_7x10

void Display_DrawFrame(void);
void Display_Clear(void);
void Display_ClearInner(void);

#endif