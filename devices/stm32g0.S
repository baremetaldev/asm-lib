/*
    Notes:
        - Can be included in an assembly file with GCC extensions (.S)
        - TODO: generate this data along with the rest of the device registers
*/

RCC = 0x40021000
RCC_CR = 0x40021000
RCC_CFGR = RCC + 0x08
RCC_PLLCFGR = RCC + 0x0C
RCC_IOPENR = RCC + 0x34
RCC_AHBENR = RCC + 0x38
RCC_APBENR1 = RCC + 0x3c
RCC_APBENR2 = RCC + 0x40

PWR = 0x40027000
PWR_CR = 0x40027000

FLASH = 0x40022000
FLASH_ACR = 0x40022000

RCC_CR_HSEBYP = 0x00040000			@ bit 18
RCC_CR_HSERDY = 0x00020000			@ bit 17
RCC_CR_HSEON = 0x00010000			@ bit 16
RCC_CR_PLLON = 0x01000000			@ bit 24
RCC_CR_PLLRDY = 0x02000000			@ bit 25

RCC_PLLCFGR_PLLSRC_Msk = 0x00000003	@ bits 0:1
RCC_PLLCFGR_PLLSRC = 0x00000002		@ bit 2, HSI16

RCC_PLLCFGR_PLLM_Msk = 0x00000070	@ bits 6:4
RCC_PLLCFGR_PLLM = 0x00000010		@ bit 4, PLLM=2

RCC_PLLCFGR_PLLR_Msk = 0xE0000000	@ bits 31:29
RCC_PLLCFGR_PLLR = 0x20000000		@ bit 29, PLLR=2

RCC_PLLCFGR_PLLP_Msk = 0x003E0000	@ bits 21:17
RCC_PLLCFGR_PLLP = 0x00020000		@ bit 17, PLLP=2

RCC_PLLCFGR_PLLPEN = 0x00010000		@ bit 16
RCC_PLLCFGR_PLLREN = 0x10000000		@ bit 28

RCC_CFGR_SW_Msk = 0x00000007		@ bits 2:0
RCC_CFGR_SW = 0x00000002			@ bit 1, SW=PLLR System Clock source

RCC_CFGR_SWS_Msk = 0x00000038
RCC_CFGR_SWS = 0x00000010

FLASH_ACR_LATENCY_Msk = 0x00000007	@ bits 2:0
FLASH_ACR_LATENCY = 0x00000002		@ bit 1, 2 wait states
FLASH_ACR_PRFTEN = 0x00000100		@ bit 8, CPU prefetch enable

@ RCC_IOPENR_*EN
GPIOA = (1 << 0)
GPIOB = (1 << 1)
GPIOC = (1 << 2)
GPIOD = (1 << 3)
GPIOF = (1 << 5)

@ RCC_AHBENR_*EN
DMA1 	= (1 << 0)
FLASH 	= (1 << 8)
CRC 	= (1 << 12)

@ RCC_APBENR1_*EN
TIM3	= (1 << 1)
TIM6	= (1 << 4)
TIM7	= (1 << 5)
RTCAPB	= (1 << 10)
WWDG	= (1 << 11)
SPI2	= (1 << 14)
USART2	= (1 << 17)
USART3	= (1 << 18)
USART4	= (1 << 19)
I2C1	= (1 << 21)
I2C2	= (1 << 22)
DEBUG	= (1 << 27)
PWR		= (1 << 28)

@ RCC_APBENR2_*EN
SYSCFG	= (1 << 0)
TIM1	= (1 << 11)
SPI1	= (1 << 12)
USART1	= (1 << 14)
TIM14	= (1 << 15)
TIM15	= (1 << 16)
TIM16	= (1 << 17)
TIM17	= (1 << 18)
ADC1	= (1 << 20)
