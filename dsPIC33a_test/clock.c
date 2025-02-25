/** 
 * @file clock.c
 * @author Carvalhaes
 * @date 2025-02-19
 * @brief Configuração do clock do CPU
 *
 * Configuração do clock do sistema para 200MHz com o clock generator 1
 * FRC(8MHz) -> PLL1 Fout(200MHz) -> CLKGEN1 (CLKDIV1 = no divider) -> SYSCLK(200MHz)
 */

 #include <xc.h>
 #include "clock.h"

 /** ##Função para inicialização do clock */
 void clockInit() {
    /** ###PLL1
    *   FPLLo = FPLLi*(PLLFBDIV/(PLLPRE*POSTDIV1*POSTDIV2))   &&  POSTDIV1 > POSTDIV2        \n
    *   200MHz = 8 * (50 / (1 * 2 * 1))
    */
    PLL1DIVbits.PLLFBDIV = 50;
    PLL1DIVbits.PLLPRE = 1;
    PLL1DIVbits.POSTDIV1 = 2;
    PLL1DIVbits.POSTDIV2 = 1;

    /* Enable PLL input and Feedback Divider (PLLFBDIV) update */
    PLL1CONbits.PLLSWEN = 1;
    while(PLL1CONbits.PLLSWEN);                     //esperar que a atualização do PLLSWEN seja concluída

    /* Enable PLL Output Divider update */
    PLL1CONbits.FOUTSWEN = 1;
    while(PLL1CONbits.FOUTSWEN);                    //esperar que a atualização do FOUTSWEN seja concluída

    /* Seleção do Input Clock do PLL1 */
    PLL1CONbits.NOSC = 1;                           //1-FRC, 2-BFRC, 3-POSC   (Tabela 12-4 do datasheet)

    /* Enable clock switching (mudar para o clock definido no NOSC) */
    PLL1CONbits.OSWEN = 1;
    while(PLL1CONbits.OSWEN);                       //esperar que a atualização do OSWEN seja concluída

    while(!OSCCTRLbits.PLL1RDY);                    //esperar que o PLL1 esteja pronto

    PLL1CONbits.ON = 1;                             //ligar o PLL1
    PLL1CONbits.OE = 1;                             //ligar o PLL1 output

    
    CLK1CONbits.ON = 1;                             //Ligar o CLK1
    CLK1CONbits.OE = 1;                             //Clock output para um device pin

    CLK1CONbits.BOSC = 2;                           //Definir um backup clock, caso o primeiro falhe (Tabela 12-3 do datasheet)
    CLK1CONbits.FSCMEN = 1;                         //Caso oscilador falhe (PLL1Fout) o FSCM (Fail Safe Clock Monitor) Ativa a flag PLLFAIL e muda o clock para o backup clock (nest caso BFRC).

    CLK1CONbits.NOSC = 5;                           //Definir o clock de input do CLKGEN1 como o Fout do PLL1 (Tabela 12-3 do datasheet)

    CLK1CONbits.OSWEN = 1;                          //Enable clock switching (mudar para o clock definido no NOSC)
    while(CLK1CONbits.OSWEN);                       //Esperar que a atualização do OSWEN seja concluída
 }