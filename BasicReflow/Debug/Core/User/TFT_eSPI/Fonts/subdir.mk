################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/TFT_eSPI/Fonts/Font16.c \
../Core/User/TFT_eSPI/Fonts/Font32rle.c \
../Core/User/TFT_eSPI/Fonts/Font64rle.c \
../Core/User/TFT_eSPI/Fonts/Font72rle.c \
../Core/User/TFT_eSPI/Fonts/Font72x53rle.c \
../Core/User/TFT_eSPI/Fonts/Font7srle.c \
../Core/User/TFT_eSPI/Fonts/glcdfont.c 

OBJS += \
./Core/User/TFT_eSPI/Fonts/Font16.o \
./Core/User/TFT_eSPI/Fonts/Font32rle.o \
./Core/User/TFT_eSPI/Fonts/Font64rle.o \
./Core/User/TFT_eSPI/Fonts/Font72rle.o \
./Core/User/TFT_eSPI/Fonts/Font72x53rle.o \
./Core/User/TFT_eSPI/Fonts/Font7srle.o \
./Core/User/TFT_eSPI/Fonts/glcdfont.o 

C_DEPS += \
./Core/User/TFT_eSPI/Fonts/Font16.d \
./Core/User/TFT_eSPI/Fonts/Font32rle.d \
./Core/User/TFT_eSPI/Fonts/Font64rle.d \
./Core/User/TFT_eSPI/Fonts/Font72rle.d \
./Core/User/TFT_eSPI/Fonts/Font72x53rle.d \
./Core/User/TFT_eSPI/Fonts/Font7srle.d \
./Core/User/TFT_eSPI/Fonts/glcdfont.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/TFT_eSPI/Fonts/%.o Core/User/TFT_eSPI/Fonts/%.su Core/User/TFT_eSPI/Fonts/%.cyclo: ../Core/User/TFT_eSPI/Fonts/%.c Core/User/TFT_eSPI/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-TFT_eSPI-2f-Fonts

clean-Core-2f-User-2f-TFT_eSPI-2f-Fonts:
	-$(RM) ./Core/User/TFT_eSPI/Fonts/Font16.cyclo ./Core/User/TFT_eSPI/Fonts/Font16.d ./Core/User/TFT_eSPI/Fonts/Font16.o ./Core/User/TFT_eSPI/Fonts/Font16.su ./Core/User/TFT_eSPI/Fonts/Font32rle.cyclo ./Core/User/TFT_eSPI/Fonts/Font32rle.d ./Core/User/TFT_eSPI/Fonts/Font32rle.o ./Core/User/TFT_eSPI/Fonts/Font32rle.su ./Core/User/TFT_eSPI/Fonts/Font64rle.cyclo ./Core/User/TFT_eSPI/Fonts/Font64rle.d ./Core/User/TFT_eSPI/Fonts/Font64rle.o ./Core/User/TFT_eSPI/Fonts/Font64rle.su ./Core/User/TFT_eSPI/Fonts/Font72rle.cyclo ./Core/User/TFT_eSPI/Fonts/Font72rle.d ./Core/User/TFT_eSPI/Fonts/Font72rle.o ./Core/User/TFT_eSPI/Fonts/Font72rle.su ./Core/User/TFT_eSPI/Fonts/Font72x53rle.cyclo ./Core/User/TFT_eSPI/Fonts/Font72x53rle.d ./Core/User/TFT_eSPI/Fonts/Font72x53rle.o ./Core/User/TFT_eSPI/Fonts/Font72x53rle.su ./Core/User/TFT_eSPI/Fonts/Font7srle.cyclo ./Core/User/TFT_eSPI/Fonts/Font7srle.d ./Core/User/TFT_eSPI/Fonts/Font7srle.o ./Core/User/TFT_eSPI/Fonts/Font7srle.su ./Core/User/TFT_eSPI/Fonts/glcdfont.cyclo ./Core/User/TFT_eSPI/Fonts/glcdfont.d ./Core/User/TFT_eSPI/Fonts/glcdfont.o ./Core/User/TFT_eSPI/Fonts/glcdfont.su

.PHONY: clean-Core-2f-User-2f-TFT_eSPI-2f-Fonts

