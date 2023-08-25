
#include <stdio.h>
#include "view.h"
#include "gpio.h"

#include "display.h"
#include "./st7735/st7735.h"
#include "./Views/page.h" 

// LCD pin macros
#define LCD_BL_0    HAL_GPIO_WritePin(GPIOA, LCD_BL_Pin, GPIO_PIN_SET)
#define LCD_BL_1    HAL_GPIO_WritePin(GPIOA, LCD_BL_Pin, GPIO_PIN_RESET)
#define LCD_DC_0    HAL_GPIO_WritePin(GPIOB, LCD_DC_Pin, GPIO_PIN_SET)
#define LCD_DC_1    HAL_GPIO_WritePin(GPIOB, LCD_DC_Pin, GPIO_PIN_RESET)

/** PUBLIC METHODS **/

void View_Init(View *this, Controller *controller, Model *model) {

    // Use 24 as the initial frame rate
    this->controller = controller;
    this->page = &Page_MainMenu;

    // Setup the screen
    ST7735_Init();
    Display_Clear();
    Display_DrawFrame();
    LCD_BL_0; // Turn backlight on

    // Show the current page
    this->page->onShow(this);
}

void View_ShowPage(View *this, PageDelegate *page) {
    // Call the onHide handler for the previous page
    this->page->onHide(this);
    this->page = page;
    this->page->onShow(this);
}

void View_Update(View *this, Model *model) {
    this->page->onUpdate(this);
}

void View_onClick(View *this) {
    this->page->onClick(this);
}

void View_onScroll(View *this, int increment) {
    this->page->onScroll(this, increment);
}

