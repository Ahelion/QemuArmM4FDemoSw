"# QemuArmM4FDemoSw" 


Demo SW to use with QEMU for arm cortex m4f
FPU enables in recent QEMU, so it can be used with this SW.

Software will write and read from the TI(LM3S6965) UART

#tools

compiler: (GNU Arm Embedded Toolchain 9-2020-q2-update) 9.3.1 20200408 (release)
qemu    : QEMU emulator version 4.2.0 (v4.2.0-11797-g2890edc853-dirty)

Eclipse IDE for C/C++ Developers (includes Incubating components)

Version: 2020-06 (4.16.0)
Build id: 20200615-1200

#start in debug wait
qemu-system-arm -S -s -M lm3s811evb -cpu cortex-m4 -m 8K -nographic -kernel notmain.bin

for this also configure eclipse to use the qemu debugger from debug window:

#start directly
qemu-system-arm -M lm3s811evb -cpu cortex-m4 -m 8K -nographic -kernel notmain.bin

#start with TCP
qemu-system-arm -M lm3s811evb -cpu cortex-m4 -m 8K -nographic -kernel notmain.bin  -serial tcp::45456,server,nowait


