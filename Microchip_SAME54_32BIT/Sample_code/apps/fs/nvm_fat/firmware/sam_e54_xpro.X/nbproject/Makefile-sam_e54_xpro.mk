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
ifeq "$(wildcard nbproject/Makefile-local-sam_e54_xpro.mk)" "nbproject/Makefile-local-sam_e54_xpro.mk"
include nbproject/Makefile-local-sam_e54_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_e54_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e54_xpro/bsp/bsp.c ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_nvmctrl.c ../src/config/sam_e54_xpro/driver/memory/src/drv_memory.c ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_file_system.c ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/mpu/plib_mpu.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e54_xpro/system/fs/src/sys_fs.c ../src/config/sam_e54_xpro/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e54_xpro/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/nvm_disk_images.c ../src/main.c ../src/app.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/544748269/bsp.o ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o ${OBJECTDIR}/_ext/1062319119/drv_memory.o ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/1950920501/plib_mpu.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/1171329604/ff.o ${OBJECTDIR}/_ext/1171329604/ffunicode.o ${OBJECTDIR}/_ext/656274803/diskio.o ${OBJECTDIR}/_ext/743848790/sys_fs.o ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/544748269/bsp.o.d ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d ${OBJECTDIR}/_ext/1062319119/drv_memory.o.d ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d ${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/348904952/plib_port.o.d ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d ${OBJECTDIR}/_ext/1171329604/ff.o.d ${OBJECTDIR}/_ext/1171329604/ffunicode.o.d ${OBJECTDIR}/_ext/656274803/diskio.o.d ${OBJECTDIR}/_ext/743848790/sys_fs.o.d ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/129427312/sys_int.o.d ${OBJECTDIR}/_ext/68098787/initialization.o.d ${OBJECTDIR}/_ext/68098787/interrupts.o.d ${OBJECTDIR}/_ext/68098787/exceptions.o.d ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d ${OBJECTDIR}/_ext/68098787/tasks.o.d ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/544748269/bsp.o ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o ${OBJECTDIR}/_ext/1062319119/drv_memory.o ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ${OBJECTDIR}/_ext/1950920501/plib_mpu.o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ${OBJECTDIR}/_ext/348904952/plib_port.o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ${OBJECTDIR}/_ext/1171329604/ff.o ${OBJECTDIR}/_ext/1171329604/ffunicode.o ${OBJECTDIR}/_ext/656274803/diskio.o ${OBJECTDIR}/_ext/743848790/sys_fs.o ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/129427312/sys_int.o ${OBJECTDIR}/_ext/68098787/initialization.o ${OBJECTDIR}/_ext/68098787/interrupts.o ${OBJECTDIR}/_ext/68098787/exceptions.o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ${OBJECTDIR}/_ext/68098787/tasks.o ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o

# Source Files
SOURCEFILES=../src/config/sam_e54_xpro/bsp/bsp.c ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_nvmctrl.c ../src/config/sam_e54_xpro/driver/memory/src/drv_memory.c ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_file_system.c ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_e54_xpro/peripheral/mpu/plib_mpu.c ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_e54_xpro/peripheral/port/plib_port.c ../src/config/sam_e54_xpro/stdio/xc32_monitor.c ../src/config/sam_e54_xpro/system/cache/sys_cache.c ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e54_xpro/system/fs/src/sys_fs.c ../src/config/sam_e54_xpro/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e54_xpro/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e54_xpro/system/int/src/sys_int.c ../src/config/sam_e54_xpro/initialization.c ../src/config/sam_e54_xpro/interrupts.c ../src/config/sam_e54_xpro/exceptions.c ../src/config/sam_e54_xpro/startup_xc32.c ../src/config/sam_e54_xpro/libc_syscalls.c ../src/config/sam_e54_xpro/tasks.c ../src/nvm_disk_images.c ../src/main.c ../src/app.c ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-sam_e54_xpro.mk dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME54P20A
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_e54_xpro\ATSAME54P20A.ld"
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
${OBJECTDIR}/_ext/544748269/bsp.o: ../src/config/sam_e54_xpro/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/544748269" 
	@${RM} ${OBJECTDIR}/_ext/544748269/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/544748269/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/544748269/bsp.o.d" -o ${OBJECTDIR}/_ext/544748269/bsp.o ../src/config/sam_e54_xpro/bsp/bsp.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/544748269/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o: ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1062319119" 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1062319119/drv_memory.o: ../src/config/sam_e54_xpro/driver/memory/src/drv_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1062319119" 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1062319119/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1062319119/drv_memory.o ../src/config/sam_e54_xpro/driver/memory/src/drv_memory.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1062319119/drv_memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o: ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1062319119" 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_file_system.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1950920501/plib_mpu.o: ../src/config/sam_e54_xpro/peripheral/mpu/plib_mpu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1950920501" 
	@${RM} ${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950920501/plib_mpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d" -o ${OBJECTDIR}/_ext/1950920501/plib_mpu.o ../src/config/sam_e54_xpro/peripheral/mpu/plib_mpu.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/348904952/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171329604/ff.o: ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171329604" 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171329604/ff.o.d" -o ${OBJECTDIR}/_ext/1171329604/ff.o ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171329604/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171329604/ffunicode.o: ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ffunicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171329604" 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171329604/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1171329604/ffunicode.o ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171329604/ffunicode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/656274803/diskio.o: ../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/656274803" 
	@${RM} ${OBJECTDIR}/_ext/656274803/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/656274803/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/656274803/diskio.o.d" -o ${OBJECTDIR}/_ext/656274803/diskio.o ../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/656274803/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/743848790/sys_fs.o: ../src/config/sam_e54_xpro/system/fs/src/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743848790" 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/743848790/sys_fs.o.d" -o ${OBJECTDIR}/_ext/743848790/sys_fs.o ../src/config/sam_e54_xpro/system/fs/src/sys_fs.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743848790/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o: ../src/config/sam_e54_xpro/system/fs/src/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743848790" 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o ../src/config/sam_e54_xpro/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o: ../src/config/sam_e54_xpro/system/fs/src/sys_fs_fat_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743848790" 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o ../src/config/sam_e54_xpro/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/129427312/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o: ../src/nvm_disk_images.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d" -o ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o ../src/nvm_disk_images.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/544748269/bsp.o: ../src/config/sam_e54_xpro/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/544748269" 
	@${RM} ${OBJECTDIR}/_ext/544748269/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/544748269/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/544748269/bsp.o.d" -o ${OBJECTDIR}/_ext/544748269/bsp.o ../src/config/sam_e54_xpro/bsp/bsp.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/544748269/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o: ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1062319119" 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1062319119/drv_memory_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1062319119/drv_memory.o: ../src/config/sam_e54_xpro/driver/memory/src/drv_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1062319119" 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1062319119/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1062319119/drv_memory.o ../src/config/sam_e54_xpro/driver/memory/src/drv_memory.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1062319119/drv_memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o: ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1062319119" 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o ../src/config/sam_e54_xpro/driver/memory/src/drv_memory_file_system.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1062319119/drv_memory_file_system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2056749927/plib_clock.o: ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2056749927" 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056749927/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2056749927/plib_clock.o ../src/config/sam_e54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2056749927/plib_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/349294639/plib_cmcc.o: ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/349294639" 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/349294639/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/349294639/plib_cmcc.o ../src/config/sam_e54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/349294639/plib_cmcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2058899413/plib_evsys.o: ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2058899413" 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058899413/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2058899413/plib_evsys.o ../src/config/sam_e54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2058899413/plib_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1950920501/plib_mpu.o: ../src/config/sam_e54_xpro/peripheral/mpu/plib_mpu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1950920501" 
	@${RM} ${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950920501/plib_mpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d" -o ${OBJECTDIR}/_ext/1950920501/plib_mpu.o ../src/config/sam_e54_xpro/peripheral/mpu/plib_mpu.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1950920501/plib_mpu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/348958103/plib_nvic.o: ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/348958103" 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/348958103/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/348958103/plib_nvic.o ../src/config/sam_e54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/348958103/plib_nvic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o: ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1986180951" 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o ../src/config/sam_e54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986180951/plib_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/348904952/plib_port.o: ../src/config/sam_e54_xpro/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/348904952" 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/348904952/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/348904952/plib_port.o.d" -o ${OBJECTDIR}/_ext/348904952/plib_port.o ../src/config/sam_e54_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/348904952/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/498645085/xc32_monitor.o: ../src/config/sam_e54_xpro/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/498645085" 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/498645085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/498645085/xc32_monitor.o ../src/config/sam_e54_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/498645085/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2098947918/sys_cache.o: ../src/config/sam_e54_xpro/system/cache/sys_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2098947918" 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2098947918/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2098947918/sys_cache.o ../src/config/sam_e54_xpro/system/cache/sys_cache.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2098947918/sys_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171329604/ff.o: ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171329604" 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171329604/ff.o.d" -o ${OBJECTDIR}/_ext/1171329604/ff.o ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171329604/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171329604/ffunicode.o: ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ffunicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171329604" 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171329604/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171329604/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1171329604/ffunicode.o ../src/config/sam_e54_xpro/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171329604/ffunicode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/656274803/diskio.o: ../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/656274803" 
	@${RM} ${OBJECTDIR}/_ext/656274803/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/656274803/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/656274803/diskio.o.d" -o ${OBJECTDIR}/_ext/656274803/diskio.o ../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/656274803/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/743848790/sys_fs.o: ../src/config/sam_e54_xpro/system/fs/src/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743848790" 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/743848790/sys_fs.o.d" -o ${OBJECTDIR}/_ext/743848790/sys_fs.o ../src/config/sam_e54_xpro/system/fs/src/sys_fs.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743848790/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o: ../src/config/sam_e54_xpro/system/fs/src/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743848790" 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o ../src/config/sam_e54_xpro/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743848790/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o: ../src/config/sam_e54_xpro/system/fs/src/sys_fs_fat_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743848790" 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o ../src/config/sam_e54_xpro/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743848790/sys_fs_fat_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/129427312/sys_int.o: ../src/config/sam_e54_xpro/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/129427312" 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/129427312/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/129427312/sys_int.o.d" -o ${OBJECTDIR}/_ext/129427312/sys_int.o ../src/config/sam_e54_xpro/system/int/src/sys_int.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/129427312/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/initialization.o: ../src/config/sam_e54_xpro/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/initialization.o.d" -o ${OBJECTDIR}/_ext/68098787/initialization.o ../src/config/sam_e54_xpro/initialization.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/interrupts.o: ../src/config/sam_e54_xpro/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/interrupts.o.d" -o ${OBJECTDIR}/_ext/68098787/interrupts.o ../src/config/sam_e54_xpro/interrupts.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/exceptions.o: ../src/config/sam_e54_xpro/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/exceptions.o.d" -o ${OBJECTDIR}/_ext/68098787/exceptions.o ../src/config/sam_e54_xpro/exceptions.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/startup_xc32.o: ../src/config/sam_e54_xpro/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/68098787/startup_xc32.o ../src/config/sam_e54_xpro/startup_xc32.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/libc_syscalls.o: ../src/config/sam_e54_xpro/libc_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/68098787/libc_syscalls.o ../src/config/sam_e54_xpro/libc_syscalls.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/libc_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/68098787/tasks.o: ../src/config/sam_e54_xpro/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/68098787" 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/68098787/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/68098787/tasks.o.d" -o ${OBJECTDIR}/_ext/68098787/tasks.o ../src/config/sam_e54_xpro/tasks.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/68098787/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o: ../src/nvm_disk_images.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d" -o ${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o ../src/nvm_disk_images.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/nvm_disk_images.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o: ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2060180706" 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e54_xpro" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/file_system" -I"../src/config/sam_e54_xpro/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o ../src/config/sam_e54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -Werror-implicit-function-declaration -Wfloat-equal -Wpacked -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2060180706/plib_sercom2_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e54_xpro/ATSAME54P20A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/sam_e54_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sam_e54_xpro
	${RM} -r dist/sam_e54_xpro

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
