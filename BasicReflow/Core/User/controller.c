#include "controller.h"
#include "./MAX6675/MAX6675.h"

#define RELAY_ON HAL_GPIO_WritePin(REL_CTRL_GPIO_Port, REL_CTRL_Pin, GPIO_PIN_RESET)
#define RELAY_OFF HAL_GPIO_WritePin(REL_CTRL_GPIO_Port, REL_CTRL_Pin, GPIO_PIN_SET)

#define LED_ON HAL_GPIO_WritePin(PC13_GPIO_Port, PC13_Pin, GPIO_PIN_RESET)
#define LED_OFF HAL_GPIO_WritePin(PC13_GPIO_Port, PC13_Pin, GPIO_PIN_SET)


void Controller_Init(Controller* this, Model *model, View *view, Encoder *input_device) {

    // Set base update rate to 50 Hz. This must be greater than the desired display frame rate
    this->update_rate = 50;
    this->input = input_device;
    this->model = model;
    this->view = view;

    /*Setup*/
    Encoder_Init(this->input);
    Model_Init(this->model);
    View_Init(this->view, this, this->model);
    
    RELAY_OFF;
    LED_OFF;
}

void Controller_Main(Controller *this) {
    /*Primary Loop Method*/

    /* tick the model over */
    Model_Tick(this->model, HAL_GetTick());

    /* 
        Check for input events
        ----------------------
    */ 

    // Encoder (scroll event)  
    int scroll = Encoder_Update(
        this->input,
        HAL_GPIO_ReadPin(GPIOB, EN_CLK_Pin),
        HAL_GPIO_ReadPin(GPIOB, EN_DT_Pin)
    );
    if (scroll) View_onScroll(this->view, scroll);

    // Button (click event fires on button release)
    if (this->input->clicked) {
        // Pass the onClick event to the view
        View_onClick(this->view);
        // Clear encoder button flag
        Encoder_Clear(this->input);
    }

    View_Update(this->view, this->model);

    // Low speed sensor loop!
    // if (HAL_GetTick() - this->sensor_tick > this->sensor_interval) {
    //     // this->t1 = MAX6675_Read(GPIOB, TC1_CS_Pin, 1.0, 0.0);
    //     // this->t2 = MAX6675_Read(GPIOB, TC2_CS_Pin, 1.0, 0.0);
    //     this->sensor_tick = HAL_GetTick();
    // }

}

void Controller_ISRHandler(Controller *this, uint16_t pin) {
    // Interrupt called on encoder switch rising edge
    if (pin == EN_SW_Pin) Encoder_SwitchISR(this->input);
}

int Controller_Calibrate_High(Controller *controller) {

}

int Controller_Calibrate_Low(Controller *controller) {

}