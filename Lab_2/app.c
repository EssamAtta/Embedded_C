/* 	LAB 2
startup.s, linkerscript, c code files, makefile
crosstoolchain and Mc-Emulator (QEMU)
app.c 
LAB 2 */
#include "uart.h"
const int x = 1;
unsigned char string_buffer [100] = "learn in depth: <Essam> ";

void main(void)
{
	Uart_Send_String(string_buffer);
}