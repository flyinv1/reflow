
#include "MAX6675.h"

float MAX6675_Read(GPIO_TypeDef *gpio_bus, uint16_t cs_pin, float a, float b) {
    // Get urself 2 bytes to eat.
    uint8_t buff[2];
    
    // Set cs low, ensure the pins are configured correctly   
    HAL_GPIO_WritePin(gpio_bus, cs_pin, GPIO_PIN_SET);

    // HAL_SPI_Transmit(&MAX6675_SPI_PORT, &buff, 2, 1);
    HAL_SPI_Receive(&MAX6675_SPI_PORT, buff, 1, HAL_MAX_DELAY);
    
    HAL_GPIO_WritePin(gpio_bus, cs_pin, GPIO_PIN_RESET);

    uint16_t t = buff[0] << 8 | buff[0];
    
//    if (t & 0x4) { return 0.0; };

    t = t >> 3; // shift out those darn tootin not doing nothin bits.

    float celsius = ((float)t) * MAX6675_TMAX / MAX6675_RESOLUTION; 

    return a * celsius + b;
}
