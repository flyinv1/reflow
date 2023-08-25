
#include "model.h"

void Model_Init(Model *this) {
    this->t_ms = 0;
    this->t_ms_last = 0;
    this->last_state_time = 0;
    this->t_state = 0;
    this->machine_state = STATE_BOOT;
}

void Model_Tick(Model *this, uint32_t tick) {
    this->t_ms_last = this->t_ms;
    this->t_ms = tick;
//    this->t_state = this->t_ms - this->last_state_time;
}

void Model_SetState(Model *this, MACHINE_STATE_TYPE new_state) {
    this->machine_state = new_state;
    this->last_state_time = this->t_ms;
    this->t_state = 0;
}
