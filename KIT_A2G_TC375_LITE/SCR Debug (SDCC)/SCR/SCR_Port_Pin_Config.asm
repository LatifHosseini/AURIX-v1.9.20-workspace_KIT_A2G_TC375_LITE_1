;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13448 (MINGW32)
;--------------------------------------------------------
	.file	"SCR_Port_Pin_Config.c"
;	.optsdcc -mmcs51
	; --model-large

	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl	_gpio_config
	.globl	_SCR_Port_EnablePortPad_PARM_2
	.globl	_IfxScrPort_configurePortControl_PARM_3
	.globl	_IfxScrPort_configurePortControl_PARM_2
	.globl	_IfxScrPort_configurePortControl
	.globl	_SCR_Port_EnablePortPad
	.globl	_SCR_GPIO_EnablePortPad
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.section .bdata.i51,"aw" ;reg_name ;area
_NVM_STATUS1	=	0x00e1
_NVM_STATUS2	=	0x00e1
_NVM_ADDRP	=	0x00e3
_NVM_ADDRS	=	0x00e4
_NVM_CTRL	=	0x00e5
_NVM_MODE	=	0x00e6
_NVM_MAP1	=	0x00e7
_NVM_MAP2	=	0x00e9
_NVM_BRNG	=	0x00ea
_NVM_PROT	=	0x00eb
_NVM_SFRSEL	=	0x00ec
_NVM_SFRDAT	=	0x00ed
_SCR_DAPISC	=	0x0011
_SCR_P00_OUT	=	0x0090
_SCR_P00_IN	=	0x0091
_SCR_P00_OMSR	=	0x0092
_SCR_P00_OMCR	=	0x0093
_SCR_P00_OMTR	=	0x0094
_SCR_P01_OMSR	=	0x009a
_SCR_P01_OMCR	=	0x009b
_SCR_P01_OMTR	=	0x009c
_SCR_WCAN_PAGE	=	0x00b8
_SCR_WCAN_CFG	=	0x00b0
_SCR_WCAN_INTMRSLT	=	0x00b1
_SCR_WCAN_CDR_CTRL	=	0x00b2
_SCR_WCAN_CDR_UPPER_CTRL	=	0x00b3
_SCR_WCAN_CDR_LOWER_CTRL	=	0x00b4
_SCR_WCAN_CDR_MEAS_HIGH	=	0x00b5
_SCR_WCAN_CDR_MEAS_LOW	=	0x00b6
_SCR_WCAN_FD_CTRL	=	0x00b7
_SCR_T2CCU_PAGE	=	0x00c7
_SCR_T2_CON	=	0x00c0
_SCR_T2_MOD	=	0x00c1
_SCR_T2_RC2L	=	0x00c2
_SCR_T2_RC2H	=	0x00c3
_SCR_T2_T2L	=	0x00c4
_SCR_T2_T2H	=	0x00c5
_SCR_T2_CON1	=	0x00c6
_SCR_IR_CON0	=	0x00f2
_SCR_IR_CON1	=	0x00f3
_SCR_IR_CON2	=	0x00f4
_SCR_SCRINTEXCHG	=	0x00f5
_SCR_TCINTEXCHG	=	0x00f6
_SCR_SCU_PAGE	=	0x00f1
_SCR_SCU_RSTST	=	0x00f7
_SCR_SCU_MRSTST	=	0x00f8
_SCR_SCU_SR	=	0x00f9
_SCR_WDT_CON	=	0x0081
_SCR_WDT_REL	=	0x0082
_SCR_WDT_WINB	=	0x0083
_SCR_WDT_L	=	0x0084
_SCR_WDT_H	=	0x0085
_SCR_SSC_CONOL	=	0x0089
_SCR_SSC_CONPL	=	0x0089
_SCR_SSC_CONPH	=	0x008a
_SCR_SSC_CONOH	=	0x008a
_SCR_SSC_TBL	=	0x008b
_SCR_SSC_RBL	=	0x008c
_SCR_SSC_BRL	=	0x008d
_SCR_SSC_BRH	=	0x008e
_SCR_IO_PAGE	=	0x008f
_SCR_UART_SCON	=	0x00b9
_SCR_UART_SBUF	=	0x00ba
_SCR_UART_BGL	=	0x00bc
_SCR_UART_BCON	=	0x00bd
_SCR_UART_LINST	=	0x00be
_SCR_UART_BGH	=	0x00bf
_SCR_RTC_CON	=	0x00e1
_SCR_RTC_CNT0	=	0x00e2
_SCR_RTC_CNT1	=	0x00e3
_SCR_RTC_CNT2	=	0x00e4
_SCR_RTC_CNT3	=	0x00e5
_SCR_RTC_CR0	=	0x00e6
_SCR_RTC_CR1	=	0x00e7
_SCR_RTC_CR2	=	0x00e8
_SCR_RTC_CR3	=	0x00e9
_SCR_DBG_MMCR	=	0x00f1
_SCR_DBG_MMCR2	=	0x00f2
_SCR_DBG_MMSR	=	0x00f3
_SCR_DBG_MMBPCR	=	0x00f4
_SCR_DBG_MMICR	=	0x00f5
_SCR_DBG_MMDR	=	0x00f6
_SCR_DBG_HWBPSR	=	0x00f7
_SCR_DBG_HWBPDR	=	0x00f8
_SCR_DBG_MMWR1	=	0x00f9
_SCR_DBG_MMWR2	=	0x00fa
_SCR_PASSWD	=	0x0086
_SCR_XADDRH	=	0x0087
_SCR_SYSCON0	=	0x0088
_SCR_T01_TCON	=	0x00c9
_SCR_T01_TMOD	=	0x00ca
_SCR_T01_TL0	=	0x00cb
_SCR_T01_TL1	=	0x00cc
_SCR_T01_TH0	=	0x00cd
_SCR_T01_TH1	=	0x00ce
_SCR_PSW	=	0x00d0
_SCR_IEN1	=	0x00d1
_SCR_IEN0	=	0x00d8
_SCR_IPH	=	0x00d2
_SCR_IPH1	=	0x00d3
_SCR_IP1	=	0x00db
_SCR_IP	=	0x00dc
_SCR_SP	=	0x00d4
_SCR_DPL	=	0x00d5
_SCR_DPH	=	0x00d6
_SCR_EO	=	0x00d7
_SCR_PCON	=	0x00d9
_SCR_B	=	0x00da
_SCR_ACC	=	0x00e0
_SCR_P00_IOCR0	=	0x0090
_SCR_P00_IOCR1	=	0x0091
_SCR_P00_IOCR2	=	0x0092
_SCR_P00_IOCR3	=	0x0093
_SCR_P00_IOCR4	=	0x0094
_SCR_P00_IOCR5	=	0x0095
_SCR_P00_IOCR6	=	0x0096
_SCR_P00_IOCR7	=	0x0097
_SCR_P01_OUT	=	0x0098
_SCR_P01_IN	=	0x0099
_SCR_P01_IOCR0	=	0x0098
_SCR_P01_IOCR1	=	0x0099
_SCR_P01_IOCR2	=	0x009a
_SCR_P01_IOCR3	=	0x009b
_SCR_P01_IOCR4	=	0x009c
_SCR_P01_IOCR5	=	0x009d
_SCR_P01_IOCR6	=	0x009e
_SCR_P01_IOCR7	=	0x009f
_SCR_T2CCU_CCEN	=	0x00c0
_SCR_T2CCU_CCTBSEL	=	0x00c1
_SCR_T2CCU_CCTRELL	=	0x00c2
_SCR_T2CCU_CCTRELH	=	0x00c3
_SCR_T2CCU_CCTL	=	0x00c4
_SCR_T2CCU_CCTH	=	0x00c5
_SCR_T2CCU_CCTCON	=	0x00c6
_SCR_T2CCU_COSHDW	=	0x00c0
_SCR_T2CCU_CC0L	=	0x00c1
_SCR_T2CCU_CC1L	=	0x00c2
_SCR_T2CCU_CC2L	=	0x00c3
_SCR_T2CCU_CC3L	=	0x00c1
_SCR_T2CCU_CC4L	=	0x00c2
_SCR_T2CCU_CC5L	=	0x00c3
_SCR_T2CCU_CC0H	=	0x00c4
_SCR_T2CCU_CC1H	=	0x00c5
_SCR_T2CCU_CC2H	=	0x00c6
_SCR_T2CCU_CC3H	=	0x00c4
_SCR_T2CCU_CC4H	=	0x00c5
_SCR_T2CCU_CC5H	=	0x00c6
_SCR_T2CCU_COCON	=	0x00c0
_SCR_T2CCU_CCTDTCL	=	0x00c2
_SCR_T2CCU_CCTDTCH	=	0x00c3
_SCR_NMISR	=	0x00f2
_SCR_NMICON	=	0x00f3
_SCR_IR_EXICON0	=	0x00f4
_SCR_IR_EXICON1	=	0x00f5
_SCR_IR_EXICON2	=	0x00f6
_SCR_IR_EXICON3	=	0x00f7
_SCR_SCU_MODIEN	=	0x00f8
_SCR_SCU_RSTCON	=	0x00f9
_SCR_SCU_CMCON	=	0x00fa
_SCR_SCU_PMCON1	=	0x00fb
_SCR_SCU_STDBYWKP	=	0x00fc
_SCR_EVRADCSTAT0	=	0x00fd
_SCR_EVRADCSTAT1	=	0x00fe
_SCR_EVRADCSTAT2	=	0x00ff
_SCR_P00_PDR0	=	0x0090
_SCR_P00_PDR2	=	0x0091
_SCR_P00_PDR4	=	0x0092
_SCR_P00_PDR6	=	0x0093
_SCR_P00_PDISC	=	0x0095
_SCR_P01_PDR0	=	0x0098
_SCR_P01_PDR2	=	0x0099
_SCR_P01_PDR4	=	0x009a
_SCR_P01_PDR6	=	0x009b
_SCR_P01_PDISC	=	0x009d
_SCR_MODPISEL0	=	0x00f2
_SCR_MODPISEL1	=	0x00f3
_SCR_MODPISEL2	=	0x00f4
_SCR_MODPISEL3	=	0x00f5
_SCR_MODPISEL4	=	0x00f6
_SCR_MODPISEL5	=	0x00f7
_SCR_WCAN_ID0_CTRL	=	0x00b0
_SCR_WCAN_ID1_CTRL	=	0x00b1
_SCR_WCAN_ID2_CTRL	=	0x00b2
_SCR_WCAN_ID3_CTRL	=	0x00b3
_SCR_WCAN_MASK_ID0_CTRL	=	0x00b4
_SCR_WCAN_MASK_ID1_CTRL	=	0x00b5
_SCR_WCAN_MASK_ID2_CTRL	=	0x00b6
_SCR_WCAN_MASK_ID3_CTRL	=	0x00b7
_SCR_WCAN_DATA1_CTRL	=	0x00b1
_SCR_WCAN_DATA2_CTRL	=	0x00b2
_SCR_WCAN_DATA3_CTRL	=	0x00b3
_SCR_WCAN_DATA4_CTRL	=	0x00b4
_SCR_WCAN_DATA5_CTRL	=	0x00b5
_SCR_WCAN_DATA6_CTRL	=	0x00b6
_SCR_WCAN_DATA7_CTRL	=	0x00b7
_SCR_WCAN_DATA0_CTRL	=	0x00b0
_SCR_WCAN_INTESTAT0	=	0x00b0
_SCR_WCAN_INTESTAT1	=	0x00b1
_SCR_WCAN_FRMERRCNT	=	0x00b2
_SCR_WCAN_INTESCLR0	=	0x00b3
_SCR_WCAN_INTESCLR1	=	0x00b4
_SCR_WCAN_BTL1_CTRL	=	0x00b5
_SCR_WCAN_BTL2_CTRL	=	0x00b6
_SCR_WCAN_DLC_CTRL	=	0x00b7
_SCR_SCR_HWCFG	=	0x00f8
_SCR_DBG_MODSUSP	=	0x00f9
_SCR_ADCOMP_RES	=	0x00fa
_SCR_ADCOMP_CON	=	0x00fb
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.section .xdata.i51,"aw" ;xdata_name ;area
_IfxScrPort_configurePortControl_PARM_2:
	.ds.b	1
