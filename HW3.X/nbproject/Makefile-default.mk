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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=compare1.c vmonitor.c main.c timer2.c "../../../../Downloads/Dummy FIles for HW 3-20211212/PIDFSM.c" "../../../../Downloads/Dummy FIles for HW 3-20211212/UIFSM.c" "../../../../Downloads/ECE414-main (5)/ECE414-main/lab4.X/ztimer.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/compare1.o ${OBJECTDIR}/vmonitor.o ${OBJECTDIR}/main.o ${OBJECTDIR}/timer2.o ${OBJECTDIR}/_ext/973245202/PIDFSM.o ${OBJECTDIR}/_ext/973245202/UIFSM.o ${OBJECTDIR}/_ext/1932169611/ztimer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/compare1.o.d ${OBJECTDIR}/vmonitor.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/timer2.o.d ${OBJECTDIR}/_ext/973245202/PIDFSM.o.d ${OBJECTDIR}/_ext/973245202/UIFSM.o.d ${OBJECTDIR}/_ext/1932169611/ztimer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/compare1.o ${OBJECTDIR}/vmonitor.o ${OBJECTDIR}/main.o ${OBJECTDIR}/timer2.o ${OBJECTDIR}/_ext/973245202/PIDFSM.o ${OBJECTDIR}/_ext/973245202/UIFSM.o ${OBJECTDIR}/_ext/1932169611/ztimer.o

# Source Files
SOURCEFILES=compare1.c vmonitor.c main.c timer2.c ../../../../Downloads/Dummy FIles for HW 3-20211212/PIDFSM.c ../../../../Downloads/Dummy FIles for HW 3-20211212/UIFSM.c ../../../../Downloads/ECE414-main (5)/ECE414-main/lab4.X/ztimer.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/compare1.o: compare1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/compare1.o.d 
	@${RM} ${OBJECTDIR}/compare1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/compare1.o.d" -o ${OBJECTDIR}/compare1.o compare1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/compare1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/vmonitor.o: vmonitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vmonitor.o.d 
	@${RM} ${OBJECTDIR}/vmonitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/vmonitor.o.d" -o ${OBJECTDIR}/vmonitor.o vmonitor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/vmonitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timer2.o: timer2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer2.o.d 
	@${RM} ${OBJECTDIR}/timer2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timer2.o.d" -o ${OBJECTDIR}/timer2.o timer2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/timer2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/973245202/PIDFSM.o: ../../../../Downloads/Dummy\ FIles\ for\ HW\ 3-20211212/PIDFSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/973245202" 
	@${RM} ${OBJECTDIR}/_ext/973245202/PIDFSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/973245202/PIDFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/973245202/PIDFSM.o.d" -o ${OBJECTDIR}/_ext/973245202/PIDFSM.o "../../../../Downloads/Dummy FIles for HW 3-20211212/PIDFSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/973245202/PIDFSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/973245202/UIFSM.o: ../../../../Downloads/Dummy\ FIles\ for\ HW\ 3-20211212/UIFSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/973245202" 
	@${RM} ${OBJECTDIR}/_ext/973245202/UIFSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/973245202/UIFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/973245202/UIFSM.o.d" -o ${OBJECTDIR}/_ext/973245202/UIFSM.o "../../../../Downloads/Dummy FIles for HW 3-20211212/UIFSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/973245202/UIFSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1932169611/ztimer.o: ../../../../Downloads/ECE414-main\ \(5\)/ECE414-main/lab4.X/ztimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1932169611" 
	@${RM} ${OBJECTDIR}/_ext/1932169611/ztimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1932169611/ztimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1932169611/ztimer.o.d" -o ${OBJECTDIR}/_ext/1932169611/ztimer.o "../../../../Downloads/ECE414-main (5)/ECE414-main/lab4.X/ztimer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/1932169611/ztimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/compare1.o: compare1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/compare1.o.d 
	@${RM} ${OBJECTDIR}/compare1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/compare1.o.d" -o ${OBJECTDIR}/compare1.o compare1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/compare1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/vmonitor.o: vmonitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vmonitor.o.d 
	@${RM} ${OBJECTDIR}/vmonitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/vmonitor.o.d" -o ${OBJECTDIR}/vmonitor.o vmonitor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/vmonitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timer2.o: timer2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer2.o.d 
	@${RM} ${OBJECTDIR}/timer2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timer2.o.d" -o ${OBJECTDIR}/timer2.o timer2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/timer2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/973245202/PIDFSM.o: ../../../../Downloads/Dummy\ FIles\ for\ HW\ 3-20211212/PIDFSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/973245202" 
	@${RM} ${OBJECTDIR}/_ext/973245202/PIDFSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/973245202/PIDFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/973245202/PIDFSM.o.d" -o ${OBJECTDIR}/_ext/973245202/PIDFSM.o "../../../../Downloads/Dummy FIles for HW 3-20211212/PIDFSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/973245202/PIDFSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/973245202/UIFSM.o: ../../../../Downloads/Dummy\ FIles\ for\ HW\ 3-20211212/UIFSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/973245202" 
	@${RM} ${OBJECTDIR}/_ext/973245202/UIFSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/973245202/UIFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/973245202/UIFSM.o.d" -o ${OBJECTDIR}/_ext/973245202/UIFSM.o "../../../../Downloads/Dummy FIles for HW 3-20211212/UIFSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/973245202/UIFSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1932169611/ztimer.o: ../../../../Downloads/ECE414-main\ \(5\)/ECE414-main/lab4.X/ztimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1932169611" 
	@${RM} ${OBJECTDIR}/_ext/1932169611/ztimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1932169611/ztimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1932169611/ztimer.o.d" -o ${OBJECTDIR}/_ext/1932169611/ztimer.o "../../../../Downloads/ECE414-main (5)/ECE414-main/lab4.X/ztimer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/1932169611/ztimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/HW3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
