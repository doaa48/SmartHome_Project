################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/External_Interrupt_Driver/External_Interrupt_Program.c 

OBJS += \
./MCAL/External_Interrupt_Driver/External_Interrupt_Program.o 

C_DEPS += \
./MCAL/External_Interrupt_Driver/External_Interrupt_Program.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/External_Interrupt_Driver/%.o: ../MCAL/External_Interrupt_Driver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