_IfxScrPort_configurePortControl_PARM_3:
	.ds.b	1
_IfxScrPort_configurePortControl_port_65536_33:
	.ds.b	1
_SCR_Port_EnablePortPad_PARM_2:
	.ds.b	1
_SCR_Port_EnablePortPad_port_65536_43:
	.ds.b	1
_SCR_GPIO_EnablePortPad_port_65536_47:
	.ds.b	2
;--------------------------------------------------------
; code
;--------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_config'
;------------------------------------------------------------
;	../SCR/SCR_Port_Pin_Config.c:78: void gpio_config(void){
;	-----------------------------------------
;	 function gpio_config
;	-----------------------------------------
	.section .text.code.gpio_config,"ax" ;code for function gpio_config
	.type   gpio_config, @function
_gpio_config:
	.using 0
;	../SCR/SCR_Port_Pin_Config.c:81: IfxScrPort_configurePortControl(SCR_Port0_Index_00,SCR_Port_PinIndex_2 ,SCR_IoControl_output_pushpullGpio );
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_IfxScrPort_configurePortControl
;	../SCR/SCR_Port_Pin_Config.c:82: IfxScrPort_configurePortControl(SCR_Port0_Index_00,SCR_Port_PinIndex_3 ,SCR_IoControl_output_pushpullGpio );
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_IfxScrPort_configurePortControl
;	../SCR/SCR_Port_Pin_Config.c:83: IfxScrPort_configurePortControl(SCR_Port0_Index_00,SCR_Port_PinIndex_4 ,SCR_IoControl_output_pushpullGpio );
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_IfxScrPort_configurePortControl
.00101:
;	../SCR/SCR_Port_Pin_Config.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IfxScrPort_configurePortControl'
;------------------------------------------------------------
;pinIndex                  Allocated with name '_IfxScrPort_configurePortControl_PARM_2'
;controlValue              Allocated with name '_IfxScrPort_configurePortControl_PARM_3'
;port                      Allocated with name '_IfxScrPort_configurePortControl_port_65536_33'
;------------------------------------------------------------
;	../SCR/SCR_Port_Pin_Config.c:88: void IfxScrPort_configurePortControl(unsigned char port, unsigned char pinIndex,unsigned char controlValue)
;	-----------------------------------------
;	 function IfxScrPort_configurePortControl
;	-----------------------------------------
	.section .text.code.IfxScrPort_configurePortControl,"ax" ;code for function IfxScrPort_configurePortControl
	.type   IfxScrPort_configurePortControl, @function
_IfxScrPort_configurePortControl:
	.using 0
	mov	a,dpl
	mov	dptr,#_IfxScrPort_configurePortControl_port_65536_33
	movx	@dptr,a
;	../SCR/SCR_Port_Pin_Config.c:90: SCR_IO_PAGE = 1;        //Switch to page 1
	mov	_SCR_IO_PAGE,#0x01
;	../SCR/SCR_Port_Pin_Config.c:92: SCR_IO_PAGE = SCR_IO_PAGE2;        //Switch to page 2
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/SCR_Port_Pin_Config.c:93: SCR_P00_PDISC = 0x00;
	mov	_SCR_P00_PDISC,#0x00
;	../SCR/SCR_Port_Pin_Config.c:94: SCR_P01_PDISC = 0x00;
	mov	_SCR_P01_PDISC,#0x00
;	../SCR/SCR_Port_Pin_Config.c:95: if (port == SCR_Port0_Index_00)
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	.00124
.00152:
;	../SCR/SCR_Port_Pin_Config.c:97: if(pinIndex == SCR_Port_PinIndex_2){ SCR_P00_IOCR2 = controlValue;   }
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_2
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,.00153
	sjmp	.00154
.00153:
	sjmp	.00109
.00154:
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR2,a
	ljmp	.00126
.00109:
;	../SCR/SCR_Port_Pin_Config.c:98: else if(pinIndex == SCR_Port_PinIndex_3){ SCR_P00_IOCR3 = controlValue;   }
	cjne	r6,#0x03,.00155
	sjmp	.00156
.00155:
	sjmp	.00106
.00156:
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR3,a
	ljmp	.00126
.00106:
;	../SCR/SCR_Port_Pin_Config.c:99: else if(pinIndex == SCR_Port_PinIndex_4){   SCR_P00_IOCR4 = controlValue;  }
	cjne	r6,#0x04,.00157
	sjmp	.00158
.00157:
	ljmp	.00126
.00158:
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR4,a
	sjmp	.00126
.00124:
;	../SCR/SCR_Port_Pin_Config.c:134: else if (port == SCR_Port1_Index_01)
	cjne	r7,#0x01,.00159
	sjmp	.00160
.00159:
	sjmp	.00126
.00160:
;	../SCR/SCR_Port_Pin_Config.c:136: switch (pinIndex)
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x07
	jc	.00126
.00161:
	mov	a,r7
	add	a,r7
;	../SCR/SCR_Port_Pin_Config.c:138: case SCR_Port_PinIndex_0:
	mov	dptr,#.00162
	jmp	@a+dptr
.00162:
	sjmp	.00111
	sjmp	.00112
	sjmp	.00113
	sjmp	.00114
	sjmp	.00115
	sjmp	.00116
	sjmp	.00117
	sjmp	.00118
.00111:
;	../SCR/SCR_Port_Pin_Config.c:139: SCR_P00_IOCR0 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR0,a
;	../SCR/SCR_Port_Pin_Config.c:140: break;
;	../SCR/SCR_Port_Pin_Config.c:141: case SCR_Port_PinIndex_1:
	sjmp	.00126
.00112:
;	../SCR/SCR_Port_Pin_Config.c:142: SCR_P00_IOCR1 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR1,a
;	../SCR/SCR_Port_Pin_Config.c:143: break;
;	../SCR/SCR_Port_Pin_Config.c:144: case SCR_Port_PinIndex_2:
	sjmp	.00126
.00113:
;	../SCR/SCR_Port_Pin_Config.c:145: SCR_P00_IOCR2 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR2,a
;	../SCR/SCR_Port_Pin_Config.c:146: break;
;	../SCR/SCR_Port_Pin_Config.c:147: case SCR_Port_PinIndex_3:
	sjmp	.00126
.00114:
;	../SCR/SCR_Port_Pin_Config.c:148: SCR_P00_IOCR3 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR3,a
;	../SCR/SCR_Port_Pin_Config.c:149: break;
;	../SCR/SCR_Port_Pin_Config.c:150: case SCR_Port_PinIndex_4:
	sjmp	.00126
.00115:
;	../SCR/SCR_Port_Pin_Config.c:151: SCR_P00_IOCR4 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR4,a
;	../SCR/SCR_Port_Pin_Config.c:152: break;
;	../SCR/SCR_Port_Pin_Config.c:153: case SCR_Port_PinIndex_5:
	sjmp	.00126
.00116:
;	../SCR/SCR_Port_Pin_Config.c:154: SCR_P00_IOCR5 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR5,a
;	../SCR/SCR_Port_Pin_Config.c:155: break;
;	../SCR/SCR_Port_Pin_Config.c:156: case SCR_Port_PinIndex_6:
	sjmp	.00126
.00117:
;	../SCR/SCR_Port_Pin_Config.c:157: SCR_P00_IOCR6 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR6,a
;	../SCR/SCR_Port_Pin_Config.c:158: break;
;	../SCR/SCR_Port_Pin_Config.c:159: case SCR_Port_PinIndex_7:
	sjmp	.00126
.00118:
;	../SCR/SCR_Port_Pin_Config.c:160: SCR_P00_IOCR7 = controlValue;
	mov	dptr,#_IfxScrPort_configurePortControl_PARM_3
	movx	a,@dptr
	mov	_SCR_P00_IOCR7,a
;	../SCR/SCR_Port_Pin_Config.c:165: }
.00126:
;	../SCR/SCR_Port_Pin_Config.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_Port_EnablePortPad'
;------------------------------------------------------------
;pinIndex                  Allocated with name '_SCR_Port_EnablePortPad_PARM_2'
;port                      Allocated with name '_SCR_Port_EnablePortPad_port_65536_43'
;------------------------------------------------------------
;	../SCR/SCR_Port_Pin_Config.c:172: void SCR_Port_EnablePortPad(unsigned char port, unsigned char pinIndex)
;	-----------------------------------------
;	 function SCR_Port_EnablePortPad
;	-----------------------------------------
	.section .text.code.SCR_Port_EnablePortPad,"ax" ;code for function SCR_Port_EnablePortPad
	.type   SCR_Port_EnablePortPad, @function
