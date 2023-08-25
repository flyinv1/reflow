################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/LCD/DEV_Config.c \
../Core/User/LCD/LCD.c 

OBJS += \
./Core/User/LCD/DEV_Config.o \
./Core/User/LCD/LCD.o 

C_DEPS += \
./Core/User/LCD/DEV_Config.d \
./Core/User/LCD/LCD.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/LCD/%.o Core/User/LCD/%.su Core/User/LCD/%.cyclo: ../Core/User/LCD/%.c Core/User/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-LCD

clean-Core-2f-User-2f-LCD:
	-$(RM) ./Core/User/LCD/DEV_Config.cyclo ./Core/User/LCD/DEV_Config.d ./Core/User/LCD/DEV_Config.o ./Core/User/LCD/DEV_Config.su ./Core/User/LCD/LCD.cyclo ./Core/User/LCD/LCD.d ./Core/User/LCD/LCD.o ./Core/User/LCD/LCD.su

.PHONY: clean-Core-2f-User-2f-LCD

