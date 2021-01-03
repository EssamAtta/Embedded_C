#prepared by Essam Atta 
CC=arm-none-eabi-
CFLAGS=-mcpu=arm926ej-s -g
INCS=-I . 
LIBS=
SRC= $(wildcard *.c)
OBJ= $(SRC:.c=.o)
As= $(wildcard *.s)
AsOBJ= $(As:.s=.o)
Project_name=learn_in_depth
	

all : $(Project_name).bin
	@echo "========== Target binary build is done ============="

startup.o: startup.s
	$(CC)as.exe $(CFLAGS) $< -o $@

%.o: %.c
	$(CC)gcc.exe $(CFLAGS)	$(INCS) -c $< -o $@

$(Project_name).elf: $(OBJ) $(AsOBJ)
	$(CC)ld.exe -T linker_script.ld $(LIBS) $(OBJ) -o $@ -Map=Map_file.map

$(Project_name).bin: $(Project_name).elf
	$(CC)objcopy.exe -O binary $<  $@

clean:
	rm -rf *.o *~
	@echo "==========*.o  and . elf  have been succesfully removed=========="

clean_all: 
	rm *.o *.elf *.bin
	@echo "==========*.o .elf and .bin files have been succesfully removed=========="
	
