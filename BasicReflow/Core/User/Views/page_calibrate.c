 
#include "../Views/page.h"

#define N_OPTIONS 3

typedef enum {
    CAL_STANDBY,
    CAL_HOT,
    CAL_COLD
} CAL_STATE_T;

typedef struct Calibrate {
    int selected;
    long timer;
    int calibrating;
    char options[N_OPTIONS][12];
    CAL_STATE_T state;
} Calibrate;

static Calibrate cal = {
    .selected = 0,
    .timer = 0,
    .calibrating = 0,
    .options = {
        "Back",
        "Cal: 0C",
        "Cal: 100C"
    },
    .state = CAL_STANDBY
};

void Draw_Calibrate() {
    if (cal.state == CAL_STANDBY) {
        for (int i = 0; i < N_OPTIONS; i++) {
            ST7735_WriteString(
                MENU_INSET, 
                MENU_Y_INSET + i * MENU_HEIGHT, 
                cal.options[i], 
                FF, 
                (cal.selected == i) ? THEME_BG : THEME, 
                (cal.selected == i) ? THEME : THEME_BG
            );
        }
    }
    else if (cal.state == CAL_COLD) {
        if (cal.calibrating) {

        } else {

        }
    }
}

void Calibration_SaveCal() {

}

void Calibration_GetCurrentCalibration() {

}

void Calibrate_onShow(View *view) {
    Display_ClearInner();
    Draw_Calibrate();
}

void Calibrate_onHide(View *view) {
    cal.selected = 0;
    cal.state = CAL_STANDBY
}

void Calibrate_onUpdate(View *view) {
    // Its me... the calibration monster.
    // I include the calibration business logic in the 
    // view file, because I don't know what I'm doing.
    if (cal.state == CAL_COLD) {

    } else if (cal.state == CAL_HOT) {

    } else {
        // Do nothing
    }
}

void Calibrate_onClick(View *view) {
    if (cal.selected == 0) View_ShowPage(view, Page_MainMenu);
    else if (cal.selected == 1) {
        // Begin calibrating 0C

    }
}

void Calibrate_onScroll(View *view, int increment) {
    cal.selected = Util_clamp_int(cal.selected - increment, 0, N_OPTIONS);
    Draw_Calibrate();
}

PageDelegate Page_Calibrate = {
    .onShow=&Calibrate_onShow,
    .onHide=&Calibrate_onHide,
    .onUpdate=&Calibrate_onUpdate,
    .onClick=&Calibrate_onClick,
    .onScroll=&Calibrate_onScroll
};
