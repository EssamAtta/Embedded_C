/*Lab2
//Linkerscript 
//vma is specify relocatablesection address in run-time located
//Lma is specify relocatablesection address in load-time located
/>(vma)   AT>(lma)
*/


ENTRY(reset)
MEMORY
{
	
	Mem (rwx)  : ORIGIN = 0x00000000, LENGTH = 64M
}

SECTIONS
{
. = 0x10000 ;
	.startup . :
	{
		startup.o(.text)
	}> Mem
	.text :
	{
		*(.text) *(.rodata)
	}> Mem
	.data :
	{
		*(.data)
	}> Mem
	.bss :
	{
		*(.bss)	*(COMMON)
	}> Mem
	. = . + 0x1000;
	stack_top = . ;
}