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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=AND08479_Lab6_main.c AND08479_Lab6_asmLib.s AND08479_Lab6_delay.c AND08479_Lab6_circBuff.c AND08479_Lab6_ADC.c AND08479_Lab6_Display.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/AND08479_Lab6_main.o ${OBJECTDIR}/AND08479_Lab6_asmLib.o ${OBJECTDIR}/AND08479_Lab6_delay.o ${OBJECTDIR}/AND08479_Lab6_circBuff.o ${OBJECTDIR}/AND08479_Lab6_ADC.o ${OBJECTDIR}/AND08479_Lab6_Display.o
POSSIBLE_DEPFILES=${OBJECTDIR}/AND08479_Lab6_main.o.d ${OBJECTDIR}/AND08479_Lab6_asmLib.o.d ${OBJECTDIR}/AND08479_Lab6_delay.o.d ${OBJECTDIR}/AND08479_Lab6_circBuff.o.d ${OBJECTDIR}/AND08479_Lab6_ADC.o.d ${OBJECTDIR}/AND08479_Lab6_Display.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/AND08479_Lab6_main.o ${OBJECTDIR}/AND08479_Lab6_asmLib.o ${OBJECTDIR}/AND08479_Lab6_delay.o ${OBJECTDIR}/AND08479_Lab6_circBuff.o ${OBJECTDIR}/AND08479_Lab6_ADC.o ${OBJECTDIR}/AND08479_Lab6_Display.o

# Source Files
SOURCEFILES=AND08479_Lab6_main.c AND08479_Lab6_asmLib.s AND08479_Lab6_delay.c AND08479_Lab6_circBuff.c AND08479_Lab6_ADC.c AND08479_Lab6_Display.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GA002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/AND08479_Lab6_main.o: AND08479_Lab6_main.c  .generated_files/flags/default/7dcc5417922e6a563e62b30345b086a017e8845c .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_main.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_main.c  -o ${OBJECTDIR}/AND08479_Lab6_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_delay.o: AND08479_Lab6_delay.c  .generated_files/flags/default/18f88fa2be69fc5427c3a6ff937790bb30185da1 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_delay.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_delay.c  -o ${OBJECTDIR}/AND08479_Lab6_delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_circBuff.o: AND08479_Lab6_circBuff.c  .generated_files/flags/default/6bec4194685e2e390394fc9788c015ebccfc471c .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_circBuff.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_circBuff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_circBuff.c  -o ${OBJECTDIR}/AND08479_Lab6_circBuff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_circBuff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_ADC.o: AND08479_Lab6_ADC.c  .generated_files/flags/default/c41af18c42147584117074c2a7ef5038007ff812 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_ADC.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_ADC.c  -o ${OBJECTDIR}/AND08479_Lab6_ADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_ADC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_Display.o: AND08479_Lab6_Display.c  .generated_files/flags/default/da4747eef1313e98765f384e4082085ee3058071 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_Display.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_Display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_Display.c  -o ${OBJECTDIR}/AND08479_Lab6_Display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_Display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/AND08479_Lab6_main.o: AND08479_Lab6_main.c  .generated_files/flags/default/698f0af83f519f08235e6d7bf6096b18d88e566f .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_main.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_main.c  -o ${OBJECTDIR}/AND08479_Lab6_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_delay.o: AND08479_Lab6_delay.c  .generated_files/flags/default/7379771fcf7fa784246f3aea1b4ba7f81e29b220 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_delay.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_delay.c  -o ${OBJECTDIR}/AND08479_Lab6_delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_delay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_circBuff.o: AND08479_Lab6_circBuff.c  .generated_files/flags/default/1e892183e502a1606bd708d68549a0d55a10e468 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_circBuff.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_circBuff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_circBuff.c  -o ${OBJECTDIR}/AND08479_Lab6_circBuff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_circBuff.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_ADC.o: AND08479_Lab6_ADC.c  .generated_files/flags/default/cdff6339f47f66400b40e4232e749d6d6dc279f4 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_ADC.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_ADC.c  -o ${OBJECTDIR}/AND08479_Lab6_ADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_ADC.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AND08479_Lab6_Display.o: AND08479_Lab6_Display.c  .generated_files/flags/default/86042123f41c7c6cb991939ac02d2fa92633bcb7 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_Display.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_Display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AND08479_Lab6_Display.c  -o ${OBJECTDIR}/AND08479_Lab6_Display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AND08479_Lab6_Display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/AND08479_Lab6_asmLib.o: AND08479_Lab6_asmLib.s  .generated_files/flags/default/f577fc1b97bba6d13a1f5cc9d187dcfbdfb3ec4f .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_asmLib.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_asmLib.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  AND08479_Lab6_asmLib.s  -o ${OBJECTDIR}/AND08479_Lab6_asmLib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/AND08479_Lab6_asmLib.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/AND08479_Lab6_asmLib.o: AND08479_Lab6_asmLib.s  .generated_files/flags/default/b1e056f9ec028a063960100e0032094d4f162363 .generated_files/flags/default/292ec0637d014a04657419c3011fcad17e352c56
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_asmLib.o.d 
	@${RM} ${OBJECTDIR}/AND08479_Lab6_asmLib.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  AND08479_Lab6_asmLib.s  -o ${OBJECTDIR}/AND08479_Lab6_asmLib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/AND08479_Lab6_asmLib.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/AND08479_Lab6_v1.0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
