################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.c 

C_DEPS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.d 

OBJS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/%.o: ../Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/%.c Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/La/AURIX-v1.9.20-workspace/KIT_A2G_TC375_LITE/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Gtm-2f-Tom-2f-Pwm

clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Gtm-2f-Tom-2f-Pwm:
	-$(RM) ./Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.d ./Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.o

.PHONY: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Gtm-2f-Tom-2f-Pwm

