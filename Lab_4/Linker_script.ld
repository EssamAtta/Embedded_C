MEMORY
{
	
	flash(rx) :  ORIGIN = 0x08000000, LENGTH = 128k
	sram (rwx):  ORIGIN = 0x20000000, LENGTH = 20M
}

SECTIONS
{

	.text : 
			{
			*(.vectors*)
			*(.text*)
			*(.rodata)
			_E_text = .;
			}> flash

	.data : 
			{
			_S_DATA = .;
			*(.data)
			_E_DATA = .;
			}> sram AT > flash

	.bss : 
			{
			_S_bss = .;
			*(.bss*)
			.= ALIGN(4);
			_E_bss = .;
			.= ALIGN(4);
			.=.+0x1000 ;
			_stack_top = .;
			}> sram

}