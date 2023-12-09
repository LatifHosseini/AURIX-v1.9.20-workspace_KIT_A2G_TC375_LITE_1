/**
 * \file IfxPms_cfg.h
 * \brief PMS on-chip implementation data
 * \ingroup IfxLld_Pms
 *
 * \version iLLD_1_0_1_17_0
 * \copyright Copyright (c) 2019 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 * Use of this file is subject to the terms of use agreed between (i) you or
 * the company in which ordinary course of business you are acting and (ii)
 * Infineon Technologies AG or its licensees. If and as long as no such terms
 * of use are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization
 * obtaining a copy of the software and accompanying documentation covered by
 * this license (the "Software") to use, reproduce, display, distribute,
 * execute, and transmit the Software, and to prepare derivative works of the
 * Software, and to permit third-parties to whom the Software is furnished to
 * do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup IfxLld_Pms PMS
 * \ingroup IfxLld
 * \defgroup IfxLld_Pms_Impl Implementation
 * \ingroup IfxLld_Pms
 * \defgroup IfxLld_Pms_Std Pm and Evr Drivers
 * \ingroup IfxLld_Pms
 */

#ifndef IFXPMS_CFG_H
#define IFXPMS_CFG_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Ifx_Cfg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXPMS_STANDBY_CPU0_DLMU_RAR_AREA (0x90000000U)

#define IFXPMS_STANDBY_DLMU_RAR_SIZE      (16U /* in words (32 bit) */)

#define IFXPMS_STANDBY_CPU1_DLMU_RAR_AREA (0x90010000U)

#define IFXPMS_NUM_MODULES                (1)

/** \brief This macro is intended to be defined in Ifx_Cfg.h and is meant to cut off the clock supply to desired modules by writing to their respective CLC.B.DISR or CLC.B.EDIS
 * It is used in IfxPmsPm_startSleepSequenceinFlash().
 * This macro is empty by default.For example:
 *
 *
 * Example usage:
 * #define IFXPMS_DISABLE_MODULES_DURING_SLEEP          \
 * {                                                      \
 *     uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();\
 *     IfxScuWdt_clearCpuEndinit(passwd);                 \
 *     MODULE_ASCLIN.CLC.B.DISR = 1;                      \
 *          MODULE_EVADC.CLC.B.DISR = 1;                        \
 *          MODULE_EDSADC.CLC.B.DISR = 1;                       \
 *     IfxScuWdt_setCpuEndinit(passwd);                   \
 * }
 */
#ifndef IFXPMS_DISABLE_MODULES_DURING_SLEEP
#define IFXPMS_DISABLE_MODULES_DURING_SLEEP
#endif

/** \brief This macro is intended to be defined in Ifx_Cfg.h and is meant to cut off the clock supply to desired modules by writing to their respective CLC.B.DISR or CLC.B.EDIS.
 * It is used in IfxPmsPm_startStandbySequenceInFlash().
 *
 * This macro is empty by default.For example:
 *
 *
 * Example usage:
 * #define IFXPMS_DISABLE_ALL_MODULES_STANDBY          \
 * {                                                      \
 *     uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();\
 *     IfxScuWdt_clearCpuEndinit(passwd);                 \
 *     MODULE_ASCLIN.CLC.B.DISR = 1;                      \
 *          MODULE_EVADC.CLC.B.DISR = 1;                        \
 *          MODULE_EDSADC.CLC.B.DISR = 1;                       \
 *     IfxScuWdt_setCpuEndinit(passwd);                   \
 * }
 */
#ifndef IFXPMS_DISABLE_ALL_MODULES_STANDBY
#define IFXPMS_DISABLE_ALL_MODULES_STANDBY
#endif

/** \brief This macro is intended to be defined in Ifx_Cfg.h and is meant to restore the clock supply to desired modules by writing to their respective CLC.B.DISR.
 * This is used in IfxPmsPm_initiateWakeup()
 * This macro is empty by default.For example:
 *
 *
 * Example usage:
 * #define IFXPMS_WAKEUP_MODULES         \
 * {                                                      \
 *     uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();\
 *     IfxScuWdt_clearCpuEndinit(passwd);                 \
 *     MODULE_ASCLIN.CLC.B.DISR = 0;                      \
 *          MODULE_EVADC.CLC.B.DISR = 0;                        \
 *          MODULE_EDSADC.CLC.B.DISR = 0;                       \
 *     IfxScuWdt_setCpuEndinit(passwd);                   \
 * }
 */
#ifndef IFXPMS_WAKEUP_MODULES
#define IFXPMS_WAKEUP_MODULES
#endif

/** \brief This macro is intended to be defined in Ifx_Cfg.h and is meant to contain any activity the application might need to do after wakeup.
 * This can be done here in this macro or after the control returns from IfxPmsPm_initiateWakeup()
 * This macro is empty by default.
 */
#ifndef IFXPMS_RESTART_EXECUTION
#define IFXPMS_RESTART_EXECUTION
#endif

/** \brief Number of cycles to wait after switching to backup clock is triggered before shutting down the oscillator.
 * This is given as a configurable macro because the value required has been seen to vary and so the application may define it in Ifx_Cfg.h.
 */
#ifndef IFXPMS_WAIT_CYCLES
#define IFXPMS_WAIT_CYCLES 100
#endif

#endif /* IFXPMS_CFG_H */
