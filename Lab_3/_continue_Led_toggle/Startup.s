/* Interrupt vector 
 copy Data from ROM to RAM 
 Sart SRAM 0x200000000
 Init Data Area
 Init Stack 
 reset section and main call 
=======STARTUP_CORTEX_M3=======
*/



/*SRAM 0x20000000*/
.section .vectors
.word 0x20001000 				/*stack_top*/
.word _reset					/*RESET*/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/
.word Vector_handler			/**/


.section .text

_reset: 
		bl main
		b .

.thumb_func

Vector_handler:
		b _reset



stop: 	b  stop 
