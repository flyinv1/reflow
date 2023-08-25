################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User/Views/page_about.c \
../Core/User/Views/page_menu.c \
../Core/User/Views/page_reflow.c \
../Core/User/Views/page_settings.c 

OBJS += \
./Core/User/Views/page_about.o \
./Core/User/Views/page_menu.o \
./Core/User/Views/page_reflow.o \
./Core/User/Views/page_settings.o 

C_DEPS += \
./Core/User/Views/page_about.d \
./Core/User/Views/page_menu.d \
./Core/User/Views/page_reflow.d \
./Core/User/Views/page_settings.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User/Views/%.o Core/User/Views/%.su Core/User/Views/%.cyclo: ../Core/User/Views/%.c Core/User/Views/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User-2f-Views

clean-Core-2f-User-2f-Views:
	-$(RM) ./Core/User/Views/page_about.cyclo ./Core/User/Views/page_about.d ./Core/User/Views/page_about.o ./Core/User/Views/page_about.su ./Core/User/Views/page_menu.cyclo ./Core/User/Views/page_menu.d ./Core/User/Views/page_menu.o ./Core/User/Views/page_menu.su ./Core/User/Views/page_reflow.cyclo ./Core/User/Views/page_reflow.d ./Core/User/Views/page_reflow.o ./Core/User/Views/page_reflow.su ./Core/User/Views/page_settings.cyclo ./Core/User/Views/page_settings.d ./Core/User/Views/page_settings.o ./Core/User/Views/page_settings.su

.PHONY: clean-Core-2f-User-2f-Views

