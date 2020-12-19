/* 	LAB 2
startup.s, linkerscript, c code files, makefile
crosstoolchain and Mc-Emulator (QEMU)
create uart.c 
defining function to display mssg over UART 
Register UARTDR 0x101F1000 with offset 0x0
	LAB 2 */

#include "uart.h" // function prototype 

#define UART0DR *((volatile unsigned int * const)((unsigned int *) 0x101f1000)) // R/W Register

void Uart_Send_String (unsigned char * P_tx_string)
{
	while(*P_tx_string != '\0')
	{
		UART0DR = (unsigned int)(* P_tx_string);
		P_tx_string ++; 
	}
}