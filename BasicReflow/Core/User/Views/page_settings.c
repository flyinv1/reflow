
#include "../Views/page.h"

#define N_OPTIONS 4

typedef struct Settings {
    int selected;
    int editing;
    int gains[3];
    char options[4][12];
} Settings;

static Settings settings = {
    .selected = 0,
    .gains = { 10, 1, 5 },
    .options = {
        "Back",
        "P Gain",
        "I Gain",
        "D Gain"
    }
};

void Draw_PID_Gain(int ypos, int gain, int highlight) {

    char display_string[6];
    sprintf(display_string, "%3d", gain);

    ST7735_WriteString(
        125,
        ypos,
        display_string,
        FF,
        (highlight) ? THEME_BG : THEME,
        (highlight) ? THEME : THEME_BG
    );
}

void Draw_Settings() {
    for (int i = 0; i < N_OPTIONS; i++) {
        // IF i == 0: write back button.
        ST7735_WriteString(
            MENU_INSET,
            MENU_Y_INSET + i * LINE_HEIGHT,
            settings.options[i],
            FF,
            ((i == settings.selected) && (!settings.editing)) ? THEME_BG : THEME,
            ((i == settings.selected) && (!settings.editing)) ? THEME : THEME_BG
        );
        if (i > 0) Draw_PID_Gain(MENU_Y_INSET + i * LINE_HEIGHT, settings.gains[i - 1], (i == settings.selected) && (settings.editing));
    }
}

void Settings_onShow(View *view) {
    Display_ClearInner();
    Draw_Settings();
}

void Settings_onHide(View *view) {
    settings.selected = 0;
    settings.editing = 0;
}

void Settings_onUpdate(View *view) {

}

void Settings_onClick(View *view) {
    if (settings.selected == 0) View_ShowPage(view, &Page_MainMenu);
    else if ((settings.selected > 0) && (settings.selected < N_OPTIONS)) {
        settings.editing = (settings.editing) ? 0 : 1;
        Draw_Settings();
    }
}

void Settings_onScroll(View *view, int increment) {
    if (settings.editing) {
        if (settings.selected > 0) {
            int gain = settings.gains[settings.selected - 1] - increment;
            settings.gains[settings.selected - 1] = Util_clamp_int(gain, 1, 999);
            Draw_PID_Gain(
                MENU_Y_INSET + settings.selected * LINE_HEIGHT, 
                settings.gains[settings.selected - 1],
                1
            );
        }
    } else {
        int next = Util_clamp_int(settings.selected - increment, 0, N_OPTIONS - 1);
        if (next != settings.selected) {
            settings.selected = next;
            Draw_Settings();
        }
    }
}

PageDelegate Page_Settings = {
    .onShow=&Settings_onShow,
    .onHide=&Settings_onHide,
    .onUpdate=&Settings_onUpdate,
    .onClick=&Settings_onClick,
    .onScroll=&Settings_onScroll
};
