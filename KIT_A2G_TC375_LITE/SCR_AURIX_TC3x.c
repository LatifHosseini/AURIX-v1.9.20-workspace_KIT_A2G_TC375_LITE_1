#include <stdint.h>
#include "SCR_AURIX_TC3x.h"

/* The IHX representation */

uint8_t scr_xram[1483] = { 
/* csection: .reset output_size=1 section_size=43 full_size=1483 array_size=1483 vma=0 lma=0*/
/* _resetvec [0]: */
    0x02,
    0x01,
    0x03,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
/* _Measure_PWM_duty_cycle_sloc0_1_0 [8]: */
    0x00,
    0x00,
/* _Measure_PWM_duty_cycle_sloc1_1_0 [10]: */
    0x00,
    0x00,
    0x00,
    0x00,
/* _Measure_PWM_duty_cycle_sloc2_1_0 [14]: */
    0x00,
    0x00,
    0x00,
    0x00,
/* _multiply_16bit_by_8bit_sloc0_1_0 [18]: */
    0x00,
    0x00,
    0x00,
    0x00,
/* _multiply_16bit_by_8bit_sloc1_1_0 [22]: */
    0x00,
    0x00,
    0x00,
    0x00,
/* __ddata_end [26]: */
/* __stack_start [26]: */
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
/* csection: .isr05 output_size=1 section_size=24 full_size=1483 array_size=1483 vma=2b lma=2b*/
    0x02,
    0x05,
    0x77,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
/* csection: .isr08 output_size=1 section_size=8 full_size=1483 array_size=1483 vma=43 lma=43*/
    0x02,
    0x05,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
/* csection: .isr09 output_size=1 section_size=181 full_size=1483 array_size=1483 vma=4b lma=4b*/
    0x02,
    0x05,
    0x91,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
/* csection: .gsinit output_size=1 section_size=3 full_size=1483 array_size=1483 vma=100 lma=100*/
/* __init_table [256]: */
    0x22,
    0x01,
    0x00,
/* csection: .text output_size=1 section_size=1212 full_size=1483 array_size=1483 vma=103 lma=103*/
/* __sdcc_gsinit_startup [259]: */
    0x75,
    0xD4,
    0x19,
    0x02,
    0x01,
    0x09,
/* __sdcc_gsinit1_start [265]: */
/* __sdcc_init_xstack [265]: */
    0x02,
    0x01,
    0x0C,
/* __sdcc_gsinit2_start [268]: */
    0x12,
    0x01,
    0x79,
    0xE5,
    0xD5,
    0x60,
    0x03,
    0x02,
    0x01,
    0x71,
/* __sdcc_init_data [278]: */
    0x02,
    0x01,
    0x19,
/* __sdcc_gsinit3_start [281]: */
/* __mcs51_genXINIT [281]: */
    0x79,
    0x0C,
    0xE9,
    0x44,
    0x00,
    0x60,
    0x1B,
    0x7A,
    0x01,
    0x90,
    0x05,
    0xBF,
    0x78,
    0x24,
    0x75,
    0x87,
    0x1D,
/* L00001 [298]: */
    0xE4,
    0x93,
    0xF2,
    0xA3,
    0x08,
    0xB8,
    0x00,
    0x02,
    0x05,
    0x87,
/* L00002 [308]: */
    0xD9,
    0xF4,
    0xDA,
    0xF2,
    0x75,
    0x87,
    0xFF,
/* L00003 [315]: */
    0x02,
    0x01,
    0x3E,
/* __sdcc_gsinit4_start [318]: */
/* __mcs51_genRAMCLEAR [318]: */
    0xE4,
    0x78,
    0xFF,
/* L00004 [321]: */
    0xF6,
    0xD8,
    0xFD,
    0x02,
    0x01,
    0x47,
/* __sdcc_gsinit4B_start [327]: */
/* __mcs51_genXRAMCLEAR [327]: */
    0x78,
    0x00,
    0xE8,
    0x44,
    0x00,
    0x60,
    0x0A,
    0x79,
    0x01,
    0x75,
    0x87,
    0x1C,
    0xE4,
    0xF3,
    0x09,
    0xD8,
    0xFC,
/* L00006 [344]: */
    0x78,
    0x24,
    0xE8,
    0x44,
    0x00,
    0x60,
    0x0C,
    0x79,
    0x01,
    0x90,
    0x1D,
    0x00,
    0xE4,
/* L00007 [357]: */
    0xF0,
    0xA3,
    0xD8,
    0xFC,
    0xD9,
    0xFA,
/* L00008 [363]: */
    0x02,
    0x01,
    0x6E,
/* __sdcc_gsinit5_start [366]: */
    0x02,
    0x01,
    0x71,
/* __sdcc_program_startup [369]: */
    0x12,
    0x01,
    0x00,
    0x12,
    0x04,
    0x3D,
    0x80,
    0xFE,
/* __sdcc_external_startup [377]: */
    0x75,
    0xD5,
    0x00,
/* .00101 [380]: */
    0x22,
/* _SCR_CCT_Timer_Basic_Operation [381]: */
    0x75,
    0xC7,
    0x01,
    0x75,
    0xC3,
    0x00,
    0x75,
    0xC2,
    0x00,
    0x43,
    0xC6,
    0x04,
    0x43,
    0xC6,
    0x01,
    0x43,
    0xC6,
    0x60,
    0x43,
    0xD8,
    0x20,
/* .00101 [402]: */
    0x22,
/* _SCR_CCU_Capture_Mode_0 [403]: */
    0x75,
    0xC7,
    0x01,
    0x43,
    0xC1,
    0x01,
    0x74,
    0xFC,
    0x55,
    0xC0,
    0x44,
    0x03,
    0xF5,
    0xC0,
/* .00101 [417]: */
    0x22,
/* _Duty_Cycle_Calculator_Function [418]: */
    0x12,
    0x02,
    0xEB,
    0x12,
    0x01,
    0xBC,
    0x90,
    0x1D,
    0x28,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0x90,
    0x1F,
    0x00,
    0xEE,
    0xF0,
    0xEF,
    0xA3,
    0xF0,
    0x75,
    0xD5,
    0x01,
/* .00101 [443]: */
    0x22,
/* _Measure_PWM_duty_cycle [444]: */
    0x90,
    0x1D,
    0x00,
    0xE0,
    0xF5,
    0x0A,
    0xA3,
    0xE0,
    0xF5,
    0x0B,
    0xA3,
    0xE0,
    0xF5,
    0x0C,
    0xA3,
    0xE0,
    0xF5,
    0x0D,
    0x90,
    0x1D,
    0x26,
    0xE0,
    0xFA,
    0xA3,
    0xE0,
    0xFB,
    0x8A,
    0x08,
    0x8B,
    0x09,
    0x90,
    0x1D,
    0x06,
    0xE4,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x90,
    0x1D,
    0x0A,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x78,
    0x1F,
    0x79,
    0x00,
/* .00107 [499]: */
    0xE9,
    0x30,
    0xE7,
    0x03,
    0x02,
    0x02,
    0xD4,
/* .00124 [506]: */
    0x90,
    0x1D,
    0x0A,
    0xE0,
    0xFA,
    0xA3,
    0xE0,
    0xFB,
    0xA3,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0xEA,
    0x2A,
    0xFA,
    0xEB,
    0x33,
    0xFB,
    0xEE,
    0x33,
    0xFE,
    0xEF,
    0x33,
    0xFF,
    0x90,
    0x1D,
    0x0A,
    0xEA,
    0xF0,
    0xEB,
    0xA3,
    0xF0,
    0xEE,
    0xA3,
    0xF0,
    0xEF,
    0xA3,
    0xF0,
    0x88,
    0xDA,
    0x05,
    0xDA,
    0xAC,
    0x0A,
    0xAD,
    0x0B,
    0xAE,
    0x0C,
    0xAF,
    0x0D,
    0x80,
    0x0D,
/* .00125 [560]: */
    0xC3,
    0xEF,
    0x13,
    0xFF,
    0xEE,
    0x13,
    0xFE,
    0xED,
    0x13,
    0xFD,
    0xEC,
    0x13,
    0xFC,
/* .00126 [573]: */
    0xD5,
    0xDA,
    0xF0,
    0x53,
    0x04,
    0x01,
    0x7D,
    0x00,
    0x7E,
    0x00,
    0x7F,
    0x00,
    0x90,
    0x1D,
    0x0A,
    0xE0,
    0x4C,
    0xF0,
    0xA3,
    0xE0,
    0x4D,
    0xF0,
    0xA3,
    0xE0,
    0x4E,
    0xF0,
    0xA3,
    0xE0,
    0x4F,
    0xF0,
    0x90,
    0x1D,
    0x0A,
    0xE0,
    0xFC,
    0xA3,
    0xE0,
    0xFD,
    0xA3,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0x85,
    0x08,
    0x0E,
    0x85,
    0x09,
    0x0F,
    0x75,
    0x10,
    0x00,
    0x75,
    0x11,
    0x00,
    0xC3,
    0xEC,
    0x95,
    0x0E,
    0xED,
    0x95,
    0x0F,
    0xEE,
    0x95,
    0x10,
    0xEF,
    0x95,
    0x11,
    0x40,
    0x48,
/* .00127 [644]: */
    0x90,
    0x1D,
    0x0A,
    0xEC,
    0xC3,
    0x95,
    0x0E,
    0xF0,
    0xED,
    0x95,
    0x0F,
    0xA3,
    0xF0,
    0xEE,
    0x95,
    0x10,
    0xA3,
    0xF0,
    0xEF,
    0x95,
    0x11,
    0xA3,
    0xF0,
    0x88,
    0x07,
    0x8F,
    0xDA,
    0x05,
    0xDA,
    0x7F,
    0x01,
    0x7E,
    0x00,
    0x7D,
    0x00,
    0x7C,
    0x00,
    0x80,
    0x0C,
/* .00128 [683]: */
    0xEF,
    0x2F,
    0xFF,
    0xEE,
    0x33,
    0xFE,
    0xED,
    0x33,
    0xFD,
    0xEC,
    0x33,
    0xFC,
/* .00129 [695]: */
    0xD5,
    0xDA,
    0xF1,
    0x90,
    0x1D,
    0x06,
    0xE0,
    0x4F,
    0xF0,
    0xA3,
    0xE0,
    0x4E,
    0xF0,
    0xA3,
    0xE0,
    0x4D,
    0xF0,
    0xA3,
    0xE0,
    0x4C,
    0xF0,
/* .00108 [716]: */
    0x18,
    0xB8,
    0xFF,
    0x01,
    0x19,
/* .00130 [721]: */
    0x02,
    0x01,
    0xF3,
/* .00105 [724]: */
    0x90,
    0x1D,
    0x06,
    0xE0,
    0xFC,
    0xA3,
    0xE0,
    0xFD,
    0xA3,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0x90,
    0x1D,
    0x28,
    0xEC,
    0xF0,
    0xED,
    0xA3,
    0xF0,
/* .00109 [746]: */
    0x22,
/* _multiply_16bit_by_8bit [747]: */
    0x90,
    0x1D,
    0x24,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0x8E,
    0x12,
    0x8F,
    0x13,
    0x75,
    0x14,
    0x00,
    0x75,
    0x15,
    0x00,
    0x90,
    0x1D,
    0x0E,
    0xE4,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x7A,
    0x00,
    0x7B,
    0x00,
/* .00135 [780]: */
    0xC3,
    0xEA,
    0x94,
    0x08,
    0xEB,
    0x64,
    0x80,
    0x94,
    0x80,
    0x50,
    0x6F,
/* .00152 [791]: */
    0x8A,
    0xDA,
    0x05,
    0xDA,
    0x78,
    0x01,
    0x79,
    0x00,
    0x80,
    0x06,
/* .00153 [801]: */
    0xE8,
    0x28,
    0xF8,
    0xE9,
    0x33,
    0xF9,
/* .00154 [807]: */
    0xD5,
    0xDA,
    0xF7,
    0xE8,
    0x54,
    0x64,
    0x60,
    0x50,
/* .00155 [815]: */
    0x8A,
    0x01,
    0x89,
    0xDA,
    0x05,
    0xDA,
    0x85,
    0x12,
    0x16,
    0x85,
    0x13,
    0x17,
    0x85,
    0x14,
    0x18,
    0x85,
    0x15,
    0x19,
    0x80,
    0x15,
/* .00156 [835]: */
    0xE5,
    0x16,
    0x25,
    0x16,
    0xF5,
    0x16,
    0xE5,
    0x17,
    0x33,
    0xF5,
    0x17,
    0xE5,
    0x18,
    0x33,
    0xF5,
    0x18,
    0xE5,
    0x19,
    0x33,
    0xF5,
    0x19,
/* .00157 [856]: */
    0xD5,
    0xDA,
    0xE8,
    0x90,
    0x1D,
    0x0E,
    0xE0,
    0xFC,
    0xA3,
    0xE0,
    0xFD,
    0xA3,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0x90,
    0x1D,
    0x0E,
    0xE5,
    0x16,
    0x2C,
    0xF0,
    0xE5,
    0x17,
    0x3D,
    0xA3,
    0xF0,
    0xE5,
    0x18,
    0x3E,
    0xA3,
    0xF0,
    0xE5,
    0x19,
    0x3F,
    0xA3,
    0xF0,
/* .00136 [895]: */
    0x0A,
    0xBA,
    0x00,
    0x89,
    0x0B,
/* .00158 [900]: */
    0x80,
    0x86,
/* .00133 [902]: */
    0x90,
    0x1D,
    0x0E,
    0xE0,
    0xFC,
    0xA3,
    0xE0,
    0xFD,
    0xA3,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0x90,
    0x1D,
    0x00,
    0xEC,
    0xF0,
    0xED,
    0xA3,
    0xF0,
    0xEE,
    0xA3,
    0xF0,
    0xEF,
    0xA3,
    0xF0,
/* .00137 [930]: */
    0x22,
/* _CCT_Read_PWM_OnTime [931]: */
    0x75,
    0xC7,
    0x02,
    0x90,
    0x1D,
    0x24,
    0xE5,
    0xC1,
    0xF0,
    0xE4,
    0xA3,
    0xF0,
/* .00182 [943]: */
    0x22,
/* _CCT_Read_PWM_OffTime [944]: */
    0x75,
    0xC7,
    0x02,
    0x90,
    0x1D,
    0x26,
    0xE5,
    0xC1,
    0xF0,
    0xE4,
    0xA3,
    0xF0,
/* .00184 [956]: */
    0x22,
/* _Reset_CCT_Timer [957]: */
    0x75,
    0xC7,
    0x01,
    0x43,
    0xC1,
    0x40,
/* .00101 [963]: */
    0x22,
/* _gpio_init [964]: */
    0x75,
    0x8F,
    0x02,
    0x75,
    0x95,
    0x00,
    0x75,
    0x9D,
    0x00,
    0x43,
    0x93,
    0x08,
    0x75,
    0x8F,
    0x01,
    0x75,
    0x91,
    0x80,
    0x75,
    0x93,
    0x80,
    0x75,
    0x94,
    0x80,
    0x75,
    0x95,
    0x80,
    0x75,
    0x97,
    0x80,
    0x75,
    0x8F,
    0x01,
    0x75,
    0x96,
    0x00,
/* .00101 [1000]: */
    0x22,
/* _SCR_IR_Select_External_Interrupt_Line [1001]: */
    0x75,
    0xF1,
    0x02,
    0x74,
    0xFC,
    0x55,
    0xF4,
    0x44,
    0x02,
    0xF5,
    0xF4,
    0x74,
    0x3F,
    0x55,
    0xF3,
    0x44,
    0x40,
    0xF5,
    0xF3,
/* .00101 [1020]: */
    0x22,
/* _SCR_IR_Select_Edge_Mode [1021]: */
    0x75,
    0xF1,
    0x01,
    0x74,
    0x3F,
    0x55,
    0xF4,
    0x44,
    0x80,
    0xF5,
    0xF4,
    0x74,
    0xCF,
    0x55,
    0xF4,
    0x44,
    0x10,
    0xF5,
    0xF4,
    0x74,
    0xFC,
    0x55,
    0xF5,
    0x44,
    0x03,
    0xF5,
    0xF5,
    0x74,
    0xF3,
    0x55,
    0xF5,
    0x44,
    0x0C,
    0xF5,
    0xF5,
    0x74,
    0xCF,
    0x55,
    0xF5,
    0x44,
    0x30,
    0xF5,
    0xF5,
/* .00103 [1064]: */
    0x22,
/* _SCR_IR_Enable_Interrupt_Node [1065]: */
    0x43,
    0xD1,
    0x04,
    0x43,
    0xD1,
    0x08,
/* .00105 [1071]: */
    0x22,
/* _SCR_Select_Interrupt_Priority [1072]: */
    0x43,
    0xD3,
    0x04,
    0x43,
    0xDB,
    0x04,
    0x53,
    0xD3,
    0xF7,
    0x53,
    0xDB,
    0xF7,
/* .00101 [1084]: */
    0x22,
/* _main [1085]: */
    0x90,
    0x1D,
    0x16,
    0xE4,
    0xF0,
    0x90,
    0x1D,
    0x17,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x90,
    0x1D,
    0x1B,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x90,
    0x1D,
    0x1F,
    0xF0,
    0x90,
    0x1D,
    0x20,
    0xF0,
    0x90,
    0x1D,
    0x21,
    0xF0,
    0x90,
    0x1D,
    0x22,
    0xF0,
    0x90,
    0x1D,
    0x23,
    0xF0,
    0x75,
    0xF1,
    0x01,
    0x75,
    0xFB,
    0x59,
    0xF5,
    0xF1,
    0x75,
    0xF5,
    0xA0,
    0x75,
    0xF1,
    0x01,
    0x43,
    0xD8,
    0x80,
    0x12,
    0x03,
    0xC4,
    0x12,
    0x03,
    0xE9,
    0x12,
    0x03,
    0xFD,
    0x12,
    0x04,
    0x29,
    0x12,
    0x04,
    0x30,
    0x12,
    0x01,
    0x7D,
    0x12,
    0x01,
    0x93,
/* .00122 [1168]: */
    0x90,
    0x1D,
    0x2C,
    0xE0,
    0x70,
    0xFA,
/* .00170 [1174]: */
    0x75,
    0x8F,
    0x00,
    0x90,
    0x1D,
    0x2E,
    0xE0,
    0xFF,
    0xBF,
    0x01,
    0x02,
    0x80,
    0x02,
/* .00171 [1187]: */
    0x80,
    0x12,
/* .00172 [1189]: */
    0x90,
    0x1D,
    0x20,
    0xE0,
    0x70,
    0x0C,
/* .00173 [1195]: */
    0x90,
    0x1D,
    0x20,
    0x74,
    0x01,
    0xF0,
    0x43,
    0x90,
    0x08,
    0x12,
    0x03,
    0xBD,
/* .00104 [1207]: */
    0x90,
    0x1D,
    0x2E,
    0xE0,
    0xFF,
    0xBF,
    0x02,
    0x02,
    0x80,
    0x02,
/* .00174 [1217]: */
    0x80,
    0x1E,
/* .00175 [1219]: */
    0x90,
    0x1D,
    0x20,
    0xE0,
    0xFF,
    0xBF,
    0x01,
    0x02,
    0x80,
    0x02,
/* .00176 [1229]: */
    0x80,
    0x12,
/* .00177 [1231]: */
    0x75,
    0xC7,
    0x02,
    0x75,
    0xC1,
    0xA0,
    0x90,
    0x1D,
    0x20,
    0x74,
    0x02,
    0xF0,
    0x43,
    0x90,
    0x20,
    0x12,
    0x03,
    0xA3,
/* .00108 [1249]: */
    0x90,
    0x1D,
    0x2E,
    0xE0,
    0xFF,
    0xBF,
    0x03,
    0x02,
    0x80,
    0x02,
/* .00178 [1259]: */
    0x80,
    0x1E,
/* .00179 [1261]: */
    0x90,
    0x1D,
    0x20,
    0xE0,
    0xFF,
    0xBF,
    0x02,
    0x02,
    0x80,
    0x02,
/* .00180 [1271]: */
    0x80,
    0x12,
/* .00181 [1273]: */
    0x75,
    0xC7,
    0x02,
    0x75,
    0xC1,
    0xA0,
    0x90,
    0x1D,
    0x20,
    0x74,
    0x03,
    0xF0,
    0x43,
    0x90,
    0x10,
    0x12,
    0x03,
    0xB0,
/* .00112 [1291]: */
    0x90,
    0x1D,
    0x2E,
    0xE0,
    0xFF,
    0xBF,
    0x04,
    0x02,
    0x80,
    0x03,
/* .00182 [1301]: */
    0x02,
    0x04,
    0x90,
/* .00183 [1304]: */
    0x90,
    0x1D,
    0x20,
    0xE0,
    0xFF,
    0xBF,
    0x03,
    0x02,
    0x80,
    0x03,
/* .00184 [1314]: */
    0x02,
    0x04,
    0x90,
/* .00185 [1317]: */
    0x90,
    0x1D,
    0x20,
    0xE4,
    0xF0,
    0x53,
    0x90,
    0xF7,
    0x53,
    0x90,
    0xDF,
    0x53,
    0x90,
    0xEF,
    0x90,
    0x1D,
    0x1B,
    0xE4,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x12,
    0x01,
    0xA2,
    0xAF,
    0xD5,
    0x90,
    0x1D,
    0x1B,
    0xEF,
    0xF0,
    0xE4,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0xA3,
    0xF0,
    0x90,
    0x1D,
    0x1B,
    0xE0,
    0xFC,
    0xA3,
    0xE0,
    0xFD,
    0xA3,
    0xE0,
    0xFE,
    0xA3,
    0xE0,
    0xFF,
    0xBC,
    0x01,
    0x0B,
    0xBD,
    0x00,
    0x08,
    0xBE,
    0x00,
    0x05,
    0xBF,
    0x00,
    0x02,
    0x80,
    0x03,
/* .00186 [1387]: */
    0x02,
    0x04,
    0x90,
/* .00187 [1390]: */
    0x90,
    0x1D,
    0x2E,
    0xE4,
    0xF0,
    0x02,
    0x04,
    0x90,
/* .00124 [1398]: */
    0x22,
/* _EXINT5IS_interrupt [1399]: */
/* .00215 [1399]: */
    0x32,
/* _EXINT8IS_interrupt [1400]: */
    0xC0,
    0xE0,
    0xC0,
    0xD5,
    0xC0,
    0xD6,
    0x90,
    0x1D,
    0x2F,
    0xE0,
    0x04,
    0xF0,
    0x75,
    0xF1,
    0x00,
    0x53,
    0xF2,
    0xFB,
/* .00217 [1418]: */
    0xD0,
    0xD6,
    0xD0,
    0xD5,
    0xD0,
    0xE0,
    0x32,
/* _EXINT9IS_interrupt [1425]: */
    0xC0,
    0xE0,
    0xC0,
    0xD5,
    0xC0,
    0xD6,
    0xC0,
    0x07,
    0xC0,
    0xD0,
    0x75,
    0xD0,
    0x00,
    0x90,
    0x1D,
    0x2F,
    0xE0,
    0xFF,
    0xBF,
    0x01,
    0x00,
/* .00227 [1446]: */
    0x40,
    0x06,
/* .00228 [1448]: */
    0x90,
    0x1D,
    0x2E,
    0xE0,
    0x04,
    0xF0,
/* .00220 [1454]: */
    0x75,
    0xF1,
    0x00,
    0x53,
    0xF2,
    0xF7,
/* .00221 [1460]: */
    0xD0,
    0xD0,
    0xD0,
    0x07,
    0xD0,
    0xD6,
    0xD0,
    0xD5,
    0xD0,
    0xE0,
    0x32,
/* csection: .roxdata output_size=1 section_size=12 full_size=1483 array_size=1483 vma=5bf lma=5bf*/
/* s_XINIT [1471]: */
/* __roxdata_start [1471]: */
/* _etext [1471]: */
/* __xinit__Capture_Value_1 [1471]: */
    0x00,
    0x00,
/* __xinit__Capture_Value_2 [1473]: */
    0x00,
    0x00,
/* __xinit__duty_cycle [1475]: */
    0x00,
    0x00,
/* __xinit__pending_bit_status [1477]: */
    0x00,
/* __xinit__pending_bit_status_1 [1478]: */
    0x00,
/* __xinit__Start_PWM_Duty_Dycle_Calculating [1479]: */
    0x00,
/* __xinit__Check_Pin_Stat [1480]: */
    0x00,
/* __xinit__Edge_Detection [1481]: */
    0x00,
/* __xinit__rising_edge [1482]: */
    0x00
};
