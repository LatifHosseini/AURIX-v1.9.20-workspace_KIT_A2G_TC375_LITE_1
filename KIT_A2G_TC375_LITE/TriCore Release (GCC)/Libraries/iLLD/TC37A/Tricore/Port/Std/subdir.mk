################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC37A/Tricore/Port/Std/IfxPort.c 

C_DEPS += \
./Libraries/iLLD/TC37A/Tricore/Port/Std/IfxPort.d 

OBJS += \
./Libraries/iLLD/TC37A/Tricore/Port/Std/IfxPort.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC37A/Tricore/Port/Std/%.o: ../Libraries/iLLD/TC37A/Tricore/Port/Std/%.c Libraries/iLLD/TC37A/Tricore/Port/Std/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/La/AURIX-v1.9.20-workspace/KIT_A2G_TC375_LITE/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Port-2f-Std

clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Port-2f-Std:
	-$(RM) ./Libraries/iLLD/TC37A/Tricore/Port/Std/IfxPort.d ./Libraries/iLLD/TC37A/Tricore/Port/Std/IfxPort.o

.PHONY: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Port-2f-Std

