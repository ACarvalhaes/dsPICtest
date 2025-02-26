/** 
 * @file gpio.c
 * @author Carvalhaes
 * @date 2025-02-26
 * @brief Configuração e manipulação dos GPIO
 *
 * Configuração dos GPIO
 */
 
 #include <xc.h>
 #include "gpio.h"

 /**Inicialização das ports */
 void gpio_init() {
    TRISBbits.TRISB1 = 0;       //Definir o portb pin1 como output
    CNPUBbits.CNPUB1 = 1;       //Utiliza pull-up interno
 }