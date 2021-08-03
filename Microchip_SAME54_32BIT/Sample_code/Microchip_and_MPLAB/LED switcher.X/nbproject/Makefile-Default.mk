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
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=examples/driver_examples.c gcc/gcc/startup_same54.c gcc/system_same54.c hal/src/hal_atomic.c hal/src/hal_cache.c hal/src/hal_delay.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/cmcc/hpl_cmcc.c hpl/core/hpl_core_m4.c hpl/core/hpl_init.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/ramecc/hpl_ramecc.c led_switcher_main.c driver_init.c atmel_start.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/gcc/gcc/startup_same54.o ${OBJECTDIR}/gcc/system_same54.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_cache.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o ${OBJECTDIR}/hpl/core/hpl_core_m4.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o ${OBJECTDIR}/led_switcher_main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/atmel_start.o
POSSIBLE_DEPFILES=${OBJECTDIR}/examples/driver_examples.o.d ${OBJECTDIR}/gcc/gcc/startup_same54.o.d ${OBJECTDIR}/gcc/system_same54.o.d ${OBJECTDIR}/hal/src/hal_atomic.o.d ${OBJECTDIR}/hal/src/hal_cache.o.d ${OBJECTDIR}/hal/src/hal_delay.o.d ${OBJECTDIR}/hal/src/hal_gpio.o.d ${OBJECTDIR}/hal/src/hal_init.o.d ${OBJECTDIR}/hal/src/hal_io.o.d ${OBJECTDIR}/hal/src/hal_sleep.o.d ${OBJECTDIR}/hal/utils/src/utils_assert.o.d ${OBJECTDIR}/hal/utils/src/utils_event.o.d ${OBJECTDIR}/hal/utils/src/utils_list.o.d ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d ${OBJECTDIR}/hpl/core/hpl_init.o.d ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d ${OBJECTDIR}/hpl/pm/hpl_pm.o.d ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d ${OBJECTDIR}/led_switcher_main.o.d ${OBJECTDIR}/driver_init.o.d ${OBJECTDIR}/atmel_start.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/gcc/gcc/startup_same54.o ${OBJECTDIR}/gcc/system_same54.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_cache.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o ${OBJECTDIR}/hpl/core/hpl_core_m4.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o ${OBJECTDIR}/led_switcher_main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/atmel_start.o

# Source Files
SOURCEFILES=examples/driver_examples.c gcc/gcc/startup_same54.c gcc/system_same54.c hal/src/hal_atomic.c hal/src/hal_cache.c hal/src/hal_delay.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/cmcc/hpl_cmcc.c hpl/core/hpl_core_m4.c hpl/core/hpl_init.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/ramecc/hpl_ramecc.c led_switcher_main.c driver_init.c atmel_start.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${DFP_DIR}/include"  -I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-Default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/examples/driver_examples.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gcc/gcc/startup_same54.o: gcc/gcc/startup_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gcc/gcc" 
	@${RM} ${OBJECTDIR}/gcc/gcc/startup_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/gcc/startup_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/gcc/gcc/startup_same54.o.d" -o ${OBJECTDIR}/gcc/gcc/startup_same54.o gcc/gcc/startup_same54.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/gcc/gcc/startup_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gcc/system_same54.o: gcc/system_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gcc" 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/gcc/system_same54.o.d" -o ${OBJECTDIR}/gcc/system_same54.o gcc/system_same54.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/gcc/system_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_atomic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_cache.o: hal/src/hal_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_cache.o.d" -o ${OBJECTDIR}/hal/src/hal_cache.o hal/src/hal_cache.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o: hpl/cmcc/hpl_cmcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/cmcc" 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" -o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o hpl/cmcc/hpl_cmcc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/core/hpl_core_m4.o: hpl/core/hpl_core_m4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m4.o hpl/core/hpl_core_m4.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o: hpl/ramecc/hpl_ramecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/ramecc" 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" -o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o hpl/ramecc/hpl_ramecc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/led_switcher_main.o: led_switcher_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led_switcher_main.o.d 
	@${RM} ${OBJECTDIR}/led_switcher_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/led_switcher_main.o.d" -o ${OBJECTDIR}/led_switcher_main.o led_switcher_main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/led_switcher_main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/driver_init.o: driver_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/driver_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4 -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/atmel_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/examples/driver_examples.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gcc/gcc/startup_same54.o: gcc/gcc/startup_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gcc/gcc" 
	@${RM} ${OBJECTDIR}/gcc/gcc/startup_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/gcc/startup_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/gcc/gcc/startup_same54.o.d" -o ${OBJECTDIR}/gcc/gcc/startup_same54.o gcc/gcc/startup_same54.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/gcc/gcc/startup_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gcc/system_same54.o: gcc/system_same54.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gcc" 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/gcc/system_same54.o.d" -o ${OBJECTDIR}/gcc/system_same54.o gcc/system_same54.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/gcc/system_same54.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_atomic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_cache.o: hal/src/hal_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_cache.o.d" -o ${OBJECTDIR}/hal/src/hal_cache.o hal/src/hal_cache.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o: hpl/cmcc/hpl_cmcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/cmcc" 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" -o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o hpl/cmcc/hpl_cmcc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/core/hpl_core_m4.o: hpl/core/hpl_core_m4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m4.o hpl/core/hpl_core_m4.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o: hpl/ramecc/hpl_ramecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/ramecc" 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" -o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o hpl/ramecc/hpl_ramecc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/led_switcher_main.o: led_switcher_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led_switcher_main.o.d 
	@${RM} ${OBJECTDIR}/led_switcher_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/led_switcher_main.o.d" -o ${OBJECTDIR}/led_switcher_main.o led_switcher_main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/led_switcher_main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/driver_init.o: driver_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/driver_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m4  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "./." -I "hpl/gclk" -I "hpl/port" -I "hpl/mclk" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "hpl/core" -I "hpl/ramecc" -I "hpl/cmcc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hri"  -I "include" -I "CMSIS/Core/Include"  -Os -ffunction-sections -mlong-calls -Wall -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	@${FIXDEPS} "${OBJECTDIR}/atmel_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m4   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\LED_switcher.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1  -L"gcc/gcc" -Wl,--gc-sections   -T"gcc/gcc/same54p20a_flash.ld" 
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m4  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\LED_switcher.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)  -L"gcc/gcc" -Wl,--gc-sections   -T"gcc/gcc/same54p20a_flash.ld" 
	
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/LED_switcher.X.${IMAGE_TYPE}.hex"
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Default
	${RM} -r dist/Default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
