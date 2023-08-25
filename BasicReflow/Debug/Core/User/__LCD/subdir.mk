################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/__LCD/st7735.c \
../Core/User/__LCD/st7735_reg.c 

OBJS += \
./Core/User/__LCD/st7735.o \
./Core/User/__LCD/st7735_reg.o 

C_DEPS += \
./Core/User/__LCD/st7735.d \
./Core/User/__LCD/st7735_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/__LCD/%.o Core/User/__LCD/%.su Core/User/__LCD/%.cyclo: ../Core/User/__LCD/%.c Core/User/__LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-__LCD

clean-Core-2f-User-2f-__LCD:
	-$(RM) ./Core/User/__LCD/st7735.cyclo ./Core/User/__LCD/st7735.d ./Core/User/__LCD/st7735.o ./Core/User/__LCD/st7735.su ./Core/User/__LCD/st7735_reg.cyclo ./Core/User/__LCD/st7735_reg.d ./Core/User/__LCD/st7735_reg.o ./Core/User/__LCD/st7735_reg.su

.PHONY: clean-Core-2f-User-2f-__LCD

