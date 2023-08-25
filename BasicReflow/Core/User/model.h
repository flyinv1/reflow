#ifndef __MODEL__
#define __MODEL__

#include <stdint.h>

typedef enum {
    STATE_BOOT,
    STATE_READY,
    STATE_REFLOW,
    STATE_CALIBRATE,
} MACHINE_STATE_TYPE;

typedef struct Model {
    MACHINE_STATE_TYPE machine_state;
    uint32_t t_ms;
    uint32_t t_ms_last;
    uint32_t last_state_time;
    uint32_t t_state;
    float p_gain;
    float I_gain;
    float d_gain;
} Model;

void Model_Init(Model *this);
void Model_Tick(Model *this, uint32_t tick);
void Model_SetState(Model *this, MACHINE_STATE_TYPE new_state);

#endif