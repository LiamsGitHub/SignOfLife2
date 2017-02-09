# Project Name
NAME=SignOfLife2

################### File Locations #####################
ROOTDIR = ~/Eclipse
FOUNDATION = $(ROOTDIR)/WorkspaceJan16/Foundation
TOOLS = $(ROOTDIR)/gcc-arm-none-eabi-5_2-2015q4/bin/

CC=		$(TOOLS)arm-none-eabi-gcc
NM =	$(TOOLS)arm-none-eabi-nm			# generate symbol table
OD=		$(TOOLS)arm-none-eabi-objdump
AS =	$(TOOLS)arm-none-eabi-as
SZ =	$(TOOLS)arm-none-eabi-size
OC =	$(TOOLS)arm-none-eabi-objcopy

# Other Stuff
ODFLAGS = -d -t

################### Build Steps #####################

all:
	$(CC) -v -mcpu=cortex-m3 -mthumb -g -nostartfiles -T $(FOUNDATION)/STM32F100C8.ld  main.c  StartUp_simple.S -o $(NAME).elf
	#$(CC) -v -mcpu=cortex-m3 -mthumb -g -nostartfiles -T $(FOUNDATION)/STM32F100C8.ld  main.c  $(FOUNDATION)/STM32F100C8startup.S -o $(NAME).elf
	$(NM) $(NAME).elf
	
	@ echo " "	
	@ echo "List file generation:"
	$(OD) $(ODFLAGS) $(NAME).elf > $(NAME).lst
		
	@ echo " "
	@ echo "Executable size:"
	$(SZ) $(NAME).elf
	
	@ echo " "
	@ echo "OBJDUMP:"
	$(OD) $(ODFLAGS) $(NAME).elf

clean:
	@ echo "Clean up"
	/bin/rm -f *.o *.elf *.lst
	

	
	