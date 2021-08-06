/*****************************************************************************/
/*                            Cantata Test Script                            */
/*****************************************************************************/
/*
 *    Filename: atest_dummyFunctions.c
 *    Author: user
 *    Generated on: 14-May-2021 11:07:18
 *    Generated from: dummyFunctions.c
 */
/*****************************************************************************/
/* Environment Definition                                                    */
/*****************************************************************************/

#define TEST_SCRIPT_GENERATOR 2

/* Include files from software under test */
#include "ExecutionPlatformLayer/ApplicationSupportServices/DeviceAccessService/dummyFunctions.h"
#include "ExecutionPlatformLayer/LogService/FLogService.h"
#include "ExecutionPlatformLayer/LogService/LogService.h"

#define CANTATA_DEFAULT_VALUE 0 /* Default value of variables & stub returns */

#include <cantpp.h>  /* Cantata Directives */
/* pragma qas cantata testscript start */
/*****************************************************************************/
/* Global Data Definitions                                                   */
/*****************************************************************************/

/* Global Functions */
extern Ohb_Error_t acquireDummy(Ohb_Uuid_t transactionId, Ohb_DeviceId_t deviceId, Ohb_ValueId_t valueId, Ohb_DeviceCommunicationQoS_t qos, WST_FSM * responseDestination, uint8_t * aquiredData, size_t dataLength);
extern Ohb_Error_t commandDummy(Ohb_Uuid_t transactionId, Ohb_DeviceId_t deviceId, Ohb_ValueId_t valueId, Ohb_DeviceCommunicationQoS_t qos, WST_FSM * responseDestination, const uint8_t * cmdData, size_t dataLength);
extern Ohb_Error_t getDataDummy(Ohb_DeviceId_t deviceId, Ohb_ValueId_t valueId, void * dataPtr, size_t expectedDataLength);
extern size_t getDataSizeDummy(Ohb_DeviceId_t deviceId, Ohb_ValueId_t valueId);
extern Ohb_Error_t setDataDummy(Ohb_DeviceId_t deviceId, Ohb_ValueId_t valueId, const void * dataPtr, size_t expectedDataLength);

/* Global data */
/* None */

/* Expected variables for global data */
/* None */

/* This function initialises global data to default values. This function       */
/* is called by every test case so must not contain test case specific settings */
static void initialise_global_data(){
    /* No global data */
}

/* This function copies the global data settings into expected variables for */
/* use in check_global_data(). It is called by every test case so must not   */
/* contain test case specific settings.                                      */
static void initialise_expected_global_data(){
    /* No global data */
}

/* This function checks global data against the expected values. */
static void check_global_data(){
    /* No global data */
}

/* Prototypes for test functions */
void run_tests();
void test_1(int);
void test_2(int);
void test_3(int);
void test_4(int);
void test_5(int);

/*****************************************************************************/
/* Coverage Analysis                                                         */
/*****************************************************************************/
/* Coverage Rule Set: DO-178B/C Level B */
static void rule_set(char* cppca_sut,
                     char* cppca_context)
{
    START_TEST("COVERAGE RULE SET",
               "DO-178B/C Level B");
#ifdef CANTPP_SUBSET_DEFERRED_ANALYSIS
    TEST_SCRIPT_WARNING("Coverage Rule Set ignored in deferred analysis mode\n");
#elif CANTPP_COVERAGE_INSTRUMENTATION_DISABLED
    TEST_SCRIPT_WARNING("Coverage Instrumentation has been disabled\n");
#elif CANTPP_INSTRUMENTATION_DISABLED
    TEST_SCRIPT_WARNING("Instrumentation has been disabled\n");
#else
    ANALYSIS_CHECK("100% Entry Point Coverage",
                   cppca_entrypoint_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Statement Coverage",
                   cppca_statement_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Decision coverage",
                   cppca_decision_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Call Return Coverage",
                   cppca_callreturn_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Boolean Operator Coverage",
                   cppca_booloper_cov,
                   100.0);
    
    REPORT_COVERAGE(cppca_entrypoint_cov|
                    cppca_statement_cov|
                    cppca_decision_cov|
                    cppca_callreturn_cov|
                    cppca_booloper_cov,
                    cppca_sut,
                    cppca_all_details|cppca_include_catch,
                    cppca_context);
#endif
    END_TEST();
}

