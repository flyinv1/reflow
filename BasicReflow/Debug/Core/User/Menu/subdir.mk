################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/Menu/menu.c 

OBJS += \
./Core/User/Menu/menu.o 

C_DEPS += \
./Core/User/Menu/menu.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/Menu/%.o Core/User/Menu/%.su Core/User/Menu/%.cyclo: ../Core/User/Menu/%.c Core/User/Menu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-Menu

clean-Core-2f-User-2f-Menu:
	-$(RM) ./Core/User/Menu/menu.cyclo ./Core/User/Menu/menu.d ./Core/User/Menu/menu.o ./Core/User/Menu/menu.su

.PHONY: clean-Core-2f-User-2f-Menu

