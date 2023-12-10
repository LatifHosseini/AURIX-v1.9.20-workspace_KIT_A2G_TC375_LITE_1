/**********************************************************************************************************************
 * \file main.c
 * \copyright Copyright (C) Infineon Technologies AG 2019
 *
 * Use of this file is subject to the terms of use agreed between (i) you or the company in which ordinary course of
 * business you are acting and (ii) Infineon Technologies AG or its licensees. If and as long as no such terms of use
 * are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization obtaining a copy of the software and
 * accompanying documentation covered by this license (the "Software") to use, reproduce, display, distribute, execute,
 * and transmit the Software, and to prepare derivative works of the Software, and to permit third-parties to whom the
 * Software is furnished to do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including the above license grant, this restriction
 * and the following disclaimer, must be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are solely in the form of
 * machine-executable object code generated by a source language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 *********************************************************************************************************************/
#include "registers.h"
#include "scr_header_files.h"
#include "SCR_Macros.h"
#include "SCR_TypesReg.h"


#define     SCR_IO_PAGE0    0
#define     SCR_IO_PAGE1    1
#define     SCR_IO_PAGE2    2
#define     CLEAR_BIT_5_IN_IR_CON0         5
#define     CLEAR_BIT_3_IN_T01_TCON        3
#define     CLEAR_BIT_2_IN_IR_CON0          2


 //   #define MEM_SEGMENT_SHARED_DATA         0x1F00

// #define Scr_Shared_Data  (*(volatile SCR_SHARED_DATA_TYPE*) 0x1F00)
// __xdata __at(0x1F00) SCR_SHARED_DATA_TYPE Scr_Shared_Data ;


 __xdata __at(0x1F00) unsigned int  data ;

 volatile unsigned char Duty_Cycle_Calculator = 0;
 volatile unsigned char edge_counter = 0;

void delay(void);
/**************************************************************************************************
 *
************************************************************************************************** */
void main()
{
    volatile unsigned int retunr_value = 0;
    volatile unsigned int cnt = 0;
    volatile unsigned char ADC_Stat = 0;
    volatile unsigned char Check_Pin_Stat = 0;
    uint16 result = 0;


  //  M.Data_2 = 14;

  data = (100*5)/(100);

    /* SCU module configurations*/
        SCR_SCU_PAGE = 1;       //Switch to page 1
        SCR_SCU_PMCON1 = 0x59;  //OCDS, T2CCU0, RTC and WCAN enabled

        SCR_SCU_PAGE = 0;       //Switch to page 0
        SCR_SCRINTEXCHG = 0xA0;
        SCR_SCU_PAGE = 1;       //Switch to page 0
        // Enable global interrupt RMAP: X, PAGE: X
        SCR_IEN0 |= (1 << 7) ; // enable global interrupt Set bit 7

        gpio_init();
        SCR_IR_Select_External_Interrupt_Line();
        SCR_IR_Select_Edge_Mode();
        SCR_IR_Enable_Interrupt_Node();
        SCR_Select_Interrupt_Priority();

     //   SCR_Timer_2_Basic_Operations();

        SCR_CCT_Timer_Basic_Operation();
//        SCR_CCU_Capture_Mode_1_Config();
        SCR_CCU_Capture_Mode_0();

    while(1)
    {
        SCR_T2CCU_PAGE = 2;
        result  = (uint8)(SCR_T2CCU_CC0H << 8u);
        result  |= (uint8)SCR_T2CCU_CC0L;
        data = result;
//        SCR_IO_PAGE = SCR_IO_PAGE0;
//            SCR_P00_OUT ^= (1 << 3) ;
//            delay();
//        SCR_IO_PAGE = SCR_IO_PAGE0;
//        Check_Pin_Stat = SCR_P00_IN;
//        Check_Pin_Stat = Check_Pin_Stat & 0x40; //  01000000
//        if(Check_Pin_Stat == 64 ){
//            SCR_P00_OUT |= (1 << 3) ;}
//        if(Check_Pin_Stat == 0 ){
//            SCR_P00_OUT &= ~(1 << 3) ;}





//        SCR_IO_PAGE = SCR_IO_PAGE0;
//        if ( RissingEdge == 1){ SCR_P00_OUT |= (1 << 2) ;}
//        else if(FellingEdge == 1){  SCR_P00_OUT &= ~(1 << 2) ;  }
//        else{}
////
////        SCR_SCU_PAGE = 0;       //Switch to page 0
////                SCR_SCRINTEXCHG = 0xA0;
////                delay();
////                SCR_SCRINTEXCHG = 0xB0;
//////                               delay();
//        SCR_P00_OUT |= (1 << 2) ;
//        SCR_P00_OUT |= (1 << 3) ;
//        SCR_P00_OUT |= (1 << 4) ;
//        delay();
//        SCR_P00_OUT &= ~(1 << 2) ; // Clear bit 2
//        SCR_P00_OUT &= ~(1 << 3) ; // Clear bit 3
//        SCR_P00_OUT &= ~(1 << 4) ; // Clear bit 4
//        delay();


    }
}

/*****************************************************************************************
 *
 *****************************************************************************************/
void delay(void){

    int i = 0;
    int j = 0;
    for( i = 0; i < 1000; i++){
        for(j = 0; j < 1000; j++){

        }
    }

}

/***********************************************************************************************************
 *
************************************************************************************************************ */

/*  ISR Node 2*/
void EXINT2IS_interrupt(void) __interrupt (5){


        SCR_IO_PAGE = SCR_IO_PAGE0;
        SCR_P00_OUT ^= (1 << 1) ;
    SCR_T2CCU_PAGE = 1;
    SCR_T2CCU_CCTCON &= ~(1 << 3) ;//bit pos 3 overflow flag

}
/***********************************************************************************************************
 *
************************************************************************************************************ */
/* ISR Node 9*/
void EXINT5IS_interrupt(void) __interrupt (9){

    edge_counter++;
    SCR_T2CCU_PAGE = 1;
    SCR_T2CCU_CCTBSEL|= (1 << 6) ;  //bit position 6 , SW overflow trigger

    SCR_IO_PAGE = SCR_IO_PAGE0;
    SCR_P00_OUT ^= (1 << 3) ;
//SCU_PAGE=0
    SCR_SCU_PAGE = 0;
    SCR_IR_CON0 &= ~(1 << 3) ; // Clear bit 3
   // SCR_IR_CON0 &= ~(1 << CLEAR_BIT_5_IN_IR_CON0) ;// clear bit 5 in IR_CON0 register
}



