;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13448 (MINGW32)
;--------------------------------------------------------
	.file	"Duty_Cycle_Calculations.c"
;	.optsdcc -mmcs51
	; --model-large

	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl	_delay
	.globl	_duty_cycle
	.globl	_Capture_Value_2
	.globl	_Capture_Value_1
	.globl	_Capture_Value_sum
	.globl	_multiplication_16bit_by_8bit_Result
	.globl	_Duty_Cycle_Calculator_Function
	.globl	_Measure_PWM_duty_cycle
	.globl	_multiply_16bit_by_8bit
	.globl	_add_two_16_bit_unint
	.globl	_CCT_Read_PWM_OnTime
	.globl	_CCT_Read_PWM_OffTime
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
; internal ram data
;--------------------------------------------------------
	.section .ddata.i51,"aw" ;data_name ;area
_multiply_16bit_by_8bit_sloc0_1_0:
	.ds.b	4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.section .xdata.i51,"aw" ;xdata_name ;area
_multiplication_16bit_by_8bit_Result:
	.ds.b	4
_Capture_Value_sum:
	.ds.b	2
_Duty_Cycle_Calculator_Function_Data_65536_104	=	0x1f00
_Measure_PWM_duty_cycle_quotient_65536_107:
	.ds.b	4
_Measure_PWM_duty_cycle_remainder_65536_107:
	.ds.b	4
_multiply_16bit_by_8bit_result_65536_112:
	.ds.b	4
_add_two_16_bit_unint_carry_65536_118:
	.ds.b	1
_add_two_16_bit_unint_result_65536_118:
	.ds.b	2
_add_two_16_bit_unint_sumBit_196608_120:
	.ds.b	1
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.section .xdata.init,"aw" ;xidata_name ;area
_Capture_Value_1:
	.ds.b	2
_Capture_Value_2:
	.ds.b	2
_duty_cycle:
	.ds.b	2
;--------------------------------------------------------
; code
;--------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'Duty_Cycle_Calculator_Function'
;------------------------------------------------------------
;Data                      Allocated with name '_Duty_Cycle_Calculator_Function_Data_65536_104'
;------------------------------------------------------------
;	../SCR/Duty_Cycle_Calculations.c:59: void Duty_Cycle_Calculator_Function(void)
;	-----------------------------------------
;	 function Duty_Cycle_Calculator_Function
;	-----------------------------------------
	.section .text.code.Duty_Cycle_Calculator_Function,"ax" ;code for function Duty_Cycle_Calculator_Function
	.type   Duty_Cycle_Calculator_Function, @function
_Duty_Cycle_Calculator_Function:
	.using 0
;	../SCR/Duty_Cycle_Calculations.c:62: Capture_Value_1 = 0x0FFF;
	mov	dptr,#_Capture_Value_1
	mov	a,#0xFF
	movx	@dptr,a
	mov	a,#0x0F
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:63: Capture_Value_2 = 0xEFFF;
	mov	dptr,#_Capture_Value_2
	mov	a,#0xFF
	movx	@dptr,a
	mov	a,#0xEF
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:66: Measure_PWM_duty_cycle();
	lcall	_Measure_PWM_duty_cycle
