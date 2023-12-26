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
	.globl	_Capture_Value_2
	.globl	_Capture_Value_1
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
; internal ram data
;--------------------------------------------------------
	.section .ddata.i51,"aw" ;data_name ;area
_Duty_Cycle_Calculator_Function_sloc0_1_0:
	.ds.b	4
_Duty_Cycle_Calculator_Function_sloc1_1_0:
	.ds.b	4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.section .xdata.i51,"aw" ;xdata_name ;area
_data	=	0x1f00
_main_retunr_value_65536_94:
	.ds.b	2
_main_cnt_65536_94:
	.ds.b	2
_main_ADC_Stat_65536_94:
	.ds.b	1
_main_Capture_Value_sum_65536_94:
	.ds.b	4
_main_temp_65536_94:
	.ds.b	4
_main_Duty_Cycle_65536_94:
	.ds.b	1
_Duty_Cycle_Calculator_Function_result_65536_116:
	.ds.b	2
_Duty_Cycle_Calculator_Function_quotient_65536_116:
	.ds.b	4
_Duty_Cycle_Calculator_Function_remainder_65536_116:
	.ds.b	4
_Duty_Cycle_Calculator_Function_Capture_Value_sum_65536_116:
	.ds.b	2
_Duty_Cycle_Calculator_Function_sumBit_65536_116:
	.ds.b	1
_Duty_Cycle_Calculator_Function_carry_65536_116:
	.ds.b	1
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
_Capture_Value_1:
	.ds.b	2
_Capture_Value_2:
	.ds.b	2
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
;retunr_value              Allocated with name '_main_retunr_value_65536_94'
;cnt                       Allocated with name '_main_cnt_65536_94'
;ADC_Stat                  Allocated with name '_main_ADC_Stat_65536_94'
;Capture_Value_sum         Allocated with name '_main_Capture_Value_sum_65536_94'
;temp                      Allocated with name '_main_temp_65536_94'
;Duty_Cycle                Allocated with name '_main_Duty_Cycle_65536_94'
;------------------------------------------------------------
;	../SCR/main.c:73: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
	.section .text.code.main,"ax" ;code for function main
	.type   main, @function
_main:
	.using 0
;	../SCR/main.c:75: volatile unsigned int retunr_value = 0;
	mov	dptr,#_main_retunr_value_65536_94
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:76: volatile unsigned int cnt = 0;
	mov	dptr,#_main_cnt_65536_94
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:77: volatile unsigned char ADC_Stat = 0;
	mov	dptr,#_main_ADC_Stat_65536_94
	movx	@dptr,a
;	../SCR/main.c:80: volatile unsigned long Capture_Value_sum = 0;
	mov	dptr,#_main_Capture_Value_sum_65536_94
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:81: volatile unsigned long temp = 0;
	mov	dptr,#_main_temp_65536_94
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:82: volatile unsigned char Duty_Cycle = 0;
	mov	dptr,#_main_Duty_Cycle_65536_94
	movx	@dptr,a
;	../SCR/main.c:92: SCR_SCU_PAGE = 1;       //Switch to page 1
	mov	_SCR_SCU_PAGE,#0x01
;	../SCR/main.c:93: SCR_SCU_PMCON1 = 0x59;  //OCDS, T2CCU0, RTC and WCAN enabled
	mov	_SCR_SCU_PMCON1,#0x59
;	../SCR/main.c:95: SCR_SCU_PAGE = 0;       //Switch to page 0
;	1-genFromRTrack replaced	mov	_SCR_SCU_PAGE,#0x00
	mov	_SCR_SCU_PAGE,a
;	../SCR/main.c:96: SCR_SCRINTEXCHG = 0xA0;
	mov	_SCR_SCRINTEXCHG,#0xA0
;	../SCR/main.c:97: SCR_SCU_PAGE = 1;       //Switch to page 0
	mov	_SCR_SCU_PAGE,#0x01
;	../SCR/main.c:99: SCR_IEN0 |= (1 << 7) ; // enable global interrupt Set bit 7
	orl	_SCR_IEN0,#0x80
