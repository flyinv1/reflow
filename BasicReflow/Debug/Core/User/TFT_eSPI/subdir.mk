################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/TFT_eSPI/TFT_eSPI.c 

OBJS += \
./Core/User/TFT_eSPI/TFT_eSPI.o 

C_DEPS += \
./Core/User/TFT_eSPI/TFT_eSPI.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/TFT_eSPI/%.o Core/User/TFT_eSPI/%.su Core/User/TFT_eSPI/%.cyclo: ../Core/User/TFT_eSPI/%.c Core/User/TFT_eSPI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-TFT_eSPI

clean-Core-2f-User-2f-TFT_eSPI:
	-$(RM) ./Core/User/TFT_eSPI/TFT_eSPI.cyclo ./Core/User/TFT_eSPI/TFT_eSPI.d ./Core/User/TFT_eSPI/TFT_eSPI.o ./Core/User/TFT_eSPI/TFT_eSPI.su

.PHONY: clean-Core-2f-User-2f-TFT_eSPI

