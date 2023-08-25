################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/MAX6675/MAX6675.c 

OBJS += \
./Core/User/MAX6675/MAX6675.o 

C_DEPS += \
./Core/User/MAX6675/MAX6675.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/MAX6675/%.o Core/User/MAX6675/%.su Core/User/MAX6675/%.cyclo: ../Core/User/MAX6675/%.c Core/User/MAX6675/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-MAX6675

clean-Core-2f-User-2f-MAX6675:
	-$(RM) ./Core/User/MAX6675/MAX6675.cyclo ./Core/User/MAX6675/MAX6675.d ./Core/User/MAX6675/MAX6675.o ./Core/User/MAX6675/MAX6675.su

.PHONY: clean-Core-2f-User-2f-MAX6675

