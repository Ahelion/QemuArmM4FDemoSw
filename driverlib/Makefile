################################################################################
# Automatically-generated file. Do not edit!
################################################################################

COPS=  -mcpu=cortex-m4 -mthumb -O2  -g -nostdlib -nostartfiles -ffreestanding  -mcpu=cortex-m4 -mhard-float -mfpu=vfpv4-d16 -std=gnu11
INCS= -I..\inc -I.  
DEFS= -Dgcc  -DPART_LM3S6965 

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS = \
../adc.c \
../can.c \
../comp.c \
../cpu.c \
../epi.c \
../ethernet.c \
../flash.c \
../gpio.c \
../hibernate.c \
../i2c.c \
../i2s.c \
../interrupt.c \
../mpu.c \
../pwm.c \
../qei.c \
../ssi.c \
../sysctl.c \
../systick.c \
../timer.c \
../uart.c \
../udma.c \
../usb.c \
../watchdog.c 

OBJS = \
./adc.o \
./can.o \
./comp.o \
./cpu.o \
./epi.o \
./ethernet.o \
./flash.o \
./gpio.o \
./hibernate.o \
./i2c.o \
./i2s.o \
./interrupt.o \
./mpu.o \
./pwm.o \
./qei.o \
./ssi.o \
./sysctl.o \
./systick.o \
./timer.o \
./uart.o \
./udma.o \
./usb.o \
./watchdog.o 

C_DEPS += \
./adc.d \
./can.d \
./comp.d \
./cpu.d \
./epi.d \
./ethernet.d \
./flash.d \
./gpio.d \
./hibernate.d \
./i2c.d \
./i2s.d \
./interrupt.d \
./mpu.d \
./pwm.d \
./qei.d \
./ssi.d \
./sysctl.d \
./systick.d \
./timer.d \
./uart.d \
./udma.d \
./usb.d \
./watchdog.d 

all: libdriver.a

clean:
	rm -f *.o
	rm -f *.a
	rm -f *.d
    
# Each subdirectory must supply rules for building sources it contributes
$(OBJS): $(SRC)
	@echo 'Building file: $(@)'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc $(COPS) $(INCS) $(DEFS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$(@:%.o=%.c)"
	@echo 'Finished building: $(@)'
	@echo ' '
    
libdriver.a: $(OBJS)
	@echo 'Building library: libdriver.a'
	arm-none-eabi-ar -cr liblibrary.a $(OBJS)
