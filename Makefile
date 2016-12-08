# foundation branch
######################################
# For STM32F100C8 on Mars Eclipse using the ARM GNU toolchain
# Supports both the assembler and C startup code stubs
# Liam Goudge August 2016
#
# This Makefile imports a generic Makefile at the top of the directory
#
################### Project name and sources #####################

NAME=SignOfLife2
FOUNDATION = /Users/Liam/Eclipse/WorkspaceJan16/Foundation

C_SOURCES = main.c	# Enter list of all the C source files here
S_SOURCES = $(FOUNDATION)/startup2.S 	# Enter list of all the assembler source files here

include $(FOUNDATION)/GenericMakefilev1


################### GNU Flags #####################
# Compiler Flags
CFLAGS = -mcpu=cortex-m3 -mthumb -Wall -g -c -v

# Assembler Flags
ASFLAGS = -mcpu=cortex-m3 -mthumb

# Linker Flags 
LINKER_SCRIPT = $(FOUNDATION)/STM32F100C8_full.ld
LDFLAGS=-mthumb -mcpu=cortex-m3 $(NO_SEMIHOST) -T $(LINKER_SCRIPT) # Use std libraries

# Other Stuff
ODFLAGS = -h --syms -S
REMOVE = rm -f

	

