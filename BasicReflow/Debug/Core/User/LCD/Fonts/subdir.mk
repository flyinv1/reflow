################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/LCD/Fonts/font12.c \
../Core/User/LCD/Fonts/font16.c \
../Core/User/LCD/Fonts/font20.c \
../Core/User/LCD/Fonts/font24.c \
../Core/User/LCD/Fonts/font8.c 

OBJS += \
./Core/User/LCD/Fonts/font12.o \
./Core/User/LCD/Fonts/font16.o \
./Core/User/LCD/Fonts/font20.o \
./Core/User/LCD/Fonts/font24.o \
./Core/User/LCD/Fonts/font8.o 

C_DEPS += \
./Core/User/LCD/Fonts/font12.d \
./Core/User/LCD/Fonts/font16.d \
./Core/User/LCD/Fonts/font20.d \
./Core/User/LCD/Fonts/font24.d \
./Core/User/LCD/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/LCD/Fonts/%.o Core/User/LCD/Fonts/%.su Core/User/LCD/Fonts/%.cyclo: ../Core/User/LCD/Fonts/%.c Core/User/LCD/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-LCD-2f-Fonts

clean-Core-2f-User-2f-LCD-2f-Fonts:
	-$(RM) ./Core/User/LCD/Fonts/font12.cyclo ./Core/User/LCD/Fonts/font12.d ./Core/User/LCD/Fonts/font12.o ./Core/User/LCD/Fonts/font12.su ./Core/User/LCD/Fonts/font16.cyclo ./Core/User/LCD/Fonts/font16.d ./Core/User/LCD/Fonts/font16.o ./Core/User/LCD/Fonts/font16.su ./Core/User/LCD/Fonts/font20.cyclo ./Core/User/LCD/Fonts/font20.d ./Core/User/LCD/Fonts/font20.o ./Core/User/LCD/Fonts/font20.su ./Core/User/LCD/Fonts/font24.cyclo ./Core/User/LCD/Fonts/font24.d ./Core/User/LCD/Fonts/font24.o ./Core/User/LCD/Fonts/font24.su ./Core/User/LCD/Fonts/font8.cyclo ./Core/User/LCD/Fonts/font8.d ./Core/User/LCD/Fonts/font8.o ./Core/User/LCD/Fonts/font8.su

.PHONY: clean-Core-2f-User-2f-LCD-2f-Fonts

