/** 
 * @file timer.c
 * @author Carvalhaes
 * @date 2025-02-24
 * @brief Inicialização e configuração do Timer
 */

#include "timer.h"
#include <stdint.h>

#define T1_TICK_PERIOD_ms 0.00128

 /** ##Função de inicialização do Timer1 */
 void timer1_Init() {
    /** ###Timer 1 Initialization                           \n
    *   T1CLK = 200MHz                                      \n
    *   T1 Prescaler = 256                                  \n
    *   Periodo = 1/(200000000/256) = 0.00128ms             \n
    *   Counter max = ((2^32)*0.00128)/1000/60 = 91.6mins ~= 1h31
    */

    T1CON = 0;                  //Reset do registo de controlo do Timer 1

    T1CONbits.ON = 0;           //Timer 1 Off
    T1CONbits.TCS = 0;          //Clock interno
    T1CONbits.TSYNC = 0;        //Async
    T1CONbits.TCKPS = 0b11;     //Prescaler 256
    T1CONbits.TGATE = 0;        //Gated Time Accumulation disabled
    T1CONbits.SIDL = 0;         //Stop in Idle disabled

    PR1 = 0xFFFFFFFF;           //Valor máximo do counter
    TMR1 = 0;                   //Reset do Timer 1

    T1CONbits.ON = 1;           //Timer 1 On
}

void timer1_Delay_ms(uint32_t ms) {
    TMR1 = 0;
    uint32_t targetTime = (uint32_t)(ms/T1_TICK_PERIOD_ms);
    while(TMR1 < targetTime);                                   //Se ms>5497558 (~1h30) timer dá overflow, função unreliable p/ delays longos
}