_SCR_Port_EnablePortPad:
	.using 0
	mov	a,dpl
	mov	dptr,#_SCR_Port_EnablePortPad_port_65536_43
	movx	@dptr,a
;	../SCR/SCR_Port_Pin_Config.c:174: SCR_IO_PAGE = 2;
	mov	_SCR_IO_PAGE,#0x02
;	../SCR/SCR_Port_Pin_Config.c:176: if (port == SCR_Port0_Index_00)
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	.00164
.00177:
;	../SCR/SCR_Port_Pin_Config.c:178: SCR_P00_PDISC = 0x00;
	mov	_SCR_P00_PDISC,#0x00
.00164:
;	../SCR/SCR_Port_Pin_Config.c:180: if  (port == SCR_Port1_Index_01)
	cjne	r7,#0x01,.00178
	sjmp	.00179
.00178:
	sjmp	.00167
.00179:
;	../SCR/SCR_Port_Pin_Config.c:182: SCR_P01_PDISC = 0x00;
	mov	_SCR_P01_PDISC,#0x00
.00167:
;	../SCR/SCR_Port_Pin_Config.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_GPIO_EnablePortPad'
;------------------------------------------------------------
;port                      Allocated with name '_SCR_GPIO_EnablePortPad_port_65536_47'
;------------------------------------------------------------
;	../SCR/SCR_Port_Pin_Config.c:188: void SCR_GPIO_EnablePortPad(unsigned int port)
;	-----------------------------------------
;	 function SCR_GPIO_EnablePortPad
;	-----------------------------------------
	.section .text.code.SCR_GPIO_EnablePortPad,"ax" ;code for function SCR_GPIO_EnablePortPad
	.type   SCR_GPIO_EnablePortPad, @function
_SCR_GPIO_EnablePortPad:
	.using 0
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_SCR_GPIO_EnablePortPad_port_65536_47
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../SCR/SCR_Port_Pin_Config.c:190: SCR_IO_PAGE = 2;
	mov	_SCR_IO_PAGE,#0x02
;	../SCR/SCR_Port_Pin_Config.c:192: if (port == SCR_Port0_Index_00)
	mov	dptr,#_SCR_GPIO_EnablePortPad_port_65536_47
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SCR_GPIO_EnablePortPad_port_65536_47
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	.00181
.00194:
;	../SCR/SCR_Port_Pin_Config.c:194: SCR_P00_PDISC = 0x00;
	mov	_SCR_P00_PDISC,#0x00
.00181:
;	../SCR/SCR_Port_Pin_Config.c:196: if  (port == SCR_Port1_Index_01)
	cjne	r6,#0x01,.00195
	cjne	r7,#0x00,.00195
	sjmp	.00196
.00195:
	sjmp	.00184
.00196:
;	../SCR/SCR_Port_Pin_Config.c:198: SCR_P01_PDISC = 0x00;
	mov	_SCR_P01_PDISC,#0x00
.00184:
;	../SCR/SCR_Port_Pin_Config.c:201: }
	ret
