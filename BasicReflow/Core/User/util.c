
#include "util.h"

int Util_clamp_int(int x, int min, int max) {
    int r = x;
    r = (r < min) ? min : r;
    r = (r > max) ? max : r;
    return r;
}

float Util_clamp_float(float x, float min, float max) {
    float r = x;
    r = (r < min) ? min : r;
    r = (r > max) ? max : r;
    return r;
} 