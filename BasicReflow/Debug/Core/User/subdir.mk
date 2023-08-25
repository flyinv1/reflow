################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/controller.c \
../Core/User/display.c \
../Core/User/model.c \
../Core/User/util.c \
../Core/User/view.c 

OBJS += \
./Core/User/controller.o \
./Core/User/display.o \
./Core/User/model.o \
./Core/User/util.o \
./Core/User/view.o 

C_DEPS += \
./Core/User/controller.d \
./Core/User/display.d \
./Core/User/model.d \
./Core/User/util.d \
./Core/User/view.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/%.o Core/User/%.su Core/User/%.cyclo: ../Core/User/%.c Core/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User

clean-Core-2f-User:
	-$(RM) ./Core/User/controller.cyclo ./Core/User/controller.d ./Core/User/controller.o ./Core/User/controller.su ./Core/User/display.cyclo ./Core/User/display.d ./Core/User/display.o ./Core/User/display.su ./Core/User/model.cyclo ./Core/User/model.d ./Core/User/model.o ./Core/User/model.su ./Core/User/util.cyclo ./Core/User/util.d ./Core/User/util.o ./Core/User/util.su ./Core/User/view.cyclo ./Core/User/view.d ./Core/User/view.o ./Core/User/view.su

.PHONY: clean-Core-2f-User

