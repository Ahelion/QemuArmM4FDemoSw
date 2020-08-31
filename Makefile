
ARMGNU = arm-none-eabi

COPS = -g -Wall -Werror -O2 -nostdlib -nostartfiles -ffreestanding  -mcpu=cortex-m4 -mhard-float -mfpu=vfpv4-d16
INC = -Idriverlib -Iinc  -I.
DEFS = -Dgcc  -DPART_LM3S6965
BUILD_DIR=./build
OBJ_DIR=./obj

SRC=   startup_gcc.c uart_polled.c

OBJS :=$(SRC:%.c=%.o)

$(shell mkdir -p $(BUILD_DIR))
$(shell mkdir -p $(OBJ_DIR))


all : notmain.bin

clean:
	rm -f *.o
	rm -f *.d    
	rm -R -f $(BUILD_DIR) 
	rm -R -f $(OBJ_DIR)



$(OBJS): $(SRC)
	$(ARMGNU)-gcc $(COPS) $(INCS) $(DEFS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$*.c"
    
notmain.bin :  $(OBJS)
	$(ARMGNU)-ld -o $(BUILD_DIR)/notmain.elf -T project.ld  $(OBJS) -L.\driverlib -llibrary  
	$(ARMGNU)-objdump -D $(BUILD_DIR)/notmain.elf > $(BUILD_DIR)/notmain.list
	$(ARMGNU)-objcopy $(BUILD_DIR)/notmain.elf $(BUILD_DIR)/notmain.bin -O binary


