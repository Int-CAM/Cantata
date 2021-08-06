#
# Generated makefile for test "atest_dummyFunctions"
#

#
# Stop the MAKEFLAGS variable being exported.
# This is needed for sub-make processes to use different options.
#
unexport MAKEFLAGS

#
# The name of the test
#
THIS_TEST := atest_dummyFunctions

#
# Test script file
#
atest_dummyFunctions_TESTOBJ := atest_dummyFunctions

#
# Software under test
#
atest_dummyFunctions_SUTOBJ := DeviceAccessService/dummyFunctions

#
# Compile and link as 'C' or 'CXX'
#
atest_dummyFunctions_C_OR_CPP_MODE := C

#
# Additional libraries to link
#
atest_dummyFunctions_EXTLIBS := 

#
# Additional object files to link
#
atest_dummyFunctions_EXTOBJS := 

#
# Additional defines for this test
#
atest_dummyFunctions_DEFINES := NDEBUG 

#
# Additional includes for this test
#
atest_dummyFunctions_INCLUDES := P:/Source/FlightConfig \
                                 P:/Source/FlightConfig/RxfProjectConfiguration \
                                 P:/Source/Generated \
                                 P:/Source/Generated/OPAR \
                                 P:/SoftwareConfiguration/PredefinedIncludeFiles \
                                 P:/SoftwareConfiguration/PredefinedIncludeBlocks \
                                 P:/HDSW/RUAG_Platform_HDSW/HDSW/include \
                                 P:/HDSW/RUAG_Platform_HDSW/HDSW-conf \
                                 P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source \
                                 P:/OHB-newlib/code/ohb-newlib/inc

#
# Include the test definitions makefile
#
include ../configuration/test_defs.mk

