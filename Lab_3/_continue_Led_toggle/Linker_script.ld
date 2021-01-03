MEMORY
{
	
	flash(rx) :  ORIGIN = 0x00000000, LENGTH = 128k
	sram (rwx):  ORIGIN = 0x20000000, LENGTH = 20M
}

SECTIONS
{

	.text : {
			*(.vectors*)
			*(.text*)
			*(.rodata)

	}> flash
	.data : {
			*(.data)
	}> flash 
	.bss : {
			*(.bss)
	}> sram

}