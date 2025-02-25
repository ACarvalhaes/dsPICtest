/** 
 * @file timer.h
 * @author Carvalhaes
 * @date 2025-02-24
 * @brief Inicialização e configuração do Timer
 */

#include <xc.h>
#include <stdint.h>

#ifndef __timer_h__
#define __timer_h__

void timer1_Init();

void timer1_Delay_ms(uint32_t ms);

#endif  // __timer_h__