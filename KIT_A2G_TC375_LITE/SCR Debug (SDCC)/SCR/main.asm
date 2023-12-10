;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13448 (MINGW32)
;--------------------------------------------------------
	.file	"main.c"
;	.optsdcc -mmcs51
	; --model-large

	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl	_EXINT5IS_interrupt
	.globl	_EXINT2IS_interrupt
	.globl	_main
	.globl	_SCR_CCU_Capture_Mode_0
	.globl	_SCR_CCT_Timer_Basic_Operation
	.globl	_SCR_Select_Interrupt_Priority
	.globl	_SCR_IR_Enable_Interrupt_Node
	.globl	_SCR_IR_Select_Edge_Mode
	.globl	_SCR_IR_Select_External_Interrupt_Line
	.globl	_gpio_init
	.globl	_Read_Capture_Register
	.globl	_Check_Pin_Stat
	.globl	_edge_counter
	.globl	_Duty_Cycle_Calculator
	.globl	_delay
	.globl	_Duty_Cycle_Calculator_Function
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
_data	=	0x1f00
_main_retunr_value_65536_98:
	.ds.b	2
_main_cnt_65536_98:
	.ds.b	2
_main_ADC_Stat_65536_98:
	.ds.b	1
_main_Capture_Value_1_65536_98:
	.ds.b	2
_main_Capture_Value_2_65536_98:
	.ds.b	2
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.section .xdata.init,"aw" ;xidata_name ;area
_Duty_Cycle_Calculator:
	.ds.b	1
_edge_counter:
	.ds.b	1
_Check_Pin_Stat:
	.ds.b	1
_Read_Capture_Register:
	.ds.b	1
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.globl _EXINT2IS_interrupt 
	.section .isr05, "ax"
	ljmp	_EXINT2IS_interrupt
	.globl _EXINT5IS_interrupt 
	.section .isr09, "ax"
	ljmp	_EXINT5IS_interrupt
;--------------------------------------------------------
; code
;--------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;retunr_value              Allocated with name '_main_retunr_value_65536_98'
;cnt                       Allocated with name '_main_cnt_65536_98'
;ADC_Stat                  Allocated with name '_main_ADC_Stat_65536_98'
;Capture_Value_1           Allocated with name '_main_Capture_Value_1_65536_98'
;Capture_Value_2           Allocated with name '_main_Capture_Value_2_65536_98'
;Capture_Value_sum         Allocated with name '_main_Capture_Value_sum_65536_98'
;Duty_Cycle                Allocated with name '_main_Duty_Cycle_65536_98'
;------------------------------------------------------------
;	../SCR/main.c:70: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
	.section .text.code.main,"ax" ;code for function main
	.type   main, @function
_main:
	.using 0
;	../SCR/main.c:72: volatile unsigned int retunr_value = 0;
	mov	dptr,#_main_retunr_value_65536_98
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:73: volatile unsigned int cnt = 0;
	mov	dptr,#_main_cnt_65536_98
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:74: volatile unsigned char ADC_Stat = 0;
	mov	dptr,#_main_ADC_Stat_65536_98
	movx	@dptr,a
;	../SCR/main.c:75: int Capture_Value_1 = 0;
	mov	dptr,#_main_Capture_Value_1_65536_98
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:76: int Capture_Value_2 = 0;
	mov	dptr,#_main_Capture_Value_2_65536_98
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:88: SCR_SCU_PAGE = 1;       //Switch to page 1
	mov	_SCR_SCU_PAGE,#0x01
;	../SCR/main.c:89: SCR_SCU_PMCON1 = 0x59;  //OCDS, T2CCU0, RTC and WCAN enabled
	mov	_SCR_SCU_PMCON1,#0x59
;	../SCR/main.c:91: SCR_SCU_PAGE = 0;       //Switch to page 0
;	1-genFromRTrack replaced	mov	_SCR_SCU_PAGE,#0x00
	mov	_SCR_SCU_PAGE,a
