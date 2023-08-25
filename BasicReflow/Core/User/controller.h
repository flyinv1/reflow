#ifndef __CONTROLLER__
#define __CONTROLLER__

#include "view.h"
#include "model.h"
#include "./Encoder/encoder.h"

struct Controller {
    View* view;
    Model* model;
    Encoder* input;
    long update_rate;
    int state;
};

// External interfaces
void Controller_Init(Controller *this, Model *model, View *view, Encoder *input_device);
void Controller_Main(Controller *this);
void Controller_ISRHandler(Controller *this, uint16_t pin);

// Inputs
void Controller_SetPGain(Controller *this, float p);
void Controller_SetIGain(Controller *this, float i);
void Controller_SetDGain(Controller *this, float d);
void Controller_Calibrate(float t_target, float t_actual);

#endif // __CONTROLLER__