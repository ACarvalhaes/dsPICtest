/** 
 * @file main.c
 * @author Carvalhaes
 * @date 2025-02-16
 * @brief Função main
 *
 * Este ficheiro define a função main, e inclui o config.h que é utilizado para definir os bits de configuração do dsPIC33A. Inclui tambem a biblioteca xc.h que define todos os registos dos periféricos do dsPIC33A.
 */

 #include "config.h"
 #include <xc.h>
 #include "clock.h"
 #include "timer.h"

 /**
 * @brief Função main do programa.
 *
 * Por agora, apenas inicializa chama a função de inicialização do clock.
 */
int main(){

    clockInit();

    return 0;
};
