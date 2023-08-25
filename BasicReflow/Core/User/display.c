
#include "display.h"

void Display_DrawFrame(void) {
    // Inset border
    ST7735_LineRect(
        BORDER_INSET, 
        BORDER_INSET, 
        ST7735_WIDTH - BORDER_INSET,
        ST7735_HEIGHT - BORDER_INSET,
        THEME
    );
    
    // Header
    ST7735_HLine(BORDER_INSET, ST7735_WIDTH - BORDER_INSET, 24, THEME);
    ST7735_WriteString(MENU_INSET, BORDER_INSET + 4, "BasicReflow V01", Font_7x10, THEME, THEME_BG);
}

void Display_Clear(void) {
    ST7735_FillScreenFast(ST7735_BLACK);
}

void Display_ClearInner(void) {
    ST7735_FillRectangleFast(
        BORDER_INSET + 1, 
        MENU_Y_INSET,
        MENU_WIDTH, 
        MENU_HEIGHT, 
        THEME_BG
    );
}