;	../SCR/main.c:92: SCR_SCRINTEXCHG = 0xA0;
	mov	_SCR_SCRINTEXCHG,#0xA0
;	../SCR/main.c:93: SCR_SCU_PAGE = 1;       //Switch to page 0
	mov	_SCR_SCU_PAGE,#0x01
;	../SCR/main.c:95: SCR_IEN0 |= (1 << 7) ; // enable global interrupt Set bit 7
	orl	_SCR_IEN0,#0x80
;	../SCR/main.c:97: gpio_init();
	lcall	_gpio_init
;	../SCR/main.c:98: SCR_IR_Select_External_Interrupt_Line();
	lcall	_SCR_IR_Select_External_Interrupt_Line
;	../SCR/main.c:99: SCR_IR_Select_Edge_Mode();
	lcall	_SCR_IR_Select_Edge_Mode
;	../SCR/main.c:100: SCR_IR_Enable_Interrupt_Node();
	lcall	_SCR_IR_Enable_Interrupt_Node
;	../SCR/main.c:101: SCR_Select_Interrupt_Priority();
	lcall	_SCR_Select_Interrupt_Priority
;	../SCR/main.c:105: SCR_CCT_Timer_Basic_Operation();
	lcall	_SCR_CCT_Timer_Basic_Operation
;	../SCR/main.c:107: SCR_CCU_Capture_Mode_0();
	lcall	_SCR_CCU_Capture_Mode_0
;	../SCR/main.c:109: while(1)
.00108:
;	../SCR/main.c:111: if(Duty_Cycle_Calculator == 1)// call Duty_Cycle_Calculator_Function
	mov	dptr,#_Duty_Cycle_Calculator
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,.00128
	sjmp	.00129
.00128:
	sjmp	.00102
.00129:
;	../SCR/main.c:114: Capture_Value_sum = Capture_Value_2 + Capture_Value_1;
	mov	dptr,#_main_Capture_Value_1_65536_98
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_Capture_Value_2_65536_98
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r6,a
	mov	a,r7
	addc	a,r5
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
;	../SCR/main.c:116: Duty_Cycle = (100 * Capture_Value_2) /Capture_Value_sum ;
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	ar0,r4
	mov	a,r5
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	dptr,#__divslong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:117: data = Duty_Cycle;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_data
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:118: Duty_Cycle_Calculator_Function();
	lcall	_Duty_Cycle_Calculator_Function
.00102:
;	../SCR/main.c:121: if(Read_Capture_Register == 1)
	mov	dptr,#_Read_Capture_Register
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,.00130
	sjmp	.00131
.00130:
	sjmp	.00104
.00131:
;	../SCR/main.c:123: SCR_T2CCU_PAGE = 2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/main.c:125: Capture_Value_1  |= (uint8)SCR_T2CCU_CC0L;
	mov	dptr,#_main_Capture_Value_1_65536_98
	mov	a,_SCR_T2CCU_CC0L
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
.00104:
;	../SCR/main.c:127: if(Read_Capture_Register == 2)
	mov	dptr,#_Read_Capture_Register
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,.00132
	sjmp	.00133
.00132:
	ljmp	.00108
.00133:
;	../SCR/main.c:129: Read_Capture_Register = 0;
	mov	dptr,#_Read_Capture_Register
	clr	a
	movx	@dptr,a
