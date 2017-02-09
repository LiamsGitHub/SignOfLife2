 /******************************************************************************
 *	Bare minimum startup for STM32F100C8
 *	Cuts every corner possible
 *  Targets Eclipse Kepler with ARM GNU tools gcc-arm-none-eabi-4_8-2013q4
 *	Liam Goudge. July 2014
 *
 *******************************************************************************/
.syntax unified


.global  Default_Handler
.global  Reset_Handler

.section  .Reset_Handler

Reset_Handler:
	b		main 							// Call application entry point


Default_Handler:
	b		Default_Handler 						// Loops here forever to trap an exception

.section  .isr_vector
Vectors:
.word	__stack						/* stack top address */
.word   Reset_Handler				/* Reset. First code address after reset */
.word   Default_Handler        		/* NMI_Handler */
.word   Default_Handler        		/* HardFault */
.word   Default_Handler        		/* MemManage */
.word   Default_Handler        		/* BusFault */
.word   Default_Handler        		/* UsageFault */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* RESERVED*/
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* SVC Handler */
.word   Default_Handler        		/* Debug Monitor */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* PendSV */
.word   Default_Handler        		/* SysTick */
.word   Default_Handler        		/* WWDG */
.word   Default_Handler        		/* PVD */
.word   Default_Handler        		/* Tamper Stamp */
.word   Default_Handler        		/* RTC WKUP */
.word   Default_Handler        		/* Flash */
.word   Default_Handler        		/* RCC */
.word   Default_Handler        		/* EXTI0 */
.word   Default_Handler        		/* EXTI1 */
.word   Default_Handler        		/* EXTI2 */
.word   Default_Handler        		/* EXTI3 */
.word   Default_Handler        		/* EXTI4 */
.word   Default_Handler        		/* DMA1 Channel1 */
.word   Default_Handler        		/* DMA1 Channel2 */
.word   Default_Handler        		/* DMA1 Channel3 */
.word   Default_Handler        		/* DMA1 Channel4 */
.word   Default_Handler        		/* DMA1 Channel5 */
.word   Default_Handler        		/* DMA1 Channel6 */
.word   Default_Handler        		/* DMA1 Channel7 */
.word   Default_Handler        		/* ADC1 */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* RESERVED*/
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* EXTI9_5 */
.word   Default_Handler        		/* TIM1_BRK_TIM15 */
.word   Default_Handler        		/* TIM1_UP_TIM16 */
.word   Default_Handler        		/* TIM1_TRG_COM_TIM17 */
.word   Default_Handler        		/* TIM1_CC */
.word   Default_Handler        		/* TIM2 */
.word   Default_Handler        		/* TIM3 */
.word   Default_Handler        		/* TIM4 */
.word   Default_Handler        		/* I2C1_EV */
.word   Default_Handler        		/* I2C1_ER */
.word   Default_Handler        		/* I2C2_EV */
.word   Default_Handler        		/* I2C2_ER */
.word   Default_Handler        		/* SPI1 */
.word   Default_Handler        		/* SPI2 */
.word   Default_Handler        		/* USART1 */
.word   Default_Handler        		/* USART2 */
.word   Default_Handler        		/* USART3 */
.word   Default_Handler        		/* EXTI15_10 */
.word   Default_Handler        		/* RTC_Alarm */
.word   Default_Handler        		/* CEC */
.word   Default_Handler        		/* TIM12 */
.word   Default_Handler        		/* TIM13 */
.word   Default_Handler        		/* TIM14 */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* FSMC */
.word   Default_Handler        		/* RESERVED */
.word   Default_Handler        		/* TIM5 */
.word   Default_Handler        		/* SPI3 */
.word   Default_Handler        		/* UART4 */
.word   Default_Handler        		/* UART5 */
.word   Default_Handler        		/* TIM6_DAC */
.word   Default_Handler        		/* TIM7 */
.word   Default_Handler        		/* DMA2_Channel1 */
.word   Default_Handler        		/* DMA2_Channel2 */
.word   Default_Handler        		/* DMA2_Channel3 */
.word   Default_Handler        		/* DMA2_Channel4_5 */
.word   Default_Handler        		/* DMA2_Channel5 */

.end
