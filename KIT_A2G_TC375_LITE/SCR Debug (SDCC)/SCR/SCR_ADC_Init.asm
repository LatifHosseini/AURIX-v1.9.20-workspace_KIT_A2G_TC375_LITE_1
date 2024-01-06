;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13448 (MINGW32)
;--------------------------------------------------------
	.file	"SCR_ADC_Init.c"
;	.optsdcc -mmcs51
	; --model-large

	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl	_SCR_ADC_IsSampling
	.globl	_SCR_ADC_EnableModulTriggerDumyConversion
	.globl	_SCR_ADC_DisableModule
	.globl	_SCR_ADC_IsEnabled
	.globl	_SCR_ADC_isReadyForNewConversion
	.globl	_SCR_ADC_SelectChannel
	.globl	_SCR_ADC_StartNewConversion
	.globl	_SCR_ADC_IsResultValid
	.globl	_SCR_ADC_GetResult
	.globl	_SCR_ADC_StartNewConversionGetResult
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
_SCR_ADC_SelectChannel_channel_65536_44:
	.ds.b	1
_SCR_ADC_IsResultValid_return_char_65536_49:
	.ds.b	1
_SCR_ADC_GetResult_return_result_65536_52:
	.ds.b	1
_SCR_ADC_StartNewConversionGetResult_Result_65536_54:
	.ds.b	1
;--------------------------------------------------------
; code
;--------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_IsSampling'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:64: unsigned char SCR_ADC_IsSampling(void)
;	-----------------------------------------
;	 function SCR_ADC_IsSampling
;	-----------------------------------------
	.section .text.code.SCR_ADC_IsSampling,"ax" ;code for function SCR_ADC_IsSampling
	.type   SCR_ADC_IsSampling, @function
_SCR_ADC_IsSampling:
	.using 0
;	../SCR/SCR_ADC_Init.c:66: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:67: return  (SCR_ADCOMP_CON & EOCSAMPLE);
	mov	a,_SCR_ADCOMP_CON
	anl	a,#0x40
;	../SCR/SCR_ADC_Init.c:68: }
	mov	dpl,a
.00101:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_EnableModulTriggerDumyConversion'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:71: void SCR_ADC_EnableModulTriggerDumyConversion(void){
;	-----------------------------------------
;	 function SCR_ADC_EnableModulTriggerDumyConversion
;	-----------------------------------------
	.section .text.code.SCR_ADC_EnableModulTriggerDumyConversion,"ax" ;code for function SCR_ADC_EnableModulTriggerDumyConversion
	.type   SCR_ADC_EnableModulTriggerDumyConversion, @function
_SCR_ADC_EnableModulTriggerDumyConversion:
	.using 0
;	../SCR/SCR_ADC_Init.c:73: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:74: SCR_ADCOMP_CON |= (1 << ADCENREQ) ; // Enable ADC
	orl	_SCR_ADCOMP_CON,#0x01
;	../SCR/SCR_ADC_Init.c:76: while (!(SCR_ADC_IsEnabled()))  {}
.00103:
	lcall	_SCR_ADC_IsEnabled
	mov	a,dpl
	jz	.00103
.00123:
;	../SCR/SCR_ADC_Init.c:78: SCR_ADCOMP_CON |= (1 << SOC);
	orl	_SCR_ADCOMP_CON,#0x80
;	../SCR/SCR_ADC_Init.c:80: while(!(SCR_ADC_IsSampling())){}
.00106:
	lcall	_SCR_ADC_IsSampling
	mov	a,dpl
	jz	.00106
.00124:
.00109:
;	../SCR/SCR_ADC_Init.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_DisableModule'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:83: void SCR_ADC_DisableModule(void){
;	-----------------------------------------
;	 function SCR_ADC_DisableModule
;	-----------------------------------------
	.section .text.code.SCR_ADC_DisableModule,"ax" ;code for function SCR_ADC_DisableModule
	.type   SCR_ADC_DisableModule, @function
_SCR_ADC_DisableModule:
	.using 0
;	../SCR/SCR_ADC_Init.c:84: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:85: SCR_ADCOMP_CON &= ~(1 << ADCENREQ) ; // Disable ADC
	anl	_SCR_ADCOMP_CON,#0xFE
