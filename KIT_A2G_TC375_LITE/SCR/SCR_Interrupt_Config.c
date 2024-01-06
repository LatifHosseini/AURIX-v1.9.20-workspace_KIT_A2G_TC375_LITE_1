/**********************************************************************************************************************
 * \file SCR_Interrupt_Config.c
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


/*********************************************************************************************************************/
/*-----------------------------------------------------Includes------------------------------------------------------*/
/*********************************************************************************************************************/
#include "registers.h"
#include "scr_header_files.h"
#include "SCR_Macros.h"
#include "SCR_TypesReg.h"
/*********************************************************************************************************************/
/*------------------------------------------------------Macros-------------------------------------------------------*/
/*********************************************************************************************************************/
// frist clear the bits then config it
#define     EXINT2IS_BITS_POSITION          6
#define     T2CC1EXINT4IS_BITS_POSITION     2
#define     T2CC2EXINT5IS_BITS_POSITION     4
#define     EXINT4_BITS_POSITION            0
#define     EXINT2_BITS_POSITION            4
#define     T2CC1EXINT5IS_BITS_POSITION     0

#define     EXINT1IS_CONFIG_VALUE           0x00    //00110000
#define     T2CC1EXINT4IS_CONFIG_VALUE      0x20
#define     EXINT5_CONFIG_VALUE             0x00
#define     EXINT1_CONFIG_VALUE             0x10

#define     EXINT5_CONFIG_VALUE            0x00  // 00001100
#define     EXINT6_CONFIG_VALUE            0x30  // 00110000
#define     EXINT3_CONFIG_VALUE            0xC0  // 11000000

#define     EXINT5_BITS_POSITION            6
#define     EXINT6_BITS_POSITION            4
#define     EXINT3_BITS_POSITION            6

#define     SET_BIT_3_IN_IEN1           3
#define     SET_BIT_2_IN_IEN1           2

#define     SCR_MODPISELX_MSK   0x03
#define     SCR_EXICONX_MSK     0x03

/*********************************************************************************************************************/
/*-------------------------------------------------Global variables--------------------------------------------------*/
/*********************************************************************************************************************/

/*********************************************************************************************************************/
/*--------------------------------------------Private Variables/Constants--------------------------------------------*/
/*********************************************************************************************************************/

/*********************************************************************************************************************/
/*------------------------------------------------Function Prototypes------------------------------------------------*/
/*********************************************************************************************************************/

/*********************************************************************************************************************/
/*---------------------------------------------Function Implementations----------------------------------------------*/
/*********************************************************************************************************************/
void SCR_IR_Select_External_Interrupt_Line(void)
{
    // Select External Interrupt Line,  SCU_PAGE=2
    SCR_SCU_PAGE = 2;
    SCR_MODPISEL2 = (unsigned char)(SCR_MODPISEL2 & ~(0x03 << 0)) | (0x02 );// P0.6 for interrupt node 9
    SCR_MODPISEL1 = (unsigned char)(SCR_MODPISEL1 & ~(0x03 << 6)) | (0x40 );// P0.6 for interrupt node 8
}

void SCR_IR_Select_Edge_Mode(void)
{
    // select Edge Mode  ,  SCU_PAGE=1
    SCR_SCU_PAGE = 1;
    // Node 9 -> EXICON1.EXINT5 == 01  for Falling edge bit position  2 - 3

  //  SCR_IR_EXICON0  = (unsigned char)(SCR_IR_EXICON0 & 0xF3);
    // select edge mode for Node 9 -> EXICON1.EXINT5 == 01 rising  and falling,  bit pos 6-7
    SCR_IR_EXICON0 = (unsigned char)(SCR_IR_EXICON0 & ~(0x03 << 6)) | (0x80);
    // select edge mode for node 8, = 01 rissing   bit pos 4-5
    SCR_IR_EXICON0 = (unsigned char)(SCR_IR_EXICON0 & ~(0x03 << 4)) | (0x10);

   //EXICON0.EXINT2  == 01 for Riseing edge  bit position 6 - 7   00000000

//// Disable the following external interrupt in to node 9
    SCR_IR_EXICON1 = (unsigned char)(SCR_IR_EXICON1 & ~(0x03 << 0)) | (0x03);
    SCR_IR_EXICON1 = (unsigned char)(SCR_IR_EXICON1 & ~(0x03 << 2)) | (0x0C);
    SCR_IR_EXICON1 = (unsigned char)(SCR_IR_EXICON1 & ~(0x03 << 4)) | (0x30);


}

void SCR_IR_Enable_Interrupt_Node(void)
{
// PAGE: X
    SCR_IEN1 |= (1 << 2) ;//node 8 enable IEN1.EX2  Bit posiotion 2
    SCR_IEN1 |= (1 << 3) ; //node 9
}










