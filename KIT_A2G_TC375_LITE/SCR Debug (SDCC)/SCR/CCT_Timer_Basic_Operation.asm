;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13448 (MINGW32)
;--------------------------------------------------------
	.file	"CCT_Timer_Basic_Operation.c"
;	.optsdcc -mmcs51
	; --model-large

	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl	_CCT_Timer_Trigger_SW_Overflow
	.globl	_SCR_CCT_Timer_Basic_Operation
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
; code
;--------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_CCT_Timer_Basic_Operation'
;------------------------------------------------------------
;	../SCR/CCT_Timer_Basic_Operation.c:55: void SCR_CCT_Timer_Basic_Operation(void)
;	-----------------------------------------
;	 function SCR_CCT_Timer_Basic_Operation
;	-----------------------------------------
	.section .text.code.SCR_CCT_Timer_Basic_Operation,"ax" ;code for function SCR_CCT_Timer_Basic_Operation
	.type   SCR_CCT_Timer_Basic_Operation, @function
_SCR_CCT_Timer_Basic_Operation:
	.using 0
;	../SCR/CCT_Timer_Basic_Operation.c:58: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/CCT_Timer_Basic_Operation.c:59: SCR_T2CCU_CCTRELH = 0x00;// CCT Reload  H register
	mov	_SCR_T2CCU_CCTRELH,#0x00
;	../SCR/CCT_Timer_Basic_Operation.c:60: SCR_T2CCU_CCTRELL = 0x00;// CCT Reload  L register
	mov	_SCR_T2CCU_CCTRELL,#0x00
;	../SCR/CCT_Timer_Basic_Operation.c:62: SCR_T2CCU_CCTCON  |= (1 << 2) ;   //bit pos 2 enable CCT overflow interrupt
	orl	_SCR_T2CCU_CCTCON,#0x04
;	../SCR/CCT_Timer_Basic_Operation.c:63: SCR_T2CCU_CCTCON  |= (1 << 0) ;//bit pos 0 active CCT
	orl	_SCR_T2CCU_CCTCON,#0x01
;	../SCR/CCT_Timer_Basic_Operation.c:65: SCR_T2CCU_CCTCON = (SCR_T2CCU_CCTCON & (unsigned char)(~(0xF0 << 4))) | (0xB0); // CCT prescalee bit pos 4 - 7  and B = fPCLK / 2048
	orl	_SCR_T2CCU_CCTCON,#0xB0
;	../SCR/CCT_Timer_Basic_Operation.c:66: SCR_IEN0 |= (1 << 5) ; //IEN0.ET2  -> interrupt node 5;  bit pos 5  // PAGE: X
	orl	_SCR_IEN0,#0x20
.00101:
;	../SCR/CCT_Timer_Basic_Operation.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CCT_Timer_Trigger_SW_Overflow'
;------------------------------------------------------------
;	../SCR/CCT_Timer_Basic_Operation.c:71: void CCT_Timer_Trigger_SW_Overflow(void)
;	-----------------------------------------
;	 function CCT_Timer_Trigger_SW_Overflow
;	-----------------------------------------
	.section .text.code.CCT_Timer_Trigger_SW_Overflow,"ax" ;code for function CCT_Timer_Trigger_SW_Overflow
	.type   CCT_Timer_Trigger_SW_Overflow, @function
_CCT_Timer_Trigger_SW_Overflow:
	.using 0
;	../SCR/CCT_Timer_Basic_Operation.c:73: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/CCT_Timer_Basic_Operation.c:74: SCR_T2CCU_CCTBSEL |= (1 << 6) ;//bit pos 6
	orl	_SCR_T2CCU_CCTBSEL,#0x40
.00103:
;	../SCR/CCT_Timer_Basic_Operation.c:76: }
	ret
