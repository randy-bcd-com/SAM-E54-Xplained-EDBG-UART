#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Release.mk)" "nbproject/Makefile-local-Release.mk"
include nbproject/Makefile-local-Release.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Device_Startup/startup_same54.c ../Device_Startup/system_same54.c ../examples/driver_examples.c ../hal/src/hal_atomic.c ../hal/src/hal_cache.c ../hal/src/hal_delay.c ../hal/src/hal_gpio.c ../hal/src/hal_init.c ../hal/src/hal_io.c ../hal/src/hal_sleep.c ../hal/src/hal_usart_async.c ../hal/utils/src/utils_assert.c ../hal/utils/src/utils_event.c ../hal/utils/src/utils_list.c ../hal/utils/src/utils_ringbuffer.c ../hal/utils/src/utils_syscalls.c ../hpl/cmcc/hpl_cmcc.c ../hpl/core/hpl_core_m4.c ../hpl/core/hpl_init.c ../hpl/dmac/hpl_dmac.c ../hpl/gclk/hpl_gclk.c ../hpl/mclk/hpl_mclk.c ../hpl/osc32kctrl/hpl_osc32kctrl.c ../hpl/oscctrl/hpl_oscctrl.c ../hpl/pm/hpl_pm.c ../hpl/ramecc/hpl_ramecc.c ../hpl/sercom/hpl_sercom.c ../atmel_start.c ../driver_init.c ../edbg_uart_example.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1301743165/startup_same54.o ${OBJECTDIR}/_ext/1301743165/system_same54.o ${OBJECTDIR}/_ext/1381494712/driver_examples.o ${OBJECTDIR}/_ext/991121639/hal_atomic.o ${OBJECTDIR}/_ext/991121639/hal_cache.o ${OBJECTDIR}/_ext/991121639/hal_delay.o ${OBJECTDIR}/_ext/991121639/hal_gpio.o ${OBJECTDIR}/_ext/991121639/hal_init.o ${OBJECTDIR}/_ext/991121639/hal_io.o ${OBJECTDIR}/_ext/991121639/hal_sleep.o ${OBJECTDIR}/_ext/991121639/hal_usart_async.o ${OBJECTDIR}/_ext/447684357/utils_assert.o ${OBJECTDIR}/_ext/447684357/utils_event.o ${OBJECTDIR}/_ext/447684357/utils_list.o ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o ${OBJECTDIR}/_ext/447684357/utils_syscalls.o ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o ${OBJECTDIR}/_ext/232825383/hpl_init.o ${OBJECTDIR}/_ext/232798043/hpl_dmac.o ${OBJECTDIR}/_ext/232717931/hpl_gclk.o ${OBJECTDIR}/_ext/232539185/hpl_mclk.o ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o ${OBJECTDIR}/_ext/1126497609/hpl_pm.o ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o ${OBJECTDIR}/_ext/41939163/hpl_sercom.o ${OBJECTDIR}/_ext/1472/atmel_start.o ${OBJECTDIR}/_ext/1472/driver_init.o ${OBJECTDIR}/_ext/1472/edbg_uart_example.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1301743165/startup_same54.o.d ${OBJECTDIR}/_ext/1301743165/system_same54.o.d ${OBJECTDIR}/_ext/1381494712/driver_examples.o.d ${OBJECTDIR}/_ext/991121639/hal_atomic.o.d ${OBJECTDIR}/_ext/991121639/hal_cache.o.d ${OBJECTDIR}/_ext/991121639/hal_delay.o.d ${OBJECTDIR}/_ext/991121639/hal_gpio.o.d ${OBJECTDIR}/_ext/991121639/hal_init.o.d ${OBJECTDIR}/_ext/991121639/hal_io.o.d ${OBJECTDIR}/_ext/991121639/hal_sleep.o.d ${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d ${OBJECTDIR}/_ext/447684357/utils_assert.o.d ${OBJECTDIR}/_ext/447684357/utils_event.o.d ${OBJECTDIR}/_ext/447684357/utils_list.o.d ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d ${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d ${OBJECTDIR}/_ext/232825383/hpl_init.o.d ${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d ${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d ${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d ${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d ${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d ${OBJECTDIR}/_ext/1472/atmel_start.o.d ${OBJECTDIR}/_ext/1472/driver_init.o.d ${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1301743165/startup_same54.o ${OBJECTDIR}/_ext/1301743165/system_same54.o ${OBJECTDIR}/_ext/1381494712/driver_examples.o ${OBJECTDIR}/_ext/991121639/hal_atomic.o ${OBJECTDIR}/_ext/991121639/hal_cache.o ${OBJECTDIR}/_ext/991121639/hal_delay.o ${OBJECTDIR}/_ext/991121639/hal_gpio.o ${OBJECTDIR}/_ext/991121639/hal_init.o ${OBJECTDIR}/_ext/991121639/hal_io.o ${OBJECTDIR}/_ext/991121639/hal_sleep.o ${OBJECTDIR}/_ext/991121639/hal_usart_async.o ${OBJECTDIR}/_ext/447684357/utils_assert.o ${OBJECTDIR}/_ext/447684357/utils_event.o ${OBJECTDIR}/_ext/447684357/utils_list.o ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o ${OBJECTDIR}/_ext/447684357/utils_syscalls.o ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o ${OBJECTDIR}/_ext/232825383/hpl_init.o ${OBJECTDIR}/_ext/232798043/hpl_dmac.o ${OBJECTDIR}/_ext/232717931/hpl_gclk.o ${OBJECTDIR}/_ext/232539185/hpl_mclk.o ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o ${OBJECTDIR}/_ext/1126497609/hpl_pm.o ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o ${OBJECTDIR}/_ext/41939163/hpl_sercom.o ${OBJECTDIR}/_ext/1472/atmel_start.o ${OBJECTDIR}/_ext/1472/driver_init.o ${OBJECTDIR}/_ext/1472/edbg_uart_example.o

# Source Files
SOURCEFILES=../Device_Startup/startup_same54.c ../Device_Startup/system_same54.c ../examples/driver_examples.c ../hal/src/hal_atomic.c ../hal/src/hal_cache.c ../hal/src/hal_delay.c ../hal/src/hal_gpio.c ../hal/src/hal_init.c ../hal/src/hal_io.c ../hal/src/hal_sleep.c ../hal/src/hal_usart_async.c ../hal/utils/src/utils_assert.c ../hal/utils/src/utils_event.c ../hal/utils/src/utils_list.c ../hal/utils/src/utils_ringbuffer.c ../hal/utils/src/utils_syscalls.c ../hpl/cmcc/hpl_cmcc.c ../hpl/core/hpl_core_m4.c ../hpl/core/hpl_init.c ../hpl/dmac/hpl_dmac.c ../hpl/gclk/hpl_gclk.c ../hpl/mclk/hpl_mclk.c ../hpl/osc32kctrl/hpl_osc32kctrl.c ../hpl/oscctrl/hpl_oscctrl.c ../hpl/pm/hpl_pm.c ../hpl/ramecc/hpl_ramecc.c ../hpl/sercom/hpl_sercom.c ../atmel_start.c ../driver_init.c ../edbg_uart_example.c

# Pack Options 
PACK_COMMON_OPTIONS=-I ${DFP_DIR}\include  -I ${CMSIS_DIR}\CMSIS\Core\Include



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Release.mk dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=SAME54P20A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1301743165/startup_same54.o: ../Device_Startup/startup_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301743165" 
	@${RM} ${OBJECTDIR}/_ext/1301743165/startup_same54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301743165/startup_same54.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301743165/startup_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1301743165/startup_same54.o.d" -o ${OBJECTDIR}/_ext/1301743165/startup_same54.o ../Device_Startup/startup_same54.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1301743165/system_same54.o: ../Device_Startup/system_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301743165" 
	@${RM} ${OBJECTDIR}/_ext/1301743165/system_same54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301743165/system_same54.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301743165/system_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1301743165/system_same54.o.d" -o ${OBJECTDIR}/_ext/1301743165/system_same54.o ../Device_Startup/system_same54.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1381494712/driver_examples.o: ../examples/driver_examples.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1381494712" 
	@${RM} ${OBJECTDIR}/_ext/1381494712/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/_ext/1381494712/driver_examples.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1381494712/driver_examples.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1381494712/driver_examples.o.d" -o ${OBJECTDIR}/_ext/1381494712/driver_examples.o ../examples/driver_examples.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_atomic.o: ../hal/src/hal_atomic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_atomic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_atomic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_atomic.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_atomic.o ../hal/src/hal_atomic.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_cache.o: ../hal/src/hal_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_cache.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_cache.o ../hal/src/hal_cache.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_delay.o: ../hal/src/hal_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_delay.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_delay.o ../hal/src/hal_delay.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_gpio.o: ../hal/src/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_gpio.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_gpio.o ../hal/src/hal_gpio.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_init.o: ../hal/src/hal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_init.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_init.o ../hal/src/hal_init.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_io.o: ../hal/src/hal_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_io.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_io.o ../hal/src/hal_io.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_sleep.o: ../hal/src/hal_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_sleep.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_sleep.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_sleep.o ../hal/src/hal_sleep.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_usart_async.o: ../hal/src/hal_usart_async.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_usart_async.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_usart_async.o ../hal/src/hal_usart_async.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_assert.o: ../hal/utils/src/utils_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_assert.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_assert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_assert.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_assert.o ../hal/utils/src/utils_assert.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_event.o: ../hal/utils/src/utils_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_event.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_event.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_event.o ../hal/utils/src/utils_event.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_list.o: ../hal/utils/src/utils_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_list.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_list.o ../hal/utils/src/utils_list.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o: ../hal/utils/src/utils_ringbuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o ../hal/utils/src/utils_ringbuffer.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_syscalls.o: ../hal/utils/src/utils_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_syscalls.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_syscalls.o ../hal/utils/src/utils_syscalls.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232827772/hpl_cmcc.o: ../hpl/cmcc/hpl_cmcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232827772" 
	@${RM} ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d" -o ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o ../hpl/cmcc/hpl_cmcc.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232825383/hpl_core_m4.o: ../hpl/core/hpl_core_m4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232825383" 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d" -o ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o ../hpl/core/hpl_core_m4.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232825383/hpl_init.o: ../hpl/core/hpl_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232825383" 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232825383/hpl_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232825383/hpl_init.o.d" -o ${OBJECTDIR}/_ext/232825383/hpl_init.o ../hpl/core/hpl_init.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232798043/hpl_dmac.o: ../hpl/dmac/hpl_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232798043" 
	@${RM} ${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/232798043/hpl_dmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d" -o ${OBJECTDIR}/_ext/232798043/hpl_dmac.o ../hpl/dmac/hpl_dmac.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232717931/hpl_gclk.o: ../hpl/gclk/hpl_gclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232717931" 
	@${RM} ${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/_ext/232717931/hpl_gclk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d" -o ${OBJECTDIR}/_ext/232717931/hpl_gclk.o ../hpl/gclk/hpl_gclk.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232539185/hpl_mclk.o: ../hpl/mclk/hpl_mclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232539185" 
	@${RM} ${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/_ext/232539185/hpl_mclk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d" -o ${OBJECTDIR}/_ext/232539185/hpl_mclk.o ../hpl/mclk/hpl_mclk.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o: ../hpl/osc32kctrl/hpl_osc32kctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/833842894" 
	@${RM} ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o ../hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o: ../hpl/oscctrl/hpl_oscctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1862940304" 
	@${RM} ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d" -o ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o ../hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1126497609/hpl_pm.o: ../hpl/pm/hpl_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1126497609" 
	@${RM} ${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1126497609/hpl_pm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d" -o ${OBJECTDIR}/_ext/1126497609/hpl_pm.o ../hpl/pm/hpl_pm.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/9468513/hpl_ramecc.o: ../hpl/ramecc/hpl_ramecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/9468513" 
	@${RM} ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d" -o ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o ../hpl/ramecc/hpl_ramecc.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/41939163/hpl_sercom.o: ../hpl/sercom/hpl_sercom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41939163" 
	@${RM} ${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/_ext/41939163/hpl_sercom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d" -o ${OBJECTDIR}/_ext/41939163/hpl_sercom.o ../hpl/sercom/hpl_sercom.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1472/atmel_start.o: ../atmel_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/atmel_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/atmel_start.o.d" -o ${OBJECTDIR}/_ext/1472/atmel_start.o ../atmel_start.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1472/driver_init.o: ../driver_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/driver_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/driver_init.o.d" -o ${OBJECTDIR}/_ext/1472/driver_init.o ../driver_init.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1472/edbg_uart_example.o: ../edbg_uart_example.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/edbg_uart_example.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d" -o ${OBJECTDIR}/_ext/1472/edbg_uart_example.o ../edbg_uart_example.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
else
${OBJECTDIR}/_ext/1301743165/startup_same54.o: ../Device_Startup/startup_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301743165" 
	@${RM} ${OBJECTDIR}/_ext/1301743165/startup_same54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301743165/startup_same54.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301743165/startup_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1301743165/startup_same54.o.d" -o ${OBJECTDIR}/_ext/1301743165/startup_same54.o ../Device_Startup/startup_same54.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1301743165/system_same54.o: ../Device_Startup/system_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301743165" 
	@${RM} ${OBJECTDIR}/_ext/1301743165/system_same54.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301743165/system_same54.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301743165/system_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1301743165/system_same54.o.d" -o ${OBJECTDIR}/_ext/1301743165/system_same54.o ../Device_Startup/system_same54.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1381494712/driver_examples.o: ../examples/driver_examples.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1381494712" 
	@${RM} ${OBJECTDIR}/_ext/1381494712/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/_ext/1381494712/driver_examples.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1381494712/driver_examples.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1381494712/driver_examples.o.d" -o ${OBJECTDIR}/_ext/1381494712/driver_examples.o ../examples/driver_examples.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_atomic.o: ../hal/src/hal_atomic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_atomic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_atomic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_atomic.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_atomic.o ../hal/src/hal_atomic.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_cache.o: ../hal/src/hal_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_cache.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_cache.o ../hal/src/hal_cache.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_delay.o: ../hal/src/hal_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_delay.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_delay.o ../hal/src/hal_delay.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_gpio.o: ../hal/src/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_gpio.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_gpio.o ../hal/src/hal_gpio.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_init.o: ../hal/src/hal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_init.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_init.o ../hal/src/hal_init.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_io.o: ../hal/src/hal_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_io.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_io.o ../hal/src/hal_io.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_sleep.o: ../hal/src/hal_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_sleep.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_sleep.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_sleep.o ../hal/src/hal_sleep.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/991121639/hal_usart_async.o: ../hal/src/hal_usart_async.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/991121639" 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d 
	@${RM} ${OBJECTDIR}/_ext/991121639/hal_usart_async.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/991121639/hal_usart_async.o.d" -o ${OBJECTDIR}/_ext/991121639/hal_usart_async.o ../hal/src/hal_usart_async.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_assert.o: ../hal/utils/src/utils_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_assert.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_assert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_assert.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_assert.o ../hal/utils/src/utils_assert.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_event.o: ../hal/utils/src/utils_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_event.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_event.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_event.o ../hal/utils/src/utils_event.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_list.o: ../hal/utils/src/utils_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_list.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_list.o ../hal/utils/src/utils_list.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o: ../hal/utils/src/utils_ringbuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_ringbuffer.o ../hal/utils/src/utils_ringbuffer.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/447684357/utils_syscalls.o: ../hal/utils/src/utils_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/447684357" 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/447684357/utils_syscalls.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/447684357/utils_syscalls.o.d" -o ${OBJECTDIR}/_ext/447684357/utils_syscalls.o ../hal/utils/src/utils_syscalls.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232827772/hpl_cmcc.o: ../hpl/cmcc/hpl_cmcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232827772" 
	@${RM} ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232827772/hpl_cmcc.o.d" -o ${OBJECTDIR}/_ext/232827772/hpl_cmcc.o ../hpl/cmcc/hpl_cmcc.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232825383/hpl_core_m4.o: ../hpl/core/hpl_core_m4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232825383" 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232825383/hpl_core_m4.o.d" -o ${OBJECTDIR}/_ext/232825383/hpl_core_m4.o ../hpl/core/hpl_core_m4.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232825383/hpl_init.o: ../hpl/core/hpl_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232825383" 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/232825383/hpl_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232825383/hpl_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232825383/hpl_init.o.d" -o ${OBJECTDIR}/_ext/232825383/hpl_init.o ../hpl/core/hpl_init.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232798043/hpl_dmac.o: ../hpl/dmac/hpl_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232798043" 
	@${RM} ${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/232798043/hpl_dmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232798043/hpl_dmac.o.d" -o ${OBJECTDIR}/_ext/232798043/hpl_dmac.o ../hpl/dmac/hpl_dmac.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232717931/hpl_gclk.o: ../hpl/gclk/hpl_gclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232717931" 
	@${RM} ${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/_ext/232717931/hpl_gclk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232717931/hpl_gclk.o.d" -o ${OBJECTDIR}/_ext/232717931/hpl_gclk.o ../hpl/gclk/hpl_gclk.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/232539185/hpl_mclk.o: ../hpl/mclk/hpl_mclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/232539185" 
	@${RM} ${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/_ext/232539185/hpl_mclk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/232539185/hpl_mclk.o.d" -o ${OBJECTDIR}/_ext/232539185/hpl_mclk.o ../hpl/mclk/hpl_mclk.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o: ../hpl/osc32kctrl/hpl_osc32kctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/833842894" 
	@${RM} ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/_ext/833842894/hpl_osc32kctrl.o ../hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o: ../hpl/oscctrl/hpl_oscctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1862940304" 
	@${RM} ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o.d" -o ${OBJECTDIR}/_ext/1862940304/hpl_oscctrl.o ../hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1126497609/hpl_pm.o: ../hpl/pm/hpl_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1126497609" 
	@${RM} ${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1126497609/hpl_pm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1126497609/hpl_pm.o.d" -o ${OBJECTDIR}/_ext/1126497609/hpl_pm.o ../hpl/pm/hpl_pm.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/9468513/hpl_ramecc.o: ../hpl/ramecc/hpl_ramecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/9468513" 
	@${RM} ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/9468513/hpl_ramecc.o.d" -o ${OBJECTDIR}/_ext/9468513/hpl_ramecc.o ../hpl/ramecc/hpl_ramecc.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/41939163/hpl_sercom.o: ../hpl/sercom/hpl_sercom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/41939163" 
	@${RM} ${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/_ext/41939163/hpl_sercom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/41939163/hpl_sercom.o.d" -o ${OBJECTDIR}/_ext/41939163/hpl_sercom.o ../hpl/sercom/hpl_sercom.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1472/atmel_start.o: ../atmel_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/atmel_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/atmel_start.o.d" -o ${OBJECTDIR}/_ext/1472/atmel_start.o ../atmel_start.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1472/driver_init.o: ../driver_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/driver_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/driver_init.o.d" -o ${OBJECTDIR}/_ext/1472/driver_init.o ../driver_init.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
${OBJECTDIR}/_ext/1472/edbg_uart_example.o: ../edbg_uart_example.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/edbg_uart_example.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb  -I "C:/Program Files (x86)/Atmel/Studio/7.0/Packs/atmel/SAME54_DFP/1.1.134/include" -I "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/arm/CMSIS/5.4.0/CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -DNDEBUG -I "../Config" -I "../" -I "../examples" -I "../hal/include" -I "../hal/utils/include" -I "../hpl/cmcc" -I "../hpl/core" -I "../hpl/dmac" -I "../hpl/gclk" -I "../hpl/mclk" -I "../hpl/osc32kctrl" -I "../hpl/oscctrl" -I "../hpl/pm" -I "../hpl/port" -I "../hpl/ramecc" -I "../hpl/sercom" -I "../hri" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/edbg_uart_example.o.d" -o ${OBJECTDIR}/_ext/1472/edbg_uart_example.o ../edbg_uart_example.c  -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mfloat-abi=softfp -mfpu=fpv4-sp-d16
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m4   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nano.specs -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\EDBG_UART.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1  -L"../Device_Startup" -Wl,--gc-sections  -Wl,-lm  -Tsame54p20a_flash.ld
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O binary "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.bin"
	
	${MP_CC_DIR}\\arm-none-eabi-objcopy -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O binary "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.eep" || exit 0
	${MP_CC_DIR}\\arm-none-eabi-objdump -h -S "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" > "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.lss"
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O srec -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.srec"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m4  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nano.specs -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\EDBG_UART.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)  -L"../Device_Startup" -Wl,--gc-sections  -Wl,-lm  -Tsame54p20a_flash.ld
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O binary "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.bin"
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.hex"
	${MP_CC_DIR}\\arm-none-eabi-objcopy -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O binary "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.eep" || exit 0
	${MP_CC_DIR}\\arm-none-eabi-objdump -h -S "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" > "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.lss"
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O srec -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/EDBG_UART.X.${IMAGE_TYPE}.srec"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Release
	${RM} -r dist/Release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
