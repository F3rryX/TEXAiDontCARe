.class public final Lcom/texa/carelib/communication/Commands;
.super Ljava/lang/Object;
.source "Commands.java"


# static fields
.field public static final AccelerometerSampleTransmission:I = 0x81

.field public static final AuthenticationRequest:I = 0xa3

.field public static final BeginFileDataCrash:I = 0x37

.field public static final BeginFileDataTrip:I = 0x34

.field public static final BeginFileDownload:I = 0x30

.field public static final BeginFileTripDataLog:I = 0xff

.field public static final BeginFileUpdate:I = 0x46

.field public static final BeginSession:I = 0x45

.field public static final CheckOBD:I = 0x71

.field public static final CheckSessionKey:I = 0x48

.field public static final CreateAuthenticationKey:I = 0xa2

.field public static final DPMC_GetCreationDate:I = 0xdc

.field public static final DPMC_GetSupportedDiagnosticProcedures:I = 0xd7

.field public static final DPMC_SetUnlockCode:I = 0xd9

.field public static final DPMC_SetUserCode:I = 0xd8

.field public static final DPMT_GetMasterRequest:I = 0xd5

.field public static final DPMT_NotifySlaveEvent:I = 0xdb

.field public static final DPMT_SendSlaveRequest:I = 0xd6

.field public static final DPMT_SetNotification:I = 0xda

.field public static final DPM_Call:I = 0xd3

.field public static final DPM_EraseECUProgrammingReportFile:I = 0xf4

.field public static final DPM_Exit:I = 0xd4

.field public static final DPM_GetStatus:I = 0xd0

.field public static final DPM_Start:I = 0xd1

.field public static final DPM_Stop:I = 0xd2

.field public static final EndFileDownload:I = 0x33

.field public static final EndFileUpdate:I = 0x4b

.field public static final EraseConfigurationFileArea:I = 0x4a

.field public static final EraseCrashDataArea:I = 0x38

.field public static final EraseTripDataArea:I = 0x35

.field public static final GetAvailableParameters:I = 0x2e

.field public static final GetBTMacAddress:I = 0xe9

.field public static final GetConfigurationID:I = 0x4d

.field public static final GetConfigurationPercent:I = 0x49

.field public static final GetCrashConfigurationParameters:I = 0x5b

.field public static final GetDataBaseVersion:I = 0x43

.field public static final GetDataManagerParameters:I = 0x53

.field public static final GetDiagnosisMode:I = 0x11

.field public static final GetEraseTripCrashStatus:I = 0x64

.field public static final GetErrorTripData:I = 0x62

.field public static final GetExtractionInsertionTime:I = 0x70

.field public static final GetFileCrashData:I = 0x39

.field public static final GetFileData:I = 0x31

.field public static final GetFileTripData:I = 0x36

.field public static final GetFirmwareStatus:I = 0x41

.field public static final GetFirmwareVersion:I = 0xec

.field public static final GetHardwareVersion:I = 0xea

.field public static final GetInterpreterVersion:I = 0x4f

.field public static final GetLog:I = 0x76

.field public static final GetLowPowerRecentHistogram:I = 0x74

.field public static final GetLowPowerTotalHistogram:I = 0x75

.field public static final GetNumSubscribedObjects:I = 0x24

.field public static final GetObjectsValue:I = 0x2f

.field public static final GetObjectsValueExt:I = 0x2b

.field public static final GetOperatingCrankReport:I = 0x73

.field public static final GetPDUResponses:I = 0x23

.field public static final GetRotationMatrix:I = 0x92

.field public static final GetRotationMatrixStatus:I = 0x91

.field public static final GetRpmSpeedIsValid:I = 0xb0

.field public static final GetSOSStatus:I = 0xf0

.field public static final GetSerialNumber:I = 0xee

.field public static final GetSessionID:I = 0x4e

.field public static final GetSettings:I = 0xed

.field public static final GetStandByCrankReport:I = 0x72

