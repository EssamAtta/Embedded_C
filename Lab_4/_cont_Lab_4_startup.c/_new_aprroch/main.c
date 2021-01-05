/* Mc : TM4C123GH6PM
	project_scope:
	- create startup.s 
	- create linker_script.ld  
	- GPIO Portf pin 3 toggle :
	************************************************
	ENABLING GPIO :
	SYSCTL_RCGC2_R Register = 0x00000020
	GPIO_PORTF_DIR_R_BIT_3  = 1
	GPIO_PORTF_DEN_R_BIT_3  = 1
	GPIO_PORTF_DATA_R_BIT_3 = 0/1 (Toogling)
	**************************************************
	- build with make file
*/

#define SYSCTL_RCGC2_R    (*((volatile unsigned long *)0x400FE108))
#define GPIO_PORTF_DATA_R  (*((volatile unsigned long *)0x400253FC))
#define GPIO_PORTF_DIR_R  (*((volatile unsigned long *)0x40025400))
#define GPIO_PORTF_DEN_R (*((volatile unsigned long *)0x4002551C))




int main (void){
// init: 
	volatile unsigned long delay_count;
	SYSCTL_RCGC2_R = 0x00000020;
	for (delay_count=0; delay_count< 200; delay_count++ );
	GPIO_PORTF_DIR_R |= 1<<3;
	GPIO_PORTF_DEN_R |= 1<<3;

	while (1){
		GPIO_PORTF_DATA_R |= 1<<3; 
		for (delay_count=0; delay_count< 200000; delay_count++ );
		GPIO_PORTF_DATA_R &= ~(1<<3);
		for (delay_count=0; delay_count< 200000; delay_count++ );
	}
return 0;
}