;	../SCR/main.c:130: SCR_T2CCU_PAGE = 2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/main.c:132: Capture_Value_2 |= (uint8)SCR_T2CCU_CC0L;
	mov	dptr,#_main_Capture_Value_2_65536_98
	mov	a,_SCR_T2CCU_CC0L
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	.00108
.00110:
;	../SCR/main.c:179: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_65536_104'
;j                         Allocated with name '_delay_j_65536_104'
;------------------------------------------------------------
;	../SCR/main.c:184: void delay(void){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
	.section .text.code.delay,"ax" ;code for function delay
	.type   delay, @function
_delay:
	.using 0
;	../SCR/main.c:188: for( i = 0; i < 1000; i++){
	mov	r6,#0x00
	mov	r7,#0x00
;	../SCR/main.c:189: for(j = 0; j < 1000; j++){
.00143:
	mov	r4,#0xE8
	mov	r5,#0x03
.00138:
	dec	r4
	cjne	r4,#0xFF,.00157
	dec	r5
.00157:
	mov	a,r4
	orl	a,r5
	jnz	.00138
.00158:
;	../SCR/main.c:188: for( i = 0; i < 1000; i++){
	inc	r6
	cjne	r6,#0x00,.00159
	inc	r7
.00159:
	clr	c
	mov	a,r6
	subb	a,#0xE8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jc	.00143
.00160:
.00141:
;	../SCR/main.c:194: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EXINT2IS_interrupt'
;------------------------------------------------------------
;	../SCR/main.c:201: void EXINT2IS_interrupt(void) __interrupt (5){
;	-----------------------------------------
;	 function EXINT2IS_interrupt
;	-----------------------------------------
	.section .text.code.EXINT2IS_interrupt,"ax" ;code for function EXINT2IS_interrupt
	.type   EXINT2IS_interrupt, @function
_EXINT2IS_interrupt:
	.using 0
;	../SCR/main.c:204: SCR_IO_PAGE = SCR_IO_PAGE0;
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/main.c:205: SCR_P00_OUT ^= (1 << 1) ;
	xrl	_SCR_P00_OUT,#0x02
;	../SCR/main.c:206: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/main.c:207: SCR_T2CCU_CCTCON &= ~(1 << 3) ;//bit pos 3 overflow flag
	anl	_SCR_T2CCU_CCTCON,#0xF7
.00161:
;	../SCR/main.c:209: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'EXINT5IS_interrupt'
;------------------------------------------------------------
;	../SCR/main.c:214: void EXINT5IS_interrupt(void) __interrupt (9){
;	-----------------------------------------
;	 function EXINT5IS_interrupt
;	-----------------------------------------
	.section .text.code.EXINT5IS_interrupt,"ax" ;code for function EXINT5IS_interrupt
	.type   EXINT5IS_interrupt, @function
_EXINT5IS_interrupt:
	.using 0
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	../SCR/main.c:216: SCR_IO_PAGE = 0;// for debug purpose
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/main.c:218: if(Duty_Cycle_Calculator == 0)
	mov	dptr,#_Duty_Cycle_Calculator
	movx	a,@dptr
	jz	.00219
	ljmp	.00180
.00219:
;	../SCR/main.c:220: edge_counter++;
	mov	dptr,#_edge_counter
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	../SCR/main.c:221: Check_Pin_Stat = SCR_P00_IN;
	mov	dptr,#_Check_Pin_Stat
	mov	a,_SCR_P00_IN
	movx	@dptr,a
;	../SCR/main.c:222: Check_Pin_Stat = Check_Pin_Stat & 0x40; //  01000000
	movx	a,@dptr
	anl	acc,#0x40
	movx	@dptr,a
;	../SCR/main.c:225: if(Check_Pin_Stat == 0 )//first falling edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	jnz	.00166
.00220:
;	../SCR/main.c:227: if(edge_counter == 1)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,.00221
	sjmp	.00222
.00221:
	sjmp	.00166
.00222:
;	../SCR/main.c:229: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/main.c:230: SCR_T2CCU_CCTBSEL|= (1 << 6) ;//trigger a overflow to reset the CCT timer, bit position 6
	orl	_SCR_T2CCU_CCTBSEL,#0x40
;	../SCR/main.c:231: SCR_P00_OUT |= (1 << 3) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x08
.00166:
;	../SCR/main.c:236: if(Check_Pin_Stat == 64 )// first rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,.00223
	sjmp	.00224
.00223:
	sjmp	.00170
.00224:
;	../SCR/main.c:238: if(edge_counter == 2)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,.00225
	sjmp	.00226
.00225:
	sjmp	.00170
.00226:
;	../SCR/main.c:240: SCR_P00_OUT |= (1 << 4) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x10
;	../SCR/main.c:241: SCR_T2CCU_PAGE = 2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/main.c:243: Read_Capture_Register = 1;
	mov	dptr,#_Read_Capture_Register
	mov	a,#0x01
	movx	@dptr,a
.00170:
;	../SCR/main.c:248: if(Check_Pin_Stat == 0 )//second falling edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	jnz	.00174
.00227:
;	../SCR/main.c:250: if(edge_counter == 3)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,.00228
	sjmp	.00229
.00228:
	sjmp	.00174
.00229:
;	../SCR/main.c:252: SCR_P00_OUT |= (1 << 5) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x20
;	../SCR/main.c:253: Read_Capture_Register = 2;
	mov	dptr,#_Read_Capture_Register
	mov	a,#0x02
	movx	@dptr,a
.00174:
;	../SCR/main.c:258: if(Check_Pin_Stat == 64 )//second rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,.00230
	sjmp	.00231
.00230:
	sjmp	.00180
.00231:
;	../SCR/main.c:260: if(edge_counter == 4)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,.00232
	sjmp	.00233
.00232:
	sjmp	.00180
.00233:
;	../SCR/main.c:263: Duty_Cycle_Calculator = 1;
	mov	dptr,#_Duty_Cycle_Calculator
	mov	a,#0x01
	movx	@dptr,a
;	../SCR/main.c:264: edge_counter = 0;
	mov	dptr,#_edge_counter
	clr	a
	movx	@dptr,a
.00180:
;	../SCR/main.c:275: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/main.c:276: SCR_IR_CON0 &= ~(1 << 3) ; // Clear bit 3
	anl	_SCR_IR_CON0,#0xF7
.00181:
;	../SCR/main.c:278: }
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Duty_Cycle_Calculator_Function'
;------------------------------------------------------------
;	../SCR/main.c:280: void Duty_Cycle_Calculator_Function(void)
;	-----------------------------------------
;	 function Duty_Cycle_Calculator_Function
;	-----------------------------------------
	.section .text.code.Duty_Cycle_Calculator_Function,"ax" ;code for function Duty_Cycle_Calculator_Function
	.type   Duty_Cycle_Calculator_Function, @function
_Duty_Cycle_Calculator_Function:
	.using 0
;	../SCR/main.c:282: Duty_Cycle_Calculator = 0;
	mov	dptr,#_Duty_Cycle_Calculator
	clr	a
	movx	@dptr,a
;	../SCR/main.c:283: SCR_IO_PAGE = 0;// for debug purpose
;	1-genFromRTrack replaced	mov	_SCR_IO_PAGE,#0x00
	mov	_SCR_IO_PAGE,a
;	../SCR/main.c:284: SCR_P00_OUT &= ~(1 << 3) ; // Clear bit 3
	anl	_SCR_P00_OUT,#0xF7
;	../SCR/main.c:285: SCR_P00_OUT &= ~(1 << 4) ; // Clear bit 4
	anl	_SCR_P00_OUT,#0xEF
;	../SCR/main.c:286: SCR_P00_OUT &= ~(1 << 5) ; // Clear bit 5
	anl	_SCR_P00_OUT,#0xDF
.00234:
;	../SCR/main.c:287: }
	ret
;--------------------------------------------------------
; xinit 
;--------------------------------------------------------
	.section .roxdata.init,"ax";xinit_name ;area
__xinit__Duty_Cycle_Calculator:
	.byte	#0x00	; 0
__xinit__edge_counter:
	.byte	#0x00	; 0
__xinit__Check_Pin_Stat:
	.byte	#0x00	; 0
__xinit__Read_Capture_Register:
	.byte	#0x00	; 0
