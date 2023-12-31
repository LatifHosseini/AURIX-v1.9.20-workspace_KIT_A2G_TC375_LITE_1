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

COMPILED_SRCS += \
./Blinky_LED.src \
./Cpu0_Main.src \
./Cpu1_Main.src \
./Cpu2_Main.src \
./GTM_TOM_PWM.src \
./SCR.src \
./SCR_AURIX_TC3x.src 

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
%.src: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/La/AURIX-v1.9.20-workspace/KIT_A2G_TC375_LITE/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

Blinky_LED.o: ./Blinky_LED.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Cpu0_Main.o: ./Cpu0_Main.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Cpu1_Main.o: ./Cpu1_Main.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Cpu2_Main.o: ./Cpu2_Main.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

GTM_TOM_PWM.o: ./GTM_TOM_PWM.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

SCR.o: ./SCR.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

SCR_AURIX_TC3x.o: ./SCR_AURIX_TC3x.src subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean--2e-

clean--2e-:
	-$(RM) ./Blinky_LED.d ./Blinky_LED.o ./Blinky_LED.src ./Cpu0_Main.d ./Cpu0_Main.o ./Cpu0_Main.src ./Cpu1_Main.d ./Cpu1_Main.o ./Cpu1_Main.src ./Cpu2_Main.d ./Cpu2_Main.o ./Cpu2_Main.src ./GTM_TOM_PWM.d ./GTM_TOM_PWM.o ./GTM_TOM_PWM.src ./SCR.d ./SCR.o ./SCR.src ./SCR_AURIX_TC3x.d ./SCR_AURIX_TC3x.o ./SCR_AURIX_TC3x.src

.PHONY: clean--2e-