/*****************************************************************************/
/* Program Entry Point                                                       */
/*****************************************************************************/
char cantata_memory_pool[5120];
int main()
{
    CONFIGURE_COVERAGE("cov:boolcomb:no");
    INIT_MEMORY_POOL(cantata_memory_pool, 5120);
    OPEN_LOG("atest_dummyFunctions.ctr", false, 100);
    START_SCRIPT("dummyFunctions", true);

    run_tests();

    return !END_SCRIPT(true);
}

/*****************************************************************************/
/* Test Control                                                              */
/*****************************************************************************/
/* run_tests() contains calls to the individual test cases, you can turn test*/
/* cases off by adding comments*/
void run_tests()
{
    test_1(1);
    test_2(1);
    test_3(1);
    test_4(1);
    test_5(1);

    rule_set("*", "*");
    EXPORT_COVERAGE("atest_dummyFunctions.cov", cppca_export_replace);
}

/*****************************************************************************/
/* Test Cases                                                                */
/*****************************************************************************/

void test_1(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    Ohb_Uuid_t transactionId = 0UL;
    Ohb_DeviceId_t deviceId = DeviceId_MIL_PF;
    Ohb_ValueId_t valueId = 0UL;
    Ohb_DeviceCommunicationQoS_t qos = DeviceComQos_BestEffort;
    WST_FSM * responseDestination = NULL;
    uint8_t * aquiredData = NULL;
    size_t dataLength = 0U;
    Ohb_Error_t returnValue;

    START_TEST("1: acquireDummy",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("");

            /* Call SUT */
            returnValue = acquireDummy(transactionId, deviceId, valueId, qos, responseDestination, aquiredData, dataLength);

            /* Test case checks */
            CHECK_S_INT(returnValue, Error_Argument);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_2(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    Ohb_Uuid_t transactionId = 0UL;
    Ohb_DeviceId_t deviceId = DeviceId_MIL_PF;
    Ohb_ValueId_t valueId = 0UL;
    Ohb_DeviceCommunicationQoS_t qos = DeviceComQos_BestEffort;
    WST_FSM * responseDestination = NULL;
    const uint8_t * cmdData = NULL;
    size_t dataLength = 0U;
    Ohb_Error_t returnValue;

    START_TEST("2: commandDummy",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("");

            /* Call SUT */
            returnValue = commandDummy(transactionId, deviceId, valueId, qos, responseDestination, cmdData, dataLength);

            /* Test case checks */
            CHECK_S_INT(returnValue, Error_Argument);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_3(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    Ohb_DeviceId_t deviceId = DeviceId_MIL_PF;
    Ohb_ValueId_t valueId = 0UL;
    void * dataPtr = NULL;
    size_t expectedDataLength = 0U;
    Ohb_Error_t returnValue;

    START_TEST("3: getDataDummy",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("");

            /* Call SUT */
            returnValue = getDataDummy(deviceId, valueId, dataPtr, expectedDataLength);

            /* Test case checks */
            CHECK_S_INT(returnValue, Error_Argument);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_4(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    Ohb_DeviceId_t deviceId = DeviceId_MIL_PF;
    Ohb_ValueId_t valueId = 0UL;
    size_t returnValue;

    START_TEST("4: getDataSizeDummy",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("");

            /* Call SUT */
            returnValue = getDataSizeDummy(deviceId, valueId);

            /* Test case checks */
            CHECK_U_INT(returnValue, 0U);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_5(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    Ohb_DeviceId_t deviceId = DeviceId_MIL_PF;
    Ohb_ValueId_t valueId = 0UL;
    const void * dataPtr = NULL;
    size_t expectedDataLength = 0U;
    Ohb_Error_t returnValue;

    START_TEST("5: setDataDummy",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("");

            /* Call SUT */
            returnValue = setDataDummy(deviceId, valueId, dataPtr, expectedDataLength);

            /* Test case checks */
            CHECK_S_INT(returnValue, Error_Argument);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

/*****************************************************************************/
/* Call Interface Control                                                    */
/*****************************************************************************/

/* pragma qas cantata testscript end */
/*****************************************************************************/
/* End of test script                                                        */
/*****************************************************************************/
