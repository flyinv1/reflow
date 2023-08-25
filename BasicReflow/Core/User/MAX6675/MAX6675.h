#ifndef __MAX6675__
#define __MAX6675__

#include "spi.h"
#include "gpio.h"

#define MAX6675_SPI_PORT hspi1
#define MAX6675_TMIN 0.0
#define MAX6675_TMAX 1023.75
#define MAX6675_RESOLUTION 4096.0

float MAX6675_Read(GPIO_TypeDef *gpio_bus, uint16_t cs_pin, float a, float b);

#endif // __MAX6675__