#ifndef __ENCODER__
#define __ENCODER__

#include "gpio.h" // Make sure HAL is available

typedef struct Encoder {
    int debounce_timer;
    int clicked;
    int psns;
    int store;
} Encoder;

void Encoder_Init(Encoder *this);
int Encoder_Update(Encoder *this, int clk, int dt);
void Encoder_Clear(Encoder *this);
void Encoder_Reset(Encoder *this);
void Encoder_SwitchISR(Encoder *this);

#endif