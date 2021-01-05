#include <stdint.h>
#define STACK_Start_SP 0x20001000


void Rest_Handler (void);


void Default_Handler ()
{
	Rest_Handler ();
}

void NMI_Handler(void)__attribute__((weak, alias("Default_Handler")));
void H_fault_Handler(void)__attribute__((weak, alias("Default_Handler")));

// reserve 1024 B located by .BSS through un_int _Array type int of 256 elements (4*256 = 1024)
 static unsigned long stack_top[256]; // static inorder not to be extern used by another file 

 void (* const g_p_fn_Vectors[]) () __attribute__((section(".vectors"))) =
 {
 	(void (*)()) ((unsigned long)stack_top + sizeof(stack_top)),
 	 &Rest_Handler ,
	 &NMI_Handler ,  
	 &H_fault_Handler

 };

extern unsigned int _S_DATA;
extern unsigned int _E_DATA;
extern unsigned int _S_bss;
extern unsigned int _E_bss;
extern unsigned int _E_text;

void Rest_Handler(void){
	//  DATA from flash to RAM

	unsigned int DATA_size = (unsigned char*)&_E_DATA -  (unsigned char*)&_S_DATA ; 
	unsigned char * P_src = (unsigned char*)&_E_text;
	unsigned char * P_dst = (unsigned char*)&_S_DATA;
	for (int i=0 ; i< DATA_size; i++)
	{
		*((unsigned char*)P_dst++) = ((unsigned char*)P_src++); 
	}

	// BSS data init to Zeros
	unsigned int bss_size = (unsigned char *)&_E_bss -(unsigned char *)&_S_bss;
	P_dst = (unsigned char*)&_S_bss;
	for (int i=0; i<bss_size; i++)
	{
		*((unsigned char*)P_dst++) = (unsigned char )0;
	}

	// brache to main 
	main ();
}