;	../SCR/main.c:101: gpio_init();
	lcall	_gpio_init
;	../SCR/main.c:102: SCR_IR_Select_External_Interrupt_Line();
	lcall	_SCR_IR_Select_External_Interrupt_Line
;	../SCR/main.c:103: SCR_IR_Select_Edge_Mode();
	lcall	_SCR_IR_Select_Edge_Mode
;	../SCR/main.c:104: SCR_IR_Enable_Interrupt_Node();
	lcall	_SCR_IR_Enable_Interrupt_Node
;	../SCR/main.c:105: SCR_Select_Interrupt_Priority();
	lcall	_SCR_Select_Interrupt_Priority
;	../SCR/main.c:109: SCR_CCT_Timer_Basic_Operation();
	lcall	_SCR_CCT_Timer_Basic_Operation
;	../SCR/main.c:111: SCR_CCU_Capture_Mode_0();
	lcall	_SCR_CCU_Capture_Mode_0
;	../SCR/main.c:113: while(1)
.00102:
;	../SCR/main.c:132: Capture_Value_2 = 0xC350;//  50000
	mov	dptr,#_Capture_Value_2
	mov	a,#0x50
	movx	@dptr,a
	mov	a,#0xC3
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:133: Capture_Value_1 = 0x30D4; // 25% of 50000
	mov	dptr,#_Capture_Value_1
	mov	a,#0xD4
	movx	@dptr,a
	mov	a,#0x30
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:135: Duty_Cycle_Calculator_Function();
	lcall	_Duty_Cycle_Calculator_Function
	sjmp	.00102
.00104:
;	../SCR/main.c:178: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_65536_97'
;j                         Allocated with name '_delay_j_65536_97'
;------------------------------------------------------------
;	../SCR/main.c:183: void delay(void){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
	.section .text.code.delay,"ax" ;code for function delay
	.type   delay, @function
_delay:
	.using 0
;	../SCR/main.c:187: for( i = 0; i < 1000; i++){
	mov	r6,#0x00
	mov	r7,#0x00
;	../SCR/main.c:188: for(j = 0; j < 1000; j++){
.00119:
	mov	r4,#0xE8
	mov	r5,#0x03
.00114:
	dec	r4
	cjne	r4,#0xFF,.00133
	dec	r5
.00133:
	mov	a,r4
	orl	a,r5
	jnz	.00114
.00134:
;	../SCR/main.c:187: for( i = 0; i < 1000; i++){
	inc	r6
	cjne	r6,#0x00,.00135
	inc	r7
.00135:
	clr	c
	mov	a,r6
	subb	a,#0xE8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jc	.00119
.00136:
.00117:
;	../SCR/main.c:193: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EXINT2IS_interrupt'
;------------------------------------------------------------
;	../SCR/main.c:200: void EXINT2IS_interrupt(void) __interrupt (5){
;	-----------------------------------------
;	 function EXINT2IS_interrupt
;	-----------------------------------------
	.section .text.code.EXINT2IS_interrupt,"ax" ;code for function EXINT2IS_interrupt
	.type   EXINT2IS_interrupt, @function
_EXINT2IS_interrupt:
	.using 0
;	../SCR/main.c:203: SCR_IO_PAGE = SCR_IO_PAGE0;
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/main.c:204: SCR_P00_OUT ^= (1 << 1) ;
	xrl	_SCR_P00_OUT,#0x02
;	../SCR/main.c:205: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/main.c:206: SCR_T2CCU_CCTCON &= ~(1 << 3) ;//bit pos 3 overflow flag
	anl	_SCR_T2CCU_CCTCON,#0xF7
.00137:
;	../SCR/main.c:208: }
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
;	../SCR/main.c:215: void EXINT5IS_interrupt(void) __interrupt (9){
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
;	../SCR/main.c:217: SCR_IO_PAGE = 0;// for debug purpose
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/main.c:219: if(Duty_Cycle_Calculator == 0)
	mov	dptr,#_Duty_Cycle_Calculator
	movx	a,@dptr
	jz	.00195
	ljmp	.00156
.00195:
;	../SCR/main.c:221: edge_counter++;
	mov	dptr,#_edge_counter
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	../SCR/main.c:222: Check_Pin_Stat = SCR_P00_IN;
	mov	dptr,#_Check_Pin_Stat
	mov	a,_SCR_P00_IN
	movx	@dptr,a
;	../SCR/main.c:223: Check_Pin_Stat = Check_Pin_Stat & 0x40; //  01000000
	movx	a,@dptr
	anl	acc,#0x40
	movx	@dptr,a
;	../SCR/main.c:226: if(Check_Pin_Stat == 0 )//first falling edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	jnz	.00142
.00196:
;	../SCR/main.c:228: if(edge_counter == 1)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,.00197
	sjmp	.00198
.00197:
	sjmp	.00142
.00198:
;	../SCR/main.c:230: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/main.c:231: SCR_T2CCU_CCTBSEL|= (1 << 6) ;//trigger a overflow to reset the CCT timer, bit position 6
	orl	_SCR_T2CCU_CCTBSEL,#0x40
;	../SCR/main.c:232: SCR_P00_OUT |= (1 << 3) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x08
.00142:
;	../SCR/main.c:237: if(Check_Pin_Stat == 64 )// first rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,.00199
	sjmp	.00200
.00199:
	sjmp	.00146
.00200:
;	../SCR/main.c:239: if(edge_counter == 2)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,.00201
	sjmp	.00202
.00201:
	sjmp	.00146
.00202:
;	../SCR/main.c:241: SCR_P00_OUT |= (1 << 4) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x10
;	../SCR/main.c:242: SCR_T2CCU_PAGE = 2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/main.c:244: Read_Capture_Register = 1;
	mov	dptr,#_Read_Capture_Register
	mov	a,#0x01
	movx	@dptr,a
.00146:
;	../SCR/main.c:249: if(Check_Pin_Stat == 0 )//second falling edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	jnz	.00150
.00203:
;	../SCR/main.c:251: if(edge_counter == 3)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,.00204
	sjmp	.00205
.00204:
	sjmp	.00150
.00205:
;	../SCR/main.c:253: SCR_P00_OUT |= (1 << 5) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x20
;	../SCR/main.c:254: Read_Capture_Register = 2;
	mov	dptr,#_Read_Capture_Register
	mov	a,#0x02
	movx	@dptr,a
.00150:
;	../SCR/main.c:259: if(Check_Pin_Stat == 64 )//second rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,.00206
	sjmp	.00207
.00206:
	sjmp	.00156
.00207:
;	../SCR/main.c:261: if(edge_counter == 4)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,.00208
	sjmp	.00209
.00208:
	sjmp	.00156
.00209:
;	../SCR/main.c:264: Duty_Cycle_Calculator = 1;
	mov	dptr,#_Duty_Cycle_Calculator
	mov	a,#0x01
	movx	@dptr,a
;	../SCR/main.c:265: edge_counter = 0;
	mov	dptr,#_edge_counter
	clr	a
	movx	@dptr,a
.00156:
;	../SCR/main.c:276: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/main.c:277: SCR_IR_CON0 &= ~(1 << 3) ; // Clear bit 3
	anl	_SCR_IR_CON0,#0xF7
.00157:
;	../SCR/main.c:279: }
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
;sloc0                     Allocated with name '_Duty_Cycle_Calculator_Function_sloc0_1_0'
;sloc1                     Allocated with name '_Duty_Cycle_Calculator_Function_sloc1_1_0'
;result                    Allocated with name '_Duty_Cycle_Calculator_Function_result_65536_116'
;quotient                  Allocated with name '_Duty_Cycle_Calculator_Function_quotient_65536_116'
;remainder                 Allocated with name '_Duty_Cycle_Calculator_Function_remainder_65536_116'
;Return_Result             Allocated with name '_Duty_Cycle_Calculator_Function_Return_Result_65536_116'
;Multiplicand              Allocated with name '_Duty_Cycle_Calculator_Function_Multiplicand_65536_116'
;Capture_Value_sum         Allocated with name '_Duty_Cycle_Calculator_Function_Capture_Value_sum_65536_116'
;i                         Allocated with name '_Duty_Cycle_Calculator_Function_i_65536_116'
;bit                       Allocated with name '_Duty_Cycle_Calculator_Function_bit_65536_116'
;bitA                      Allocated with name '_Duty_Cycle_Calculator_Function_bitA_65536_116'
;bitB                      Allocated with name '_Duty_Cycle_Calculator_Function_bitB_65536_116'
;sumBit                    Allocated with name '_Duty_Cycle_Calculator_Function_sumBit_65536_116'
;carry                     Allocated with name '_Duty_Cycle_Calculator_Function_carry_65536_116'
;i                         Allocated with name '_Duty_Cycle_Calculator_Function_i_131072_117'
;------------------------------------------------------------
;	../SCR/main.c:281: unsigned char Duty_Cycle_Calculator_Function(void)
;	-----------------------------------------
;	 function Duty_Cycle_Calculator_Function
;	-----------------------------------------
	.section .text.code.Duty_Cycle_Calculator_Function,"ax" ;code for function Duty_Cycle_Calculator_Function
	.type   Duty_Cycle_Calculator_Function, @function
_Duty_Cycle_Calculator_Function:
	.using 0
;	../SCR/main.c:283: unsigned int   result = 0;
	mov	dptr,#_Duty_Cycle_Calculator_Function_result_65536_116
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:284: unsigned long  quotient = 0;
	mov	dptr,#_Duty_Cycle_Calculator_Function_quotient_65536_116
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:285: unsigned long  remainder = 0;
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:288: unsigned int   Capture_Value_sum = 0;
	mov	dptr,#_Duty_Cycle_Calculator_Function_Capture_Value_sum_65536_116
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:294: unsigned char  carry = 0;
	mov	dptr,#_Duty_Cycle_Calculator_Function_carry_65536_116
	movx	@dptr,a
;	../SCR/main.c:298: for (int i = 0; i < 16; ++i)
	mov	r6,#0x00
	mov	r7,#0x00
.00223:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	.00210
.00261:
;	../SCR/main.c:300: bitA = (Capture_Value_1 >> i) & 0x01;
	mov	dptr,#_Capture_Value_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,r6
	inc	b
	sjmp	.00263
.00262:
	clr	c
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
.00263:
	djnz	b,.00262
	anl	ar4,#0x01
;	../SCR/main.c:301: bitB = (Capture_Value_2 >> i) & 0x01;
	mov	dptr,#_Capture_Value_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,r6
	inc	b
	sjmp	.00265
.00264:
	clr	c
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r3
	rrc	a
	mov	r3,a
.00265:
	djnz	b,.00264
	anl	ar3,#0x01
;	../SCR/main.c:303: sumBit = bitA ^ bitB ^ carry;
	mov	a,r3
	xrl	a,r4
	mov	r5,a
	mov	dptr,#_Duty_Cycle_Calculator_Function_carry_65536_116
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_Duty_Cycle_Calculator_Function_sumBit_65536_116
	xrl	a,r5
	movx	@dptr,a
;	../SCR/main.c:305: carry = (bitA & bitB) | ((bitA ^ bitB) & carry);
	mov	a,r3
	anl	ar4,a
	mov	a,r2
	anl	a,r5
	mov	dptr,#_Duty_Cycle_Calculator_Function_carry_65536_116
	orl	a,r4
	movx	@dptr,a
;	../SCR/main.c:307: Capture_Value_sum |= (sumBit << i);
	mov	dptr,#_Duty_Cycle_Calculator_Function_sumBit_65536_116
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	b,r6
	inc	b
	sjmp	.00267
.00266:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
.00267:
	djnz	b,.00266
	mov	dptr,#_Duty_Cycle_Calculator_Function_Capture_Value_sum_65536_116
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	../SCR/main.c:298: for (int i = 0; i < 16; ++i)
	inc	r6
	cjne	r6,#0x00,.00268
	inc	r7
.00268:
	ljmp	.00223
.00210:
;	../SCR/main.c:311: for ( i = 0; i < 8; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
.00225:
;	../SCR/main.c:313: if (Multiplicand & (1 << i)) {
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	.00270
.00269:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
.00270:
	djnz	b,.00269
	mov	a,r4
	anl	a,#0x64
	jz	.00226
.00271:
;	../SCR/main.c:315: result += Capture_Value_1 << i;
	mov	dptr,#_Capture_Value_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,r6
	inc	b
	sjmp	.00273
.00272:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
.00273:
	djnz	b,.00272
	mov	dptr,#_Duty_Cycle_Calculator_Function_result_65536_116
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_Duty_Cycle_Calculator_Function_result_65536_116
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
.00226:
;	../SCR/main.c:311: for ( i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x00,.00274
	inc	r7
.00274:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jc	.00225
.00275:
;	../SCR/main.c:320: for (bit = 31; bit >= 0; bit--) {
	mov	r6,#0x1F
	mov	r7,#0x00
.00227:
;	../SCR/main.c:321: remainder <<= 1;  // Left shift the remainder by 1 to make room for the next bit
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
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
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
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
;	../SCR/main.c:322: remainder |= (Capture_Value_sum >> bit) & 0x01;  // Set the LSB of remainder with the current bit of dividend
	mov	dptr,#_Duty_Cycle_Calculator_Function_Capture_Value_sum_65536_116
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,r6
	inc	b
	sjmp	.00277
.00276:
	clr	c
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
.00277:
	djnz	b,.00276
	anl	ar4,#0x01
	mov	r5,#0x00
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar6
	push	ar7
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
	mov	a,r4
	orl	a,r0
	movx	@dptr,a
	mov	a,r5
	orl	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:324: if (remainder >= result) {
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
	movx	a,@dptr
	mov	_Duty_Cycle_Calculator_Function_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 3),a
	mov	dptr,#_Duty_Cycle_Calculator_Function_result_65536_116
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_Duty_Cycle_Calculator_Function_sloc1_1_0,r6
	mov	(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 2),#0x00
	mov	(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 2),r5
;	1-genFromRTrack replaced	mov	(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 3),#0x00
	mov	(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 3),r5
	clr	c
	mov	a,_Duty_Cycle_Calculator_Function_sloc0_1_0
	subb	a,_Duty_Cycle_Calculator_Function_sloc1_1_0
	mov	a,(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 1)
	subb	a,(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 1)
	mov	a,(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 2)
	subb	a,(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 2)
	mov	a,(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 3)
	subb	a,(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 3)
	pop	ar7
	pop	ar6
	jc	.00228
.00278:
;	../SCR/main.c:325: remainder -= result;
	mov	dptr,#_Duty_Cycle_Calculator_Function_remainder_65536_116
	mov	a,_Duty_Cycle_Calculator_Function_sloc0_1_0
	clr	c
	subb	a,_Duty_Cycle_Calculator_Function_sloc1_1_0
	movx	@dptr,a
	mov	a,(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 1)
	subb	a,(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 2)
	subb	a,(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_Duty_Cycle_Calculator_Function_sloc0_1_0 + 3)
	subb	a,(_Duty_Cycle_Calculator_Function_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:326: quotient |= (1UL << bit);  // Set the corresponding bit in the quotient
	mov	ar5,r6
	mov	b,r5
	inc	b
	mov	r5,#0x01
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	sjmp	.00280
.00279:
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
.00280:
	djnz	b,.00279
	mov	dptr,#_Duty_Cycle_Calculator_Function_quotient_65536_116
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
.00228:
;	../SCR/main.c:320: for (bit = 31; bit >= 0; bit--) {
	dec	r6
	cjne	r6,#0xFF,.00281
	dec	r7
.00281:
	ljmp	.00227
;	../SCR/main.c:337: return Return_Result;
.00229:
;	../SCR/main.c:338: }
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
__xinit__Capture_Value_1:
	.byte #0x00, #0x00	; 0
__xinit__Capture_Value_2:
	.byte #0x00, #0x00	; 0
