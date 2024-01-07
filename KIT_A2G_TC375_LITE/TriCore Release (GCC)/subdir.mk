################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Blinky_LED.c \
../Cpu0_Main.c \
../Cpu1_Main.c \
../Cpu2_Main.c \
../GTM_TOM_PWM.c \
../SCR.c \
../SCR_AURIX_TC3x.c 

LSL_SRCS += \
../Lcf_Gnuc_Tricore_Tc.lsl \
../Lcf_Tasking_Tricore_Tc.lsl 

C_DEPS += \
./Blinky_LED.d \
./Cpu0_Main.d \
./Cpu1_Main.d \
./Cpu2_Main.d \
./GTM_TOM_PWM.d \
./SCR.d \
./SCR_AURIX_TC3x.d 

OBJS += \
./Blinky_LED.o \
./Cpu0_Main.o \
./Cpu1_Main.o \
./Cpu2_Main.o \
./GTM_TOM_PWM.o \
./SCR.o \
./SCR_AURIX_TC3x.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/La/AURIX-v1.9.20-workspace/KIT_A2G_TC375_LITE/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean--2e-

clean--2e-:
	-$(RM) ./Blinky_LED.d ./Blinky_LED.o ./Cpu0_Main.d ./Cpu0_Main.o ./Cpu1_Main.d ./Cpu1_Main.o ./Cpu2_Main.d ./Cpu2_Main.o ./GTM_TOM_PWM.d ./GTM_TOM_PWM.o ./SCR.d ./SCR.o ./SCR_AURIX_TC3x.d ./SCR_AURIX_TC3x.o

.PHONY: clean--2e-

