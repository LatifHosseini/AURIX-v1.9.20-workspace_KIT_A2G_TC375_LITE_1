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
	.globl	_Capture_Value_sum
	.globl	_Capture_Value_2
	.globl	_Capture_Value_1
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
_main_retunr_value_65536_30:
	.ds.b	2
_main_cnt_65536_30:
	.ds.b	2
_main_ADC_Stat_65536_30:
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
_Capture_Value_1:
	.ds.b	2
_Capture_Value_2:
	.ds.b	2
_Capture_Value_sum:
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
;retunr_value              Allocated with name '_main_retunr_value_65536_30'
;cnt                       Allocated with name '_main_cnt_65536_30'
;ADC_Stat                  Allocated with name '_main_ADC_Stat_65536_30'
;------------------------------------------------------------
;	../SCR/main.c:66: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
	.section .text.code.main,"ax" ;code for function main
	.type   main, @function
_main:
	.using 0
;	../SCR/main.c:68: volatile unsigned int retunr_value = 0;
	mov	dptr,#_main_retunr_value_65536_30
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:69: volatile unsigned int cnt = 0;
	mov	dptr,#_main_cnt_65536_30
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:70: volatile unsigned char ADC_Stat = 0;
	mov	dptr,#_main_ADC_Stat_65536_30
	movx	@dptr,a
;	../SCR/main.c:77: data = (100*5)/(100);
	mov	dptr,#_data
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:80: SCR_SCU_PAGE = 1;       //Switch to page 1
	mov	_SCR_SCU_PAGE,#0x01
;	../SCR/main.c:81: SCR_SCU_PMCON1 = 0x59;  //OCDS, T2CCU0, RTC and WCAN enabled
	mov	_SCR_SCU_PMCON1,#0x59
;	../SCR/main.c:83: SCR_SCU_PAGE = 0;       //Switch to page 0
;	1-genFromRTrack replaced	mov	_SCR_SCU_PAGE,#0x00
	mov	_SCR_SCU_PAGE,a
;	../SCR/main.c:84: SCR_SCRINTEXCHG = 0xA0;
	mov	_SCR_SCRINTEXCHG,#0xA0
;	../SCR/main.c:85: SCR_SCU_PAGE = 1;       //Switch to page 0
	mov	_SCR_SCU_PAGE,#0x01
;	../SCR/main.c:87: SCR_IEN0 |= (1 << 7) ; // enable global interrupt Set bit 7
	orl	_SCR_IEN0,#0x80
;	../SCR/main.c:89: gpio_init();
	lcall	_gpio_init
;	../SCR/main.c:90: SCR_IR_Select_External_Interrupt_Line();
	lcall	_SCR_IR_Select_External_Interrupt_Line
;	../SCR/main.c:91: SCR_IR_Select_Edge_Mode();
	lcall	_SCR_IR_Select_Edge_Mode
;	../SCR/main.c:92: SCR_IR_Enable_Interrupt_Node();
	lcall	_SCR_IR_Enable_Interrupt_Node
;	../SCR/main.c:93: SCR_Select_Interrupt_Priority();
	lcall	_SCR_Select_Interrupt_Priority
;	../SCR/main.c:97: SCR_CCT_Timer_Basic_Operation();
	lcall	_SCR_CCT_Timer_Basic_Operation
;	../SCR/main.c:99: SCR_CCU_Capture_Mode_0();
	lcall	_SCR_CCU_Capture_Mode_0
;	../SCR/main.c:101: while(1)
.00104:
;	../SCR/main.c:103: if(Duty_Cycle_Calculator == 1)// call Duty_Cycle_Calculator_Function
	mov	dptr,#_Duty_Cycle_Calculator
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,.00116
	sjmp	.00117
.00116:
	sjmp	.00104
.00117:
;	../SCR/main.c:105: Duty_Cycle_Calculator_Function();
	lcall	_Duty_Cycle_Calculator_Function
	sjmp	.00104
