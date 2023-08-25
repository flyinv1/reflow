
#include "../Views/page.h"

#define N_OPTIONS 5
#define OPTION_LEN 12

#define OPT_REFLOW 0
#define OPT_PREHEAT 1
#define OPT_CALIBRATE 2
#define OPT_GAINS 3
#define OPT_ABOUT 4

typedef struct MainMenu {
    int selected;
    char options[N_OPTIONS][OPTION_LEN];
} MainMenu;

static MainMenu mainmenu = {
    .selected = 0,
    .options = {
        "Reflow",
        "Preheat",
        "Calibrate",
        "Gains",
        "About"
    }
};

void Draw_MainMenu() {
    for (int i = 0; i < N_OPTIONS; i++) {
        ST7735_WriteString(
            MENU_INSET, 
            MENU_Y_INSET + i * LINE_HEIGHT, 
            mainmenu.options[i],
            FF,
            (i == mainmenu.selected) ? THEME_BG : THEME,
            (i == mainmenu.selected) ? THEME : THEME_BG
        );
    };
}

void MainMenu_onShow(View *view) {
    Display_ClearInner();
    Draw_MainMenu();
}

void MainMenu_onHide(View *view) {

} 

void MainMenu_onUpdate(View *view) {

}

void MainMenu_onClick(View *view) {
    switch (mainmenu.selected) {
        case OPT_REFLOW:
            // View_ShowPage(view, &Page_ReflowSetup);
            break;
        case OPT_CALIBRATE:
            // View_ShowPage(view, &Page_Settings);
            break;
        case OPT_GAINS:
            View_ShowPage(view, &Page_Settings);
            break;
        case OPT_ABOUT:
            View_ShowPage(view, &Page_About);
            break;
        default:
            // Do nothin
            break;
    }
}

void MainMenu_onScroll(View *view, int increment) {
    int next = Util_clamp_int(mainmenu.selected - increment, 0, N_OPTIONS - 1);
    if (next != mainmenu.selected) {
        mainmenu.selected = next;
        Draw_MainMenu();
    }
}

PageDelegate Page_MainMenu = {
    .onShow=&MainMenu_onShow,
    .onHide=&MainMenu_onHide,
    .onUpdate=&MainMenu_onUpdate,
    .onClick=&MainMenu_onClick,
    .onScroll=&MainMenu_onScroll
};
