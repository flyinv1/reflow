#ifndef __VIEW__
#define __VIEW__

#include "model.h"


typedef struct Controller Controller;
typedef struct PageDelegate PageDelegate;

typedef struct View {
    Controller *controller;
    PageDelegate *page;
} View;

void View_Init(View *this, Controller *controller, Model *model);
void View_Update(View *this, Model *model);
void View_onClick(View *this);
void View_onScroll(View *this, int increment);

#endif
