################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_uart/mss_uart.c 

OBJS += \
./drivers/mss_uart/mss_uart.o 

C_DEPS += \
./drivers/mss_uart/mss_uart.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_uart/%.o: ../drivers/mss_uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_i2c -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\hal -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\phammel\Desktop\starter\irc\SoftConsole\infr_MSS_CM3_0\infr_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O1 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