#
# Rules for compiling the software under test
#
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/dummyFunctions.c
	$(MKDIR_CMD) -p atest_dummyFunctions/DeviceAccessService
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	-@$(ECHO_CMD_MED) P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/dummyFunctions.c > $(DYNAMIC_THIS_TEST)/filelist.lst
	-@$(QAC_CMD)
	$(subst %DEFINES%, $(foreach define,$(atest_dummyFunctions_ALL_DEFINES),$(DEFINE_OPT)$(define)), $(subst %INCLUDES%, $(foreach include,$(atest_dummyFunctions_ALL_INCLUDES),$(subst %s,$(include),$(INCLUDE_PATH_OPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/$(atest_dummyFunctions_SUTOBJ),$(COMPILE_CC_CMD))))

#
# Rule for compiling the test script
#
atest_dummyFunctions/atest_dummyFunctions.o : atest_dummyFunctions/atest_dummyFunctions.c
	$(MKDIR_CMD) -p atest_dummyFunctions
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	-@$(ECHO_CMD_MED) atest_dummyFunctions/atest_dummyFunctions.c > $(DYNAMIC_THIS_TEST)/filelist.lst
	$(subst %DEFINES%, $(foreach define,$(atest_dummyFunctions_ALL_DEFINES),$(DEFINE_OPT)$(define)), $(subst %INCLUDES%, $(foreach include,$(atest_dummyFunctions_ALL_INCLUDES),$(subst %s,$(include),$(INCLUDE_PATH_OPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/$(atest_dummyFunctions_SUTOBJ),$(COMPILE_CC_CMD))))

#
# Rule for linking the test executable
#
$(atest_dummyFunctions_TEST_EXE) : \
	$(atest_dummyFunctions_SUTOBJ_FILENAMES) \
	$(atest_dummyFunctions_TESTOBJ_FILENAMES) \
	$(atest_dummyFunctions_EXTRA_DEPENDS)
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ",,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,1,0" >> $(CANTPP_TOP_LEVEL_LOG)
	$(subst %EXTLIBS%, $(foreach extlib,$(atest_dummyFunctions_ALL_EXTLIBS),$(subst %s,$(extlib),$(atest_dummyFunctions_LINK_EXTLIBOPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/atest_dummyFunctions,$(subst %EXTOBJS%,$(atest_dummyFunctions_EXTOBJS),$(CC_LINK_CMD))))
	@$(ECHO_CMD_MED) Built atest_dummyFunctions successfully

#
# Rule for running the test executable
#
$(atest_dummyFunctions_CTR_FILE) : $(atest_dummyFunctions_TEST_EXE)
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),0,1,0,1,0 >> $(CANTPP_TOP_LEVEL_LOG)
	@$(RUN_CMD)
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),0,0,1,0,0 >> $(CANTPP_TOP_LEVEL_LOG)

#
# Rule for ensuring nothing is built/run unless the ctr file is out of date
#
$(atest_dummyFunctions_RUN) : $(atest_dummyFunctions_CTR_FILE)

#
# Rule for controlling the building and running of the test executable
#
ifeq ($(EXECUTE),1)
ifeq ($(PUSH_TO_SERVER),1)
$(atest_dummyFunctions_BUILD_AND_RUN) : 
	-@$(MAKE) $(atest_dummyFunctions_RUN) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(ECHO_CMD_MED) Uploading test results to Cantata Server...
	@$(JAVA_CMD) -cp "$(CANTATA_INSTALL_DIR)/bin/client.jar" com.qas.cantata.client.control.CCLC filesToLoad=$(DYNAMIC_THIS_TEST)/.*.ctr,$(DYNAMIC_THIS_TEST)/.*.ctg,$(DYNAMIC_THIS_TEST)/.*.cov,P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/dummyFunctions.c,$(DYNAMIC_THIS_TEST)/atest_dummyFunctions.c optionsFiles=../../ipg.cop,$(DYNAMIC_THIS_TEST)/ipg.cop 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(CTR_STATE_CMD)
else
$(atest_dummyFunctions_BUILD_AND_RUN) : 
	-@$(MAKE) $(atest_dummyFunctions_RUN) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(CTR_STATE_CMD)
endif
else
$(atest_dummyFunctions_BUILD_AND_RUN) : 
	@$(MAKE) $(atest_dummyFunctions_TEST_EXE) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(ECHO_CMD_MED) Finished $(DYNAMIC_THIS_TEST)
endif

#
# Rules for generating the required folder structure
#
atest_dummyFunctions/DeviceAccessService : 
	-@$(MKDIR_CMD) $@

#
# Additional dependencies
#
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : ../../ipg.cop
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/IRiCReactive.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTCompiler.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTCompilerTypes.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTModelling.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTRTOS.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTStartBehaviorEvent.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTTarget.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_ERR.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_EVT.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_FSM.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_MEM.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_MSQ.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_MTX.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_OSW.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_RXF.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_TMM.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_TSK.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/ApplicationSupportServices.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/DeviceAccessService.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/FDeviceAccessService.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/dummyFunctions.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ExecutionPlatformLayer.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/FLogService.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogService.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceConfiguration/LogServiceConfig.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceConfiguration/LogServiceConfig_H2Sat.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceConfiguration/LogServiceConfiguration.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceExternalDefinitions/LogServiceExternalDefinitions.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceRealisation/LogServiceRealisation.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceRealisation/LoggingProcessor.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/MonitoringAndControlServices/MonitoringAndControlServices.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/MonitoringAndControlServices/ReportingService/ReportingService.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/MonitoringAndControlServices/ReportingService/ReportingServiceExternalDefinitions/ReportingServiceExternalDefinitions.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/CucTime.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/LoggingCounter.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/StringBuilder.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/Utilities.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/OhbSoftwareTypes/OhbSoftwareTypes.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/RxfConstants.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/RxfProjectConfiguration/RxfConfiguration.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/RxfProjectConfiguration/RxfProjectConfiguration.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/FlightConfig/RxfProjectConfiguration/WSTRTOS_Config.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/Generated/OPAR/DeviceEnumerator.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/Generated/OPAR/Memory/AddressSpaceEnum.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/Generated/OPAR/Memory/MemoryAreaEnum.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/Generated/OPAR/ParameterEnumerator.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : P:/Source/Generated/OPAR/ReportIdentifiers.h
atest_dummyFunctions/DeviceAccessService/dummyFunctions.o : atest_dummyFunctions/ipg.cop
atest_dummyFunctions/atest_dummyFunctions.o : ../../ipg.cop
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/IRiCReactive.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTCompiler.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTCompilerTypes.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTModelling.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTRTOS.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTStartBehaviorEvent.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WSTTarget.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_ERR.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_EVT.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_FSM.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_MEM.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_MSQ.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_MTX.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_OSW.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_RXF.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_TMM.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/RXF/Rpy_C_RTEMS_gcc_LEON2_Cert_TD/Source/WST_TSK.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/ApplicationSupportServices.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/DeviceAccessService.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/FDeviceAccessService.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/dummyFunctions.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/ExecutionPlatformLayer.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/FLogService.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogService.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceConfiguration/LogServiceConfig.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceConfiguration/LogServiceConfig_H2Sat.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceConfiguration/LogServiceConfiguration.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceExternalDefinitions/LogServiceExternalDefinitions.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceRealisation/LogServiceRealisation.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/LogService/LogServiceRealisation/LoggingProcessor.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/MonitoringAndControlServices/MonitoringAndControlServices.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/MonitoringAndControlServices/ReportingService/ReportingService.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/MonitoringAndControlServices/ReportingService/ReportingServiceExternalDefinitions/ReportingServiceExternalDefinitions.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/CucTime.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/LoggingCounter.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/StringBuilder.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/ExecutionPlatformLayer/Utilities/Utilities.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/OhbSoftwareTypes/OhbSoftwareTypes.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/RxfConstants.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/RxfProjectConfiguration/RxfConfiguration.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/RxfProjectConfiguration/RxfProjectConfiguration.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/FlightConfig/RxfProjectConfiguration/WSTRTOS_Config.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/Generated/OPAR/DeviceEnumerator.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/Generated/OPAR/Memory/AddressSpaceEnum.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/Generated/OPAR/Memory/MemoryAreaEnum.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/Generated/OPAR/ParameterEnumerator.h
atest_dummyFunctions/atest_dummyFunctions.o : P:/Source/Generated/OPAR/ReportIdentifiers.h
atest_dummyFunctions/atest_dummyFunctions.o : atest_dummyFunctions/ipg.cop


