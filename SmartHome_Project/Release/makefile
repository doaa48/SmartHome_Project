################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include MCAL/UART_Driver/subdir.mk
-include MCAL/Timer_Driver/subdir.mk
-include MCAL/PORT_Driver/subdir.mk
-include MCAL/GIE_Driver/subdir.mk
-include MCAL/External_Interrupt_Driver/subdir.mk
-include MCAL/DIO_Driver/subdir.mk
-include MCAL/ADC_Driver/subdir.mk
-include HAL/ServoMotor_Handler/subdir.mk
-include HAL/LM35_Module/subdir.mk
-include HAL/LED_Module/subdir.mk
-include HAL/LCD_Module/subdir.mk
-include HAL/Keypad_Module/subdir.mk
-include HAL/DC_MOTOR/subdir.mk
-include APP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
SmartHome_Project.lss \

FLASH_IMAGE += \
SmartHome_Project.hex \

EEPROM_IMAGE += \
SmartHome_Project.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: SmartHome_Project.elf secondary-outputs

# Tool invocations
SmartHome_Project.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,SmartHome_Project.map -mmcu=atmega32 -o "SmartHome_Project.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

SmartHome_Project.lss: SmartHome_Project.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S SmartHome_Project.elf  >"SmartHome_Project.lss"
	@echo 'Finished building: $@'
	@echo ' '

SmartHome_Project.hex: SmartHome_Project.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex SmartHome_Project.elf  "SmartHome_Project.hex"
	@echo 'Finished building: $@'
	@echo ' '

SmartHome_Project.eep: SmartHome_Project.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex SmartHome_Project.elf  "SmartHome_Project.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: SmartHome_Project.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 SmartHome_Project.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) SmartHome_Project.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
