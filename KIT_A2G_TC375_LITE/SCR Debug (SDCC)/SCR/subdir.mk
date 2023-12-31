################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SCR/CCT_Timer_Basic_Operation.c \
../SCR/CCU_Capture_Mode_0_Config.c \
../SCR/CCU_Capture_Mode_1_Config.c \
../SCR/Duty_Cycle_Calculations.c \
../SCR/IsStandbyMode.c \
../SCR/SCR_ADC_Init.c \
../SCR/SCR_GPIO_Init.c \
../SCR/SCR_Interrupt_Config.c \
../SCR/SCR_RTC_Init.c \
../SCR/Select_Interrupt_Priority.c \
../SCR/Timer_2_Basic_Operations.c \
../SCR/TrigerWakeUpFromStandbyMode.c \
../SCR/main.c 

OBJS += \
./SCR/CCT_Timer_Basic_Operation.o \
./SCR/CCU_Capture_Mode_0_Config.o \
./SCR/CCU_Capture_Mode_1_Config.o \
./SCR/Duty_Cycle_Calculations.o \
./SCR/IsStandbyMode.o \
./SCR/SCR_ADC_Init.o \
./SCR/SCR_GPIO_Init.o \
./SCR/SCR_Interrupt_Config.o \
./SCR/SCR_RTC_Init.o \
./SCR/Select_Interrupt_Priority.o \
./SCR/Timer_2_Basic_Operations.o \
./SCR/TrigerWakeUpFromStandbyMode.o \
./SCR/main.o 


# Each subdirectory must supply rules for building sources it contributes
SCR/%.o: ../SCR/%.c SCR/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --asm-scr -c --model-large -I"C:\Users\La\AURIX-v1.9.20-workspace\KIT_A2G_TC375_LITE\SCR" --std-sdcc99 --nooverlay --no-peep-return --opt-code-speed  "$<" -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-SCR

clean-SCR:
	-$(RM) ./SCR/CCT_Timer_Basic_Operation.o ./SCR/CCU_Capture_Mode_0_Config.o ./SCR/CCU_Capture_Mode_1_Config.o ./SCR/Duty_Cycle_Calculations.o ./SCR/IsStandbyMode.o ./SCR/SCR_ADC_Init.o ./SCR/SCR_GPIO_Init.o ./SCR/SCR_Interrupt_Config.o ./SCR/SCR_RTC_Init.o ./SCR/Select_Interrupt_Priority.o ./SCR/Timer_2_Basic_Operations.o ./SCR/TrigerWakeUpFromStandbyMode.o ./SCR/main.o

.PHONY: clean-SCR