;	../SCR/Duty_Cycle_Calculations.c:67: if( multiplication_16bit_by_8bit_Result >281000) {
	mov	dptr,#_multiplication_16bit_by_8bit_Result
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xA8
	subb	a,r4
	mov	a,#0x49
	subb	a,r5
	mov	a,#0x04
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	.00102
.00109:
;	../SCR/Duty_Cycle_Calculations.c:68: SCR_P00_OUT  ^= (1 << 7) ;
	xrl	_SCR_P00_OUT,#0x80
;	../SCR/Duty_Cycle_Calculations.c:69: delay();
	lcall	_delay
.00102:
;	../SCR/Duty_Cycle_Calculations.c:71: Data = duty_cycle;
	mov	dptr,#_duty_cycle
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_Duty_Cycle_Calculator_Function_Data_65536_104
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:72: delay();
	lcall	_delay
.00103:
;	../SCR/Duty_Cycle_Calculations.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Measure_PWM_duty_cycle'
;------------------------------------------------------------
;dividend                  Allocated with name '_Measure_PWM_duty_cycle_dividend_65536_107'
;divisor                   Allocated with name '_Measure_PWM_duty_cycle_divisor_65536_107'
;quotient                  Allocated with name '_Measure_PWM_duty_cycle_quotient_65536_107'
;remainder                 Allocated with name '_Measure_PWM_duty_cycle_remainder_65536_107'
;bit                       Allocated with name '_Measure_PWM_duty_cycle_bit_131072_108'
;------------------------------------------------------------
;	../SCR/Duty_Cycle_Calculations.c:76: void Measure_PWM_duty_cycle(void)
;	-----------------------------------------
;	 function Measure_PWM_duty_cycle
;	-----------------------------------------
	.section .text.code.Measure_PWM_duty_cycle,"ax" ;code for function Measure_PWM_duty_cycle
	.type   Measure_PWM_duty_cycle, @function
_Measure_PWM_duty_cycle:
	.using 0
;	../SCR/Duty_Cycle_Calculations.c:80: uint32_t quotient = 0;
	mov	dptr,#_Measure_PWM_duty_cycle_quotient_65536_107
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:81: uint32_t remainder = 0;
	mov	dptr,#_Measure_PWM_duty_cycle_remainder_65536_107
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:82: for (int bit = 31; bit >= 0; bit--) {
	mov	r6,#0x1F
	mov	r7,#0x00
.00114:
	mov	a,r7
	jnb	acc.7,.00131
	ljmp	.00112
.00131:
;	../SCR/Duty_Cycle_Calculations.c:83: remainder <<= 1;
	mov	dptr,#_Measure_PWM_duty_cycle_remainder_65536_107
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_Measure_PWM_duty_cycle_remainder_65536_107
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:84: remainder |= (dividend >> bit) & 0x01;
	mov	b,r6
	inc	b
	mov	r2,#0x9C
	mov	r3,#0x3F
	mov	r4,#0x06
	mov	r5,#0x00
	sjmp	.00133
.00132:
	clr	c
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
.00133:
	djnz	b,.00132
	anl	ar2,#0x01
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dptr,#_Measure_PWM_duty_cycle_remainder_65536_107
	movx	a,@dptr
	orl	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:85: if (remainder >= divisor) {
	mov	dptr,#_Measure_PWM_duty_cycle_remainder_65536_107
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r2
	subb	a,#0xFF
	mov	a,r3
	subb	a,#0x0F
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	jc	.00115
.00134:
;	../SCR/Duty_Cycle_Calculations.c:86: remainder -= divisor;
	mov	a,r2
	add	a,#0x01
	mov	r2,a
	mov	a,r3
	addc	a,#0xF0
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	dptr,#_Measure_PWM_duty_cycle_remainder_65536_107
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:87: quotient |= (1UL << bit);
	mov	ar5,r6
	mov	b,r5
	inc	b
	mov	r5,#0x01
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	sjmp	.00136
.00135:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	rlc	a
	mov	r2,a
.00136:
	djnz	b,.00135
	mov	dptr,#_Measure_PWM_duty_cycle_quotient_65536_107
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r2
	movx	@dptr,a
.00115:
;	../SCR/Duty_Cycle_Calculations.c:82: for (int bit = 31; bit >= 0; bit--) {
	dec	r6
	cjne	r6,#0xFF,.00137
	dec	r7
.00137:
	ljmp	.00114
.00112:
;	../SCR/Duty_Cycle_Calculations.c:90: duty_cycle = quotient;
	mov	dptr,#_Measure_PWM_duty_cycle_quotient_65536_107
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_duty_cycle
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
.00116:
;	../SCR/Duty_Cycle_Calculations.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'multiply_16bit_by_8bit'
;------------------------------------------------------------
;sloc0                     Allocated with name '_multiply_16bit_by_8bit_sloc0_1_0'
;multiplicand              Allocated with name '_multiply_16bit_by_8bit_multiplicand_65536_112'
;multiplier                Allocated with name '_multiply_16bit_by_8bit_multiplier_65536_112'
;result                    Allocated with name '_multiply_16bit_by_8bit_result_65536_112'
;i                         Allocated with name '_multiply_16bit_by_8bit_i_131072_113'
;------------------------------------------------------------
;	../SCR/Duty_Cycle_Calculations.c:93: void multiply_16bit_by_8bit(void)
;	-----------------------------------------
;	 function multiply_16bit_by_8bit
;	-----------------------------------------
	.section .text.code.multiply_16bit_by_8bit,"ax" ;code for function multiply_16bit_by_8bit
	.type   multiply_16bit_by_8bit, @function
_multiply_16bit_by_8bit:
	.using 0
;	../SCR/Duty_Cycle_Calculations.c:97: unsigned long result = 0;
	mov	dptr,#_multiply_16bit_by_8bit_result_65536_112
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:98: for (int i = 0; i < 8; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
.00142:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	.00140
.00159:
;	../SCR/Duty_Cycle_Calculations.c:99: if (multiplier & (1 << i)) {
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	.00161
.00160:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
.00161:
	djnz	b,.00160
	mov	a,r4
	anl	a,#0x64
	jz	.00143
.00162:
;	../SCR/Duty_Cycle_Calculations.c:104: result += multiplicand << i;
	mov	ar5,r6
	mov	b,r5
	inc	b
	mov	_multiply_16bit_by_8bit_sloc0_1_0,#0xFF
	mov	(_multiply_16bit_by_8bit_sloc0_1_0 + 1),#0x0F
	mov	(_multiply_16bit_by_8bit_sloc0_1_0 + 2),#0x00
	mov	(_multiply_16bit_by_8bit_sloc0_1_0 + 3),#0x00
	sjmp	.00164
.00163:
	mov	a,_multiply_16bit_by_8bit_sloc0_1_0
	add	a,_multiply_16bit_by_8bit_sloc0_1_0
	mov	_multiply_16bit_by_8bit_sloc0_1_0,a
	mov	a,(_multiply_16bit_by_8bit_sloc0_1_0 + 1)
	rlc	a
	mov	(_multiply_16bit_by_8bit_sloc0_1_0 + 1),a
	mov	a,(_multiply_16bit_by_8bit_sloc0_1_0 + 2)
	rlc	a
	mov	(_multiply_16bit_by_8bit_sloc0_1_0 + 2),a
	mov	a,(_multiply_16bit_by_8bit_sloc0_1_0 + 3)
	rlc	a
	mov	(_multiply_16bit_by_8bit_sloc0_1_0 + 3),a
.00164:
	djnz	b,.00163
	mov	dptr,#_multiply_16bit_by_8bit_result_65536_112
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_multiply_16bit_by_8bit_result_65536_112
	mov	a,_multiply_16bit_by_8bit_sloc0_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(_multiply_16bit_by_8bit_sloc0_1_0 + 1)
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_multiply_16bit_by_8bit_sloc0_1_0 + 2)
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,(_multiply_16bit_by_8bit_sloc0_1_0 + 3)
	addc	a,r5
	inc	dptr
	movx	@dptr,a
.00143:
;	../SCR/Duty_Cycle_Calculations.c:98: for (int i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x00,.00142
	inc	r7
.00165:
	sjmp	.00142
.00140:
;	../SCR/Duty_Cycle_Calculations.c:107: multiplication_16bit_by_8bit_Result =  result;
	mov	dptr,#_multiply_16bit_by_8bit_result_65536_112
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_multiplication_16bit_by_8bit_Result
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
.00144:
;	../SCR/Duty_Cycle_Calculations.c:108: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_two_16_bit_unint'
;------------------------------------------------------------
;a                         Allocated with name '_add_two_16_bit_unint_a_65536_118'
;b                         Allocated with name '_add_two_16_bit_unint_b_65536_118'
;carry                     Allocated with name '_add_two_16_bit_unint_carry_65536_118'
;result                    Allocated with name '_add_two_16_bit_unint_result_65536_118'
;i                         Allocated with name '_add_two_16_bit_unint_i_131072_119'
;bitA                      Allocated with name '_add_two_16_bit_unint_bitA_196608_120'
;bitB                      Allocated with name '_add_two_16_bit_unint_bitB_196608_120'
;sumBit                    Allocated with name '_add_two_16_bit_unint_sumBit_196608_120'
;------------------------------------------------------------
;	../SCR/Duty_Cycle_Calculations.c:110: void add_two_16_bit_unint(void)// test was success
;	-----------------------------------------
;	 function add_two_16_bit_unint
;	-----------------------------------------
	.section .text.code.add_two_16_bit_unint,"ax" ;code for function add_two_16_bit_unint
	.type   add_two_16_bit_unint, @function
_add_two_16_bit_unint:
	.using 0
;	../SCR/Duty_Cycle_Calculations.c:112: unsigned int a = Capture_Value_1;
	mov	dptr,#_Capture_Value_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../SCR/Duty_Cycle_Calculations.c:113: unsigned int b = Capture_Value_2;
	mov	dptr,#_Capture_Value_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../SCR/Duty_Cycle_Calculations.c:114: uint8_t carry = 0;
	mov	dptr,#_add_two_16_bit_unint_carry_65536_118
	clr	a
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:115: uint16_t result = 0;
	mov	dptr,#_add_two_16_bit_unint_result_65536_118
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:116: for (int i = 0; i < 16; ++i) {
	mov	r2,#0x00
	mov	r3,#0x00
.00168:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	.00181
	ljmp	.00166
.00181:
;	../SCR/Duty_Cycle_Calculations.c:117: uint8_t bitA = (a >> i) & 0x01;
	mov	b,r2
	inc	b
	mov	r0,ar6
	mov	r1,ar7
	sjmp	.00183
.00182:
	clr	c
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
.00183:
	djnz	b,.00182
	anl	ar0,#0x01
;	../SCR/Duty_Cycle_Calculations.c:118: uint8_t bitB = (b >> i) & 0x01;
	push	ar6
	push	ar7
	mov	b,r2
	inc	b
	mov	r1,ar4
	mov	r7,ar5
	sjmp	.00185
.00184:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r1
	rrc	a
	mov	r1,a
.00185:
	djnz	b,.00184
	anl	ar1,#0x01
;	../SCR/Duty_Cycle_Calculations.c:120: uint8_t sumBit = bitA ^ bitB ^ carry;
	mov	a,r1
	xrl	a,r0
	mov	r7,a
	mov	dptr,#_add_two_16_bit_unint_carry_65536_118
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_add_two_16_bit_unint_sumBit_196608_120
	xrl	a,r7
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:122: carry = (bitA & bitB) | ((bitA ^ bitB) & carry);
	mov	a,r1
	anl	ar0,a
	mov	a,r6
	anl	a,r7
	mov	dptr,#_add_two_16_bit_unint_carry_65536_118
	orl	a,r0
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:124: result |= (sumBit << i);
	mov	dptr,#_add_two_16_bit_unint_sumBit_196608_120
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	b,r2
	inc	b
	sjmp	.00187
.00186:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
.00187:
	djnz	b,.00186
	mov	dptr,#_add_two_16_bit_unint_result_65536_118
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	dptr,#_add_two_16_bit_unint_result_65536_118
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../SCR/Duty_Cycle_Calculations.c:116: for (int i = 0; i < 16; ++i) {
	inc	r2
	cjne	r2,#0x00,.00188
	inc	r3
.00188:
	pop	ar7
	pop	ar6
	ljmp	.00168
.00166:
;	../SCR/Duty_Cycle_Calculations.c:126: Capture_Value_sum = result;
	mov	dptr,#_add_two_16_bit_unint_result_65536_118
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_Capture_Value_sum
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
.00170:
;	../SCR/Duty_Cycle_Calculations.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CCT_Read_PWM_OnTime'
;------------------------------------------------------------
;	../SCR/Duty_Cycle_Calculations.c:129: void CCT_Read_PWM_OnTime(void)
;	-----------------------------------------
;	 function CCT_Read_PWM_OnTime
;	-----------------------------------------
	.section .text.code.CCT_Read_PWM_OnTime,"ax" ;code for function CCT_Read_PWM_OnTime
	.type   CCT_Read_PWM_OnTime, @function
_CCT_Read_PWM_OnTime:
	.using 0
;	../SCR/Duty_Cycle_Calculations.c:131: SCR_T2CCU_PAGE=2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/Duty_Cycle_Calculations.c:133: Capture_Value_1 |= (uint8)SCR_T2CCU_CC0L;
	mov	dptr,#_Capture_Value_1
	mov	a,_SCR_T2CCU_CC0L
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
.00189:
;	../SCR/Duty_Cycle_Calculations.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CCT_Read_PWM_OffTime'
;------------------------------------------------------------
;	../SCR/Duty_Cycle_Calculations.c:136: void CCT_Read_PWM_OffTime(void)
;	-----------------------------------------
;	 function CCT_Read_PWM_OffTime
;	-----------------------------------------
	.section .text.code.CCT_Read_PWM_OffTime,"ax" ;code for function CCT_Read_PWM_OffTime
	.type   CCT_Read_PWM_OffTime, @function
_CCT_Read_PWM_OffTime:
	.using 0
;	../SCR/Duty_Cycle_Calculations.c:138: SCR_T2CCU_PAGE=2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/Duty_Cycle_Calculations.c:140: Capture_Value_2 |= (uint8)SCR_T2CCU_CC0L;
	mov	dptr,#_Capture_Value_2
	mov	a,_SCR_T2CCU_CC0L
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
.00191:
;	../SCR/Duty_Cycle_Calculations.c:141: }
	ret
;--------------------------------------------------------
; xinit 
;--------------------------------------------------------
	.section .roxdata.init,"ax";xinit_name ;area
__xinit__Capture_Value_1:
	.byte #0x00, #0x00	; 0
__xinit__Capture_Value_2:
	.byte #0x00, #0x00	; 0
__xinit__duty_cycle:
	.byte #0x00, #0x00	; 0