.00125:
;	../SCR/SCR_ADC_Init.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_IsEnabled'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:88: unsigned char SCR_ADC_IsEnabled(void){
;	-----------------------------------------
;	 function SCR_ADC_IsEnabled
;	-----------------------------------------
	.section .text.code.SCR_ADC_IsEnabled,"ax" ;code for function SCR_ADC_IsEnabled
	.type   SCR_ADC_IsEnabled, @function
_SCR_ADC_IsEnabled:
	.using 0
;	../SCR/SCR_ADC_Init.c:89: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:90: return(SCR_ADCOMP_CON & ADCENST);
	mov	a,_SCR_ADCOMP_CON
	anl	a,#0x02
;	../SCR/SCR_ADC_Init.c:91: }
	mov	dpl,a
.00127:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_isReadyForNewConversion'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:92: unsigned char SCR_ADC_isReadyForNewConversion(void){
;	-----------------------------------------
;	 function SCR_ADC_isReadyForNewConversion
;	-----------------------------------------
	.section .text.code.SCR_ADC_isReadyForNewConversion,"ax" ;code for function SCR_ADC_isReadyForNewConversion
	.type   SCR_ADC_isReadyForNewConversion, @function
_SCR_ADC_isReadyForNewConversion:
	.using 0
;	../SCR/SCR_ADC_Init.c:93: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:94: return(SCR_ADCOMP_CON & VF);
	mov	a,_SCR_ADCOMP_CON
	anl	a,#0x20
;	../SCR/SCR_ADC_Init.c:95: }
	mov	dpl,a
.00129:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_SelectChannel'
;------------------------------------------------------------
;channel                   Allocated with name '_SCR_ADC_SelectChannel_channel_65536_44'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:96: void SCR_ADC_SelectChannel(SCR_ADC_Chanel_Select channel){
;	-----------------------------------------
;	 function SCR_ADC_SelectChannel
;	-----------------------------------------
	.section .text.code.SCR_ADC_SelectChannel,"ax" ;code for function SCR_ADC_SelectChannel
	.type   SCR_ADC_SelectChannel, @function
_SCR_ADC_SelectChannel:
	.using 0
	mov	a,dpl
	mov	dptr,#_SCR_ADC_SelectChannel_channel_65536_44
	movx	@dptr,a
;	../SCR/SCR_ADC_Init.c:97: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:98: SCR_ADCOMP_CON |= (channel << ADCCHSEL) ; // select ADC Chanel
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r7,a
	orl	_SCR_ADCOMP_CON,a
.00131:
;	../SCR/SCR_ADC_Init.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_StartNewConversion'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:100: void SCR_ADC_StartNewConversion(void){
;	-----------------------------------------
;	 function SCR_ADC_StartNewConversion
;	-----------------------------------------
	.section .text.code.SCR_ADC_StartNewConversion,"ax" ;code for function SCR_ADC_StartNewConversion
	.type   SCR_ADC_StartNewConversion, @function
_SCR_ADC_StartNewConversion:
	.using 0
;	../SCR/SCR_ADC_Init.c:101: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:102: SCR_ADCOMP_CON |= (1 << SOC);
	orl	_SCR_ADCOMP_CON,#0x80
.00133:
;	../SCR/SCR_ADC_Init.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_IsResultValid'
;------------------------------------------------------------
;return_char               Allocated with name '_SCR_ADC_IsResultValid_return_char_65536_49'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:105: unsigned char SCR_ADC_IsResultValid(void)
;	-----------------------------------------
;	 function SCR_ADC_IsResultValid
;	-----------------------------------------
	.section .text.code.SCR_ADC_IsResultValid,"ax" ;code for function SCR_ADC_IsResultValid
	.type   SCR_ADC_IsResultValid, @function
_SCR_ADC_IsResultValid:
	.using 0
;	../SCR/SCR_ADC_Init.c:107: unsigned char return_char = ADCNORESULTORINVALID;
	mov	dptr,#_SCR_ADC_IsResultValid_return_char_65536_49
	clr	a
	movx	@dptr,a
;	../SCR/SCR_ADC_Init.c:109: SCR_SCU_PAGE = 0;
;	1-genFromRTrack replaced	mov	_SCR_SCU_PAGE,#0x00
	mov	_SCR_SCU_PAGE,a
;	../SCR/SCR_ADC_Init.c:110: if ((SCR_ADCOMP_CON & 0x60) == 0x60)//  in Bit 01100000  VF and EOCSAMPLE
	mov	r6,_SCR_ADCOMP_CON
	anl	ar6,#0x60
	mov	r7,#0x00
	cjne	r6,#0x60,.00143
	cjne	r7,#0x00,.00143
	sjmp	.00144
.00143:
	sjmp	.00136
.00144:
;	../SCR/SCR_ADC_Init.c:112: return_char = ADCRESULTVALID;
	mov	dptr,#_SCR_ADC_IsResultValid_return_char_65536_49
	mov	a,#0x01
	movx	@dptr,a
.00136:
;	../SCR/SCR_ADC_Init.c:114: return return_char;
	mov	dptr,#_SCR_ADC_IsResultValid_return_char_65536_49
	movx	a,@dptr
;	../SCR/SCR_ADC_Init.c:115: }
	mov	dpl,a
