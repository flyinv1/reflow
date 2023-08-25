
#include "encoder.h"

// Grey code - provides a low noise method of decoding state transitions
// of encoder brushes, much lower noise than manually comparing state w debounce.
static int grey_code[] = { 0, 1, -1, 0, -1, 0, 0, 1, 1, 0, 0, -1, 0, -1, 1, 0 };

void Encoder_Init(Encoder *this) {
    // Do nothing for now... Should be initialized to 0s by default which is ok
    this->debounce_timer = 0;
    this->clicked = 0;
    this->psns = 0;
    this->store = 0;
}

int Encoder_Update(Encoder *this, int clk, int dt) {
    this->psns <<= 2;
    if (clk) this->psns |= 0x02;
    if (dt) this->psns |= 0x01;
    this->psns &= 0x0f;
    if (grey_code[this->psns]) {
        this->store <<= 4;
        this->store |= this->psns;
        if ((this->store & 0xff) == 0x2b) return -1;
        if ((this->store & 0xff) == 0x17) return 1;
    }
    return 0;
}

void Encoder_Clear(Encoder *this) {
    this->clicked = 0;
}

void Encoder_Reset(Encoder *this) {
    Encoder_Init(this);
}

void Encoder_SwitchISR(Encoder *this) {
    // Call this bad boy in the ISR
    if ((HAL_GetTick() - this->debounce_timer) > 10) {
        this->debounce_timer = HAL_GetTick(); 
        this->clicked = 1;
    }
}