.field public static final GetStartTripData:I = 0x60

.field public static final GetStatisticDiffTripData:I = 0x65

.field public static final GetStatisticsTripData:I = 0x63

.field public static final GetStatus:I = 0xe6

.field public static final GetStopTripData:I = 0x61

.field public static final GetSupportedCommands:I = 0xef

.field public static final GetSupportedECU:I = 0x55

.field public static final GetSupportedParameters:I = 0x2c

.field public static final GetTripStatus:I = 0xe7

.field public static final GetUserDatabase:I = 0xf2

.field public static final GetVIN:I = 0x2d

.field public static final GetWorkingParameters:I = 0x51

.field public static final KeepAlive:I = 0x70

.field public static final LoadDTCbyECUIndex:I = 0x56

.field public static final NO_NAME:Ljava/lang/String; = "NO_NAME"

.field public static final ReadDTC:I = 0x57

.field public static final ResetToFactoryDefault:I = 0xc0

.field public static final SendFileData:I = 0x47

.field public static final SetAccelerometerSampleConfig:I = 0x82

.field public static final SetConfigurationID:I = 0x4c

.field public static final SetCrashConfigurationParameter:I = 0x5a

.field public static final SetDataManagerParameter:I = 0x52

.field public static final SetDiagnosisMode:I = 0x10

.field public static final SetFWMode:I = 0x42

.field public static final SetFileType:I = 0x3a

.field public static final SetOffset:I = 0x32

.field public static final SetPDURequests:I = 0x22

.field public static final SetUserDatabase:I = 0xf1

.field public static final SetWorkingParameters:I = 0x50

.field public static final StartMatrixCalibration:I = 0x90

.field public static final StartRecording:I = 0x80

.field public static final SubscribedObjects:I = 0x20

.field public static final SubscribedObjectsExt:I = 0x25

.field public static final UnsubscribedObjects:I = 0x21

.field public static final UnsubscribedObjectsExt:I = 0x21

