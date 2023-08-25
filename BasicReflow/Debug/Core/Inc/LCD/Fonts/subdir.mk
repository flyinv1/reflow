################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/LCD/Fonts/font12.c \
../Core/Inc/LCD/Fonts/font16.c \
../Core/Inc/LCD/Fonts/font20.c \
../Core/Inc/LCD/Fonts/font24.c \
../Core/Inc/LCD/Fonts/font8.c 

OBJS += \
./Core/Inc/LCD/Fonts/font12.o \
./Core/Inc/LCD/Fonts/font16.o \
./Core/Inc/LCD/Fonts/font20.o \
./Core/Inc/LCD/Fonts/font24.o \
./Core/Inc/LCD/Fonts/font8.o 

C_DEPS += \
./Core/Inc/LCD/Fonts/font12.d \
./Core/Inc/LCD/Fonts/font16.d \
./Core/Inc/LCD/Fonts/font20.d \
./Core/Inc/LCD/Fonts/font24.d \
./Core/Inc/LCD/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/LCD/Fonts/%.o Core/Inc/LCD/Fonts/%.su Core/Inc/LCD/Fonts/%.cyclo: ../Core/Inc/LCD/Fonts/%.c Core/Inc/LCD/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-LCD-2f-Fonts

clean-Core-2f-Inc-2f-LCD-2f-Fonts:
	-$(RM) ./Core/Inc/LCD/Fonts/font12.cyclo ./Core/Inc/LCD/Fonts/font12.d ./Core/Inc/LCD/Fonts/font12.o ./Core/Inc/LCD/Fonts/font12.su ./Core/Inc/LCD/Fonts/font16.cyclo ./Core/Inc/LCD/Fonts/font16.d ./Core/Inc/LCD/Fonts/font16.o ./Core/Inc/LCD/Fonts/font16.su ./Core/Inc/LCD/Fonts/font20.cyclo ./Core/Inc/LCD/Fonts/font20.d ./Core/Inc/LCD/Fonts/font20.o ./Core/Inc/LCD/Fonts/font20.su ./Core/Inc/LCD/Fonts/font24.cyclo ./Core/Inc/LCD/Fonts/font24.d ./Core/Inc/LCD/Fonts/font24.o ./Core/Inc/LCD/Fonts/font24.su ./Core/Inc/LCD/Fonts/font8.cyclo ./Core/Inc/LCD/Fonts/font8.d ./Core/Inc/LCD/Fonts/font8.o ./Core/Inc/LCD/Fonts/font8.su

.PHONY: clean-Core-2f-Inc-2f-LCD-2f-Fonts

