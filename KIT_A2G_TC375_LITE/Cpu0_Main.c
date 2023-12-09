 /**********************************************************************************************************************
 * \file Cpu0_Main.c
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
#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "SCR.h"
#include "Ifx_Types.h"
#include "PMS_Power_Down_Standby.h"
#include "IfxPms_reg.h"


 #define RW_FLAG   (*(volatile uint16 *)0xF0241F00)




#define ADDRESS1     0xF0241F00
////#define ADDRESS2     0xF0241F01

static unsigned int Data_3 = 0;




volatile unsigned int Push_Button_status_1;
IFX_ALIGN(4) IfxCpu_syncEvent g_cpuSyncEvent = 0;

void core0_main(void)
{
    IfxCpu_enableInterrupts();
    
    Data_3 = RW_FLAG;

//    //Pointer to access the Memory address_1
    volatile uint32 *PointerAddress_1 = NULL;
//    volatile uint32 *PointerAddress_2 = NULL;
//    //variable to stored the read value
//    uint32 ReadData = 0;
//    //Assign addres to the pointer
        PointerAddress_1 = (volatile uint32 *)ADDRESS1;
//        PointerAddress_2 = (volatile uint32 *)ADDRESS2;
//    //Write value to the memory
        //* flagAddress_1 = 12; // Write
//    //Read value from memory
//    ReadData = * flagAddress;



   // volatile uint32 *PointerToAddress1 = NULL;

    //variable to stored the read value

    //Assign addres to the pointer
  //  PointerToAddress1 = (volatile uint32 *)ADDRESS1;


    //Write value to the memory
   // * flagAddress = 12; // Write
    //Read value from memory


  //  SCR_SHARED_DATA_TYPE X;



    /* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdogs and service them periodically if it is required
     */
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());
    
    /* Wait for CPU sync event */
    IfxCpu_emitEvent(&g_cpuSyncEvent);
    IfxCpu_waitEvent(&g_cpuSyncEvent, 1);
    
    IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getCpuWatchdogPassword());

    /* boot_mode = 0 - XRAM not programmed */
    IfxScr_init(0);
    IfxScuWdt_setSafetyEndinit(IfxScuWdt_getCpuWatchdogPassword());

    /* Write SCR program to XRAM */
    IfxScr_copyProgram();

    IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getCpuWatchdogPassword());

    /* boot_mode = 1 - XRAM programmed */
    IfxScr_init(1);
    IfxScuWdt_setSafetyEndinit(IfxScuWdt_getCpuWatchdogPassword());
    
    IfxScuWdt_clearSafetyEndinit(IfxScuWdt_getCpuWatchdogPassword());
    while (P33_PCSR.B.LCK);
    P33_PCSR.U = 0xFEFF;
    while (P34_PCSR.B.LCK);
    P34_PCSR.U = 0x0002;
    IfxScuWdt_setSafetyEndinit(IfxScuWdt_getCpuWatchdogPassword());

    initLED_1();  /* Initialize the LED port pin      */

    init_input_Pin();/* Initialize the pin 5 of Port 10 as input pull-down     */

    while(1)
    {
        Push_Button_status_1 = get_Push_Button_status();
                if(Push_Button_status_1 == 0){
                    setLED2High();
                    runStandby();
                }
                else { setLED2Low();  }

//        blinkLED_1(); /* Make the LED blink */


        Data_3 = *PointerAddress_1;


    }
}
