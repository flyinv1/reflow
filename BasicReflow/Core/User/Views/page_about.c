
#include "../Views/page.h"

void About_onShow(View *view) {
    Display_ClearInner();
    ST7735_WriteString(MENU_INSET, MENU_Y_INSET, "Back", FF, THEME_BG, THEME);
    ST7735_WriteString(MENU_INSET, MENU_Y_INSET + LINE_HEIGHT, "V0.1.0", FF, THEME, THEME_BG);
    ST7735_WriteString(MENU_INSET, MENU_Y_INSET + 2 * LINE_HEIGHT, "(C) M Vredevoogd", FF, THEME, THEME_BG);
    ST7735_WriteString(MENU_INSET, MENU_Y_INSET + 3 * LINE_HEIGHT, "2023", FF, THEME, THEME_BG);
}

void About_onHide(View *view) {
    //pass
}

void About_onUpdate(View *view) {
    //pass
}

void About_onClick(View *view) {
    View_ShowPage(view, &Page_MainMenu);
}

void About_onScroll(View *view, int increment) {
    //pass
}

PageDelegate Page_About = {
    .onShow=&About_onShow,
    .onHide=&About_onHide,
    .onUpdate=&About_onUpdate,
    .onClick=&About_onClick,
    .onScroll=&About_onScroll
};