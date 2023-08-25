#ifndef __VIEW_TYPES__
#define __VIEW_TYPES__

#include <stdint.h>
#include <stdio.h>

#include "../st7735/st7735.h"
#include "../display.h"
#include "../util.h"


// forward declare view types
typedef struct View View;
typedef struct PageDelegate PageDelegate;

typedef void (*onShowHandle)(View *view);
typedef void (*onHideHandle)(View *view);
typedef void (*onUpdateHandle)(View *view);
typedef void (*onClickHandle)(View *view);
typedef void (*onScrollHandle)(View *view, int increment);

struct PageDelegate {
    onShowHandle onShow;
    onHideHandle onHide;
    onUpdateHandle onUpdate;
    onClickHandle onClick;
    onScrollHandle onScroll;
};

// Forward declare page handler
void View_ShowPage(View *view, PageDelegate *page);

extern PageDelegate Page_MainMenu;
extern PageDelegate Page_Settings;
// extern PageDelegate Page_ReflowSetup;
extern PageDelegate Page_About;

#endif