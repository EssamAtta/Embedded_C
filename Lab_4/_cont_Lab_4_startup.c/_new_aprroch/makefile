#prepared by Essam Atta 
CC=arm-none-eabi-
CFLAGS=-mcpu=cortex-m4 -gdwarf-2 -g
INCS=-I . 
LIBS=
SRC= $(wildcard *.c)
OBJ= $(SRC:.c=.o)
As= $(wildcard *.s)
AsOBJ= $(As:.s=.o)
Project_name= TM4C123GH6PM_led_toogle
	

all : $(Project_name).bin
	@echo "========== Target binary build is done ============="

%.o: %.c
	$(CC)as.exe $(CFLAGS) $< -o $@

%.o: %.c
	$(CC)gcc.exe $(CFLAGS)	$(INCS) -c $< -o $@

$(Project_name).elf: $(OBJ) $(AsOBJ)
	$(CC)ld.exe -T linker_script.ld $(LIBS) $(OBJ) -o $@ -Map=Map_file.map
	cp $(Project_name).elf $(Project_name).axf
	$(CC)objdump.exe -D $(Project_name).elf > log.txt

$(Project_name).bin: $(Project_name).elf
	$(CC)objcopy.exe -O binary $<  $@


clean:
	rm -rf *.o *~
	@echo "==========*.o  and . elf  have been succesfully removed=========="

clean_all: 
	rm *.o *.elf *.bin *.map
	@echo "==========*.o .elf and .bin files have been succesfully removed=========="
	