.00137:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_GetResult'
;------------------------------------------------------------
;return_result             Allocated with name '_SCR_ADC_GetResult_return_result_65536_52'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:117: unsigned char SCR_ADC_GetResult(void){
;	-----------------------------------------
;	 function SCR_ADC_GetResult
;	-----------------------------------------
	.section .text.code.SCR_ADC_GetResult,"ax" ;code for function SCR_ADC_GetResult
	.type   SCR_ADC_GetResult, @function
_SCR_ADC_GetResult:
	.using 0
;	../SCR/SCR_ADC_Init.c:120: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/SCR_ADC_Init.c:121: return_result = SCR_ADCOMP_RES;
	mov	dptr,#_SCR_ADC_GetResult_return_result_65536_52
	mov	a,_SCR_ADCOMP_RES
	movx	@dptr,a
;	../SCR/SCR_ADC_Init.c:122: return return_result;
	movx	a,@dptr
;	../SCR/SCR_ADC_Init.c:123: }
	mov	dpl,a
.00145:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCR_ADC_StartNewConversionGetResult'
;------------------------------------------------------------
;Result                    Allocated with name '_SCR_ADC_StartNewConversionGetResult_Result_65536_54'
;ADC_Timeout               Allocated with name '_SCR_ADC_StartNewConversionGetResult_ADC_Timeout_65536_54'
;------------------------------------------------------------
;	../SCR/SCR_ADC_Init.c:124: unsigned char SCR_ADC_StartNewConversionGetResult(void){
;	-----------------------------------------
;	 function SCR_ADC_StartNewConversionGetResult
;	-----------------------------------------
	.section .text.code.SCR_ADC_StartNewConversionGetResult,"ax" ;code for function SCR_ADC_StartNewConversionGetResult
	.type   SCR_ADC_StartNewConversionGetResult, @function
_SCR_ADC_StartNewConversionGetResult:
	.using 0
;	../SCR/SCR_ADC_Init.c:126: unsigned char Result=0;
	mov	dptr,#_SCR_ADC_StartNewConversionGetResult_Result_65536_54
	clr	a
	movx	@dptr,a
;	../SCR/SCR_ADC_Init.c:128: SCR_ADC_StartNewConversion();
	lcall	_SCR_ADC_StartNewConversion
;	../SCR/SCR_ADC_Init.c:130: while ((SCR_ADC_IsResultValid() != ADCRESULTVALID) && (ADC_Timeout <= 10u))//5microsec Timeout
	mov	r7,#0x00
.00148:
	push	ar7
	lcall	_SCR_ADC_IsResultValid
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,.00166
	sjmp	.00150
.00166:
	mov	a,r7
	add	a,#0xff - 0x0A
	jc	.00150
.00167:
;	../SCR/SCR_ADC_Init.c:132: Result = SCR_ADC_GetResult();
	push	ar7
	lcall	_SCR_ADC_GetResult
	mov	a,dpl
	pop	ar7
	mov	dptr,#_SCR_ADC_StartNewConversionGetResult_Result_65536_54
	movx	@dptr,a
;	../SCR/SCR_ADC_Init.c:133: ADC_Timeout++;
	inc	r7
	sjmp	.00148
.00150:
;	../SCR/SCR_ADC_Init.c:135: return Result;
	mov	dptr,#_SCR_ADC_StartNewConversionGetResult_Result_65536_54
	movx	a,@dptr
;	../SCR/SCR_ADC_Init.c:136: }
	mov	dpl,a
.00151:
	ret