.field private static final _CommandNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/communication/Commands;->_CommandNames:Landroid/util/SparseArray;

    const/16 v1, 0xa3

    const-string v2, "AuthenticationRequest"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x30

    const-string v2, "BeginFileDownload"

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x46

    const-string v2, "BeginFileUpdate"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x45

    const-string v2, "BeginSession"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x48

    const-string v2, "CheckSessionKey"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa2

    const-string v2, "CreateAuthenticationKey"

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x33

    const-string v2, "EndFileDownload"

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4b

    const-string v2, "EndFileUpdate"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4a

    const-string v2, "EraseConfigurationFileArea"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4f

    const-string v2, "GetInterpreterVersion"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x31

    const-string v2, "GetFileData"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x41

    const-string v2, "GetFirmwareStatus"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xea

    const-string v2, "GetHardwareVersion"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xee

    const-string v2, "GetSerialNumber"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4e

    const-string v2, "GetSessionID"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe6

    const-string v2, "GetStatus"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    const-string v2, "GetVIN"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "GetDiagnosisMode"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x47

    const-string v2, "SendFileData"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x32

    const-string v2, "SetOffset"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v2, "SetDiagnosisMode"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x51

    const-string v2, "GetWorkingParameters"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x50

    const-string v2, "SetWorkingParameters"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    const-string v2, "GetAvailableParameters"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    const-string v2, "GetSupportedParameters"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2f

    const-string v2, "GetObjectsValue"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v2, "SubscribedObjects"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x21

    const-string v2, "UnsubscribedObjects"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x2b

    const-string v3, "GetObjectsValueExt"

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x25

    const-string v3, "SubscribedObjectsExt"

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "UnsubscribedObjectsExt"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x55

    const-string v2, "GetSupportedECU"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x42

    const-string v2, "SetFWMode"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc0

    const-string v2, "ResetToFactoryDefault"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf0

    const-string v2, "GetSOSStatus"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x34

    const-string v2, "BeginFileDataTrip"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x35

    const-string v2, "EraseTripDataArea"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x36

    const-string v2, "GetFileTripData"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe7

    const-string v2, "GetTripStatus"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x53

    const-string v2, "GetDataManagerParameters"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x52

    const-string v2, "SetDataManagerParameter"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4c

    const-string v2, "SetConfigurationID"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4d

    const-string v2, "GetConfigurationID"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x60

    const-string v2, "GetStartTripData"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x61

    const-string v2, "GetStopTripData"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x62

    const-string v2, "GetErrorTripData"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x63

    const-string v2, "GetStatisticsTripData"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x37

    const-string v2, "BeginFileDataCrash"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x39

    const-string v2, "GetFileCrashData"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x38

    const-string v2, "EraseCrashDataArea"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5b

    const-string v2, "GetCrashConfigurationParameters"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5a

    const-string v2, "SetCrashConfigurationParameter"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x70

    const-string v2, "GetExtractionInsertionTime"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x90

    const-string v3, "StartMatrixCalibration"

    .line 72
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x91

    const-string v3, "GetRotationMatrixStatus"

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x92

    const-string v3, "GetRotationMatrix"

    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x80

    const-string v3, "StartRecording"

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x71

    const-string v3, "CheckOBD"

    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x43

    const-string v3, "GetDataBaseVersion"

    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xed

    const-string v3, "GetSettings"

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x49

    const-string v3, "GetConfigurationPercent"

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x64

    const-string v3, "GetEraseTripCrashStatus"

    .line 80
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x72

    const-string v3, "GetStandByCrankReport"

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x73

    const-string v3, "GetOperatingCrankReport"

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x74

    const-string v3, "GetLowPowerRecentHistogram"

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x75

    const-string v3, "GetLowPowerTotalHistogram"

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x81

    const-string v3, "AccelerometerSampleTransmission"

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x82

    const-string v3, "SetAccelerometerSampleConfig"

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x76

    const-string v3, "GetLog"

    .line 87
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xef

    const-string v3, "GetSupportedCommands"

    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x65

    const-string v3, "GetStatisticDiffTripData"

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x22

    const-string v3, "SetPDURequests"

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x23

    const-string v3, "GetPDUResponses"

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xe9

    const-string v3, "GetBTMacAddress"

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x3a

    const-string v3, "SetFileType"

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd3

    const-string v3, "DPM_Call"

    .line 94
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd4

    const-string v3, "DPM_Exit"

    .line 95
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd5

    const-string v3, "DPMT_GetMasterRequest"

    .line 96
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd0

    const-string v3, "DPM_GetStatus"

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd7

    const-string v3, "DPMC_GetSupportedDiagnosticProcedures"

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd6

    const-string v3, "DPMT_SendSlaveRequest"

    .line 99
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd9

    const-string v3, "DPMC_SetUnlockCode"

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd8

    const-string v3, "DPMC_SetUserCode"

    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd1

    const-string v3, "DPM_Start"

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd2

    const-string v3, "DPM_Stop"

    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xda

    const-string v3, "DPMT_SetNotification"

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xdb

    const-string v3, "DPMT_NotifySlaveEvent"

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xf1

    const-string v3, "SetUserDatabase"

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xf2

    const-string v3, "GetUserDatabase"

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xdc

    const-string v3, "DPMC_GetCreationDate"

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x24

    const-string v3, "GetNumSubscribedObjects"

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x56

    const-string v3, "LoadDTCbyECUIndex"

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x57

    const-string v3, "ReadDTC"

    .line 111
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "KeepAlive"

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xec

    const-string v2, "GetFirmwareVersion"

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb0

    const-string v2, "GetRpmSpeedIsValid"

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf4

    const-string v2, "DPM_EraseECUProgrammingReportFile"

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NO_NAME"

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    sget-object v1, Lcom/texa/carelib/communication/Commands;->_CommandNames:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