.00106:
;	../SCR/main.c:149: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_65536_34'
;j                         Allocated with name '_delay_j_65536_34'
;------------------------------------------------------------
;	../SCR/main.c:154: void delay(void){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
	.section .text.code.delay,"ax" ;code for function delay
	.type   delay, @function
_delay:
	.using 0
;	../SCR/main.c:158: for( i = 0; i < 1000; i++){
	mov	r6,#0x00
	mov	r7,#0x00
;	../SCR/main.c:159: for(j = 0; j < 1000; j++){
.00127:
	mov	r4,#0xE8
	mov	r5,#0x03
.00122:
	dec	r4
	cjne	r4,#0xFF,.00141
	dec	r5
.00141:
	mov	a,r4
	orl	a,r5
	jnz	.00122
.00142:
;	../SCR/main.c:158: for( i = 0; i < 1000; i++){
	inc	r6
	cjne	r6,#0x00,.00143
	inc	r7
.00143:
	clr	c
	mov	a,r6
	subb	a,#0xE8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jc	.00127
.00144:
.00125:
;	../SCR/main.c:164: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EXINT2IS_interrupt'
;------------------------------------------------------------
;	../SCR/main.c:171: void EXINT2IS_interrupt(void) __interrupt (5){
;	-----------------------------------------
;	 function EXINT2IS_interrupt
;	-----------------------------------------
	.section .text.code.EXINT2IS_interrupt,"ax" ;code for function EXINT2IS_interrupt
	.type   EXINT2IS_interrupt, @function
_EXINT2IS_interrupt:
	.using 0
;	../SCR/main.c:174: SCR_IO_PAGE = SCR_IO_PAGE0;
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/main.c:175: SCR_P00_OUT ^= (1 << 1) ;
	xrl	_SCR_P00_OUT,#0x02
;	../SCR/main.c:176: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/main.c:177: SCR_T2CCU_CCTCON &= ~(1 << 3) ;//bit pos 3 overflow flag
	anl	_SCR_T2CCU_CCTCON,#0xF7
.00145:
;	../SCR/main.c:179: }
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
;	../SCR/main.c:184: void EXINT5IS_interrupt(void) __interrupt (9){
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
	push	ar6
	push	ar5
	push	ar4
	push	psw
	mov	psw,#0x00
;	../SCR/main.c:186: SCR_IO_PAGE = 0;// for debug purpose
	mov	_SCR_IO_PAGE,#0x00
;	../SCR/main.c:188: if(Duty_Cycle_Calculator == 0)
	mov	dptr,#_Duty_Cycle_Calculator
	movx	a,@dptr
	jz	.00203
	ljmp	.00164
.00203:
;	../SCR/main.c:190: edge_counter++;
	mov	dptr,#_edge_counter
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	../SCR/main.c:191: Check_Pin_Stat = SCR_P00_IN;
	mov	dptr,#_Check_Pin_Stat
	mov	a,_SCR_P00_IN
	movx	@dptr,a
;	../SCR/main.c:192: Check_Pin_Stat = Check_Pin_Stat & 0x40; //  01000000
	movx	a,@dptr
	anl	acc,#0x40
	movx	@dptr,a
;	../SCR/main.c:195: if(Check_Pin_Stat == 0 )//first rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	jnz	.00150
.00204:
;	../SCR/main.c:197: if(edge_counter == 1)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,.00205
	sjmp	.00206
.00205:
	sjmp	.00150
.00206:
;	../SCR/main.c:199: SCR_T2CCU_PAGE = 1;
	mov	_SCR_T2CCU_PAGE,#0x01
;	../SCR/main.c:200: SCR_T2CCU_CCTBSEL|= (1 << 6) ;//trigger a overflow to reset the CCT timer, bit position 6
	orl	_SCR_T2CCU_CCTBSEL,#0x40
;	../SCR/main.c:201: SCR_P00_OUT |= (1 << 3) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x08
.00150:
;	../SCR/main.c:206: if(Check_Pin_Stat == 64 )// falling edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,.00207
	sjmp	.00208
.00207:
	sjmp	.00154
.00208:
;	../SCR/main.c:208: if(edge_counter == 2)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,.00209
	sjmp	.00210
.00209:
	sjmp	.00154
.00210:
;	../SCR/main.c:210: SCR_P00_OUT |= (1 << 4) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x10
;	../SCR/main.c:211: SCR_T2CCU_PAGE = 2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/main.c:213: Capture_Value_1  = (uint8)(SCR_T2CCU_CC0H << 8u);
	mov	dptr,#_Capture_Value_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:214: Capture_Value_1  |= (uint8)SCR_T2CCU_CC0L;
	mov	dptr,#_Capture_Value_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,_SCR_T2CCU_CC0L
	mov	r5,#0x00
	mov	dptr,#_Capture_Value_1
	mov	a,r4
	orl	a,r6
	movx	@dptr,a
	mov	a,r5
	orl	a,r7
	inc	dptr
	movx	@dptr,a
.00154:
;	../SCR/main.c:220: if(Check_Pin_Stat == 0 )//second rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	jnz	.00158
.00211:
;	../SCR/main.c:222: if(edge_counter == 3)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,.00212
	sjmp	.00213
.00212:
	sjmp	.00158
.00213:
;	../SCR/main.c:224: SCR_P00_OUT |= (1 << 5) ;// for debug purpose
	orl	_SCR_P00_OUT,#0x20
;	../SCR/main.c:225: SCR_T2CCU_PAGE = 2;
	mov	_SCR_T2CCU_PAGE,#0x02
;	../SCR/main.c:226: Capture_Value_2  = (uint8)(SCR_T2CCU_CC0H << 8u);
	mov	dptr,#_Capture_Value_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:227: Capture_Value_2 |= (uint8)SCR_T2CCU_CC0L;
	mov	dptr,#_Capture_Value_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,_SCR_T2CCU_CC0L
	mov	r5,#0x00
	mov	dptr,#_Capture_Value_2
	mov	a,r4
	orl	a,r6
	movx	@dptr,a
	mov	a,r5
	orl	a,r7
	inc	dptr
	movx	@dptr,a
.00158:
;	../SCR/main.c:233: if(Check_Pin_Stat == 64 )//second rising edge
	mov	dptr,#_Check_Pin_Stat
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,.00214
	sjmp	.00215
.00214:
	sjmp	.00164
.00215:
;	../SCR/main.c:235: if(edge_counter == 4)
	mov	dptr,#_edge_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,.00216
	sjmp	.00217
.00216:
	sjmp	.00164
.00217:
;	../SCR/main.c:238: Duty_Cycle_Calculator = 1;
	mov	dptr,#_Duty_Cycle_Calculator
	mov	a,#0x01
	movx	@dptr,a
;	../SCR/main.c:239: edge_counter = 0;
	mov	dptr,#_edge_counter
	clr	a
	movx	@dptr,a
.00164:
;	../SCR/main.c:250: SCR_SCU_PAGE = 0;
	mov	_SCR_SCU_PAGE,#0x00
;	../SCR/main.c:251: SCR_IR_CON0 &= ~(1 << 3) ; // Clear bit 3
	anl	_SCR_IR_CON0,#0xF7
.00165:
;	../SCR/main.c:253: }
	pop	psw
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Duty_Cycle_Calculator_Function'
;------------------------------------------------------------
;	../SCR/main.c:255: void Duty_Cycle_Calculator_Function(void)
;	-----------------------------------------
;	 function Duty_Cycle_Calculator_Function
;	-----------------------------------------
	.section .text.code.Duty_Cycle_Calculator_Function,"ax" ;code for function Duty_Cycle_Calculator_Function
	.type   Duty_Cycle_Calculator_Function, @function
_Duty_Cycle_Calculator_Function:
	.using 0
;	../SCR/main.c:257: Capture_Value_sum = Capture_Value_2 + Capture_Value_1;
	mov	dptr,#_Capture_Value_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_Capture_Value_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_Capture_Value_sum
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:258: data =  Capture_Value_sum;
	mov	dptr,#_Capture_Value_sum
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_data
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../SCR/main.c:259: Duty_Cycle_Calculator = 0;
	mov	dptr,#_Duty_Cycle_Calculator
	clr	a
	movx	@dptr,a
;	../SCR/main.c:260: SCR_IO_PAGE = 0;// for debug purpose
;	1-genFromRTrack replaced	mov	_SCR_IO_PAGE,#0x00
	mov	_SCR_IO_PAGE,a
;	../SCR/main.c:261: SCR_P00_OUT &= ~(1 << 3) ; // Clear bit 3
	anl	_SCR_P00_OUT,#0xF7
;	../SCR/main.c:262: SCR_P00_OUT &= ~(1 << 4) ; // Clear bit 4
	anl	_SCR_P00_OUT,#0xEF
;	../SCR/main.c:263: SCR_P00_OUT &= ~(1 << 5) ; // Clear bit 5
	anl	_SCR_P00_OUT,#0xDF
.00218:
;	../SCR/main.c:264: }
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
__xinit__Capture_Value_1:
	.byte #0x00, #0x00	; 0
__xinit__Capture_Value_2:
	.byte #0x00, #0x00	; 0
__xinit__Capture_Value_sum:
	.byte #0x00, #0x00	; 0
