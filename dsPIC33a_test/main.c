/** 
 * @file main.c
 * @author Carvalhaes
 * @date 2025-02-16
 * @brief Função main
 *
 * Este ficheiro define a função main.
 */

 #include "config.h"
 #include <xc.h>
 #include "clock.h"
 #include "timer.h"
 #include "gpio.h"

 /**
 * @brief Função main do programa.
 *
 * Chama as funções de inicialização.   \n
 * Implementa ciclo infinito de on/off do RB1 (a simular um led).
 */
int main(){

    clockInit();
    timer1_Init();
    gpio_init();

    while(1) {
        LATBbits.LATB1 = 1;                 //RB1 output high
        timer1_Delay_ms(1000);          //delay 1s
        LATBbits.LATB1 = 0;                 //RB1 output low
        timer1_Delay_ms(1000);          //delay 1s
    }

    return 0;
};
