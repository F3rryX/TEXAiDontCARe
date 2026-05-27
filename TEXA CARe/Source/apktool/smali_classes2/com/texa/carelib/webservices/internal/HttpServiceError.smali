.class public final enum Lcom/texa/carelib/webservices/internal/HttpServiceError;
.super Ljava/lang/Enum;
.source "HttpServiceError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/webservices/internal/HttpServiceError;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_AutoDetect_Content:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_AutoDetect_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_ConfigResults_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_DTC_Content:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_DTC_Content_Decrypt:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_DTC_Content_Parse:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_DTC_Content_Revision:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_DTC_Content_VerChar:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_DTC_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Device_FW_MA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Device_FW_MA_NA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Device_FW_SA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Device_FW_SA_NA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Device_HWID_Invalid:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Device_Status:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Files_Generic:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Files_MissingConfigs:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Files_PartialConfigs:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Files_RequestedBrand:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Files_RequestedConfig:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Content:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Content_Padding:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Content_Revision:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Empty:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Empty_HWID:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Length:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_Password:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_SessionKey:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_HWToken_SessionKey_IV:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_Base64:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_ContentName:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_JSON:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_Length:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_Model:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_Null:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_SessionID:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_VIN:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_WrongMode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Input_WrongValues:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Output_EnumNotDefined:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Output_EnumNotManaged:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Output_FWVersion:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Selection_NotFound:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Session_Expired:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Session_NotFound:Lcom/texa/carelib/webservices/internal/HttpServiceError;

.field public static final enum Error_Vehicle_Selection_Not_Found:Lcom/texa/carelib/webservices/internal/HttpServiceError;


# instance fields
.field private final mErrorKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 20
    new-instance v0, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v1, "Error_Input_WrongValues"

    const/4 v2, 0x0

    const-string v3, "KO_INPUT-VALUES_NOT_VALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_WrongValues:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 25
    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v3, "Error_Input_JSON"

    const/4 v4, 0x1

    const-string v5, "KO_INPUT-JSON_NOT_VALID"

    invoke-direct {v1, v3, v4, v5}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_JSON:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 30
    new-instance v3, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v5, "Error_Input_Null"

    const/4 v6, 0x2

    const-string v7, "KO_INPUT-NULL_VALUE"

    invoke-direct {v3, v5, v6, v7}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_Null:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 35
    new-instance v5, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v7, "Error_Input_WrongMode"

    const/4 v8, 0x3

    const-string v9, "KO_INPUT-REQUESTED_MODE_UNAVAILABLE"

    invoke-direct {v5, v7, v8, v9}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_WrongMode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 40
    new-instance v7, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v9, "Error_Input_Length"

    const/4 v10, 0x4

    const-string v11, "KO_INPUT-LENGTH_NOT_VALID"

    invoke-direct {v7, v9, v10, v11}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_Length:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 45
    new-instance v9, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v11, "Error_Input_Base64"

    const/4 v12, 0x5

    const-string v13, "KO_INPUT-BASE64_NOT_VALID"

    invoke-direct {v9, v11, v12, v13}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_Base64:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 50
    new-instance v11, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v13, "Error_Input_ContentName"

    const/4 v14, 0x6

    const-string v15, "KO_INPUT-CONTENTNAME_NOT_VALID"

    invoke-direct {v11, v13, v14, v15}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_ContentName:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 55
    new-instance v13, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Input_Model"

    const/4 v14, 0x7

    const-string v12, "KO_INPUT-MODEL_ERROR"

    invoke-direct {v13, v15, v14, v12}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_Model:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 61
    new-instance v12, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Input_VIN"

    const/16 v14, 0x8

    const-string v10, "KO_INPUT-VIN_NOT_VALID"

    invoke-direct {v12, v15, v14, v10}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_VIN:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 66
    new-instance v10, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Input_SessionID"

    const/16 v14, 0x9

    const-string v8, "KO_INPUT-SESSIONID_NOT_VALID"

    invoke-direct {v10, v15, v14, v8}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Input_SessionID:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 71
    new-instance v8, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Output_EnumNotDefined"

    const/16 v14, 0xa

    const-string v6, "KO_OUTPUT-ENUM_NOT_DEFINED"

    invoke-direct {v8, v15, v14, v6}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Output_EnumNotDefined:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 76
    new-instance v6, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Output_EnumNotManaged"

    const/16 v14, 0xb

    const-string v4, "KO_OUTPUT-ENUM_NOT_MANAGED"

    invoke-direct {v6, v15, v14, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Output_EnumNotManaged:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 82
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Output_FWVersion"

    const/16 v14, 0xc

    const-string v2, "KO_OUTPUT-FWVERSION_NOT_VALID"

    invoke-direct {v4, v15, v14, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Output_FWVersion:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 87
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Device_Status"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "KO_DEVICE-STATUS"

    invoke-direct {v2, v15, v14, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Device_Status:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 93
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Device_HWID_Invalid"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "KO_DEVICE-HWID_NOT_VALID"

    invoke-direct {v4, v15, v14, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Device_HWID_Invalid:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 98
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Device_FW_MA"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "KO_DEVICE-FW_VERSION_MA_MISSING"

    invoke-direct {v2, v15, v14, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Device_FW_MA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 103
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Device_FW_SA"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "KO_DEVICE-FW_VERSION_SA_MISSING"

    invoke-direct {v4, v15, v14, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Device_FW_SA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 110
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Device_FW_MA_NA"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "KO_DEVICE-FW_VERSION_MA_NOT_AVAILABLE"

    invoke-direct {v2, v15, v14, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Device_FW_MA_NA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 116
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_Device_FW_SA_NA"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "KO_DEVICE-FW_VERSION_SA_NOT_AVAILABLE"

    invoke-direct {v4, v15, v14, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Device_FW_SA_NA:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 121
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_HWToken_Empty"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "KO_HWTOKEN-EMPTY_CONTENT"

    invoke-direct {v2, v15, v14, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Empty:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 126
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_HWToken_Length"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "KO_HWTOKEN-INVALID_DATA_E8001"

    invoke-direct {v4, v15, v14, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Length:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 131
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_HWToken_Password"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "KO_HWTOKEN-INVALID_DATA_E8002"

    invoke-direct {v2, v15, v14, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Password:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 136
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v15, "Error_HWToken_Content_Revision"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "KO_HWTOKEN-INVALID_DATA_E8003"

    invoke-direct {v4, v15, v14, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Content_Revision:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 140
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_HWToken_Content_Padding"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "KO_HWTOKEN-INVALID_DATA_E8004"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Content_Padding:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 145
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_HWToken_Empty_HWID"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "KO_HWTOKEN-INVALID_DATA_E8005"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Empty_HWID:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 152
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_HWToken_SessionKey"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "KO_HWTOKEN-INVALID_DATA_E8006"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_SessionKey:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 159
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_HWToken_SessionKey_IV"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "KO_HWTOKEN-INVALID_DATA_E8007"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_SessionKey_IV:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 164
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Session_NotFound"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "KO_SESSION-NOT_FOUND"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Session_NotFound:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 169
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Session_Expired"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string v2, "KO_SESSION-EXPIRED"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Session_Expired:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 174
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Selection_NotFound"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const-string v4, "KO_SELECTION-FRAGMENT_UNAVAILABLE"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Selection_NotFound:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 179
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_HWToken_Decode"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const-string v2, "KO_HWTOKEN-PARSE_ERROR"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 184
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_HWToken_Content"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const-string v4, "KO_HWTOKEN-INVALID_DATA"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_HWToken_Content:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 189
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_AutoDetect_Decode"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const-string v2, "KO_ADTOKEN-PARSE_ERROR"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_AutoDetect_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 194
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_AutoDetect_Content"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const-string v4, "KO_ADTOKEN-INVALID_DATA"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_AutoDetect_Content:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 202
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_DTC_Decode"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const-string v2, "KO_DTC-PARSE_ERROR"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_DTC_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 207
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_DTC_Content"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const-string v4, "KO_DTC-INVALID_DATA"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_DTC_Content:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 212
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_DTC_Content_Revision"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const-string v2, "KO_DTC-INVALID_DATA_E9002"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_DTC_Content_Revision:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 217
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_DTC_Content_VerChar"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const-string v4, "KO_DTC-INVALID_DATA_E9003"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_DTC_Content_VerChar:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 222
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_DTC_Content_Decrypt"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const-string v2, "KO_DTC-INVALID_DATA_E9004"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_DTC_Content_Decrypt:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 227
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_DTC_Content_Parse"

    const/16 v15, 0x27

    move-object/from16 v42, v4

    const-string v4, "KO_DTC-INVALID_DATA_E9005"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_DTC_Content_Parse:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 232
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_ConfigResults_Decode"

    const/16 v15, 0x28

    move-object/from16 v43, v2

    const-string v2, "KO_CRTOKEN-PARSE_ERROR"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_ConfigResults_Decode:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 237
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Files_Generic"

    const/16 v15, 0x29

    move-object/from16 v44, v4

    const-string v4, "KO_FILES-PROCESS_ERROR"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Files_Generic:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 242
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Files_RequestedBrand"

    const/16 v15, 0x2a

    move-object/from16 v45, v2

    const-string v2, "KO_FILES-BRAND_ERROR"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Files_RequestedBrand:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 247
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Files_RequestedConfig"

    const/16 v15, 0x2b

    move-object/from16 v46, v4

    const-string v4, "KO_FILES-CONFIG_ERROR"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Files_RequestedConfig:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 252
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Files_MissingConfigs"

    const/16 v15, 0x2c

    move-object/from16 v47, v2

    const-string v2, "KO_FILES-CONFIG_MISSING"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Files_MissingConfigs:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 257
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Files_PartialConfigs"

    const/16 v15, 0x2d

    move-object/from16 v48, v4

    const-string v4, "KO_FILES-CONFIG_PARTIAL"

    invoke-direct {v2, v14, v15, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Files_PartialConfigs:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    .line 262
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const-string v14, "Error_Vehicle_Selection_Not_Found"

    const/16 v15, 0x2e

    move-object/from16 v49, v2

    const-string v2, "KO_DIAGCONFIG-SELECTION_MISSING"

    invoke-direct {v4, v14, v15, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceError;->Error_Vehicle_Selection_Not_Found:Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const/16 v2, 0x2f

    new-array v2, v2, [Lcom/texa/carelib/webservices/internal/HttpServiceError;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v4, v2, v0

    .line 14
    sput-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceError;->$VALUES:[Lcom/texa/carelib/webservices/internal/HttpServiceError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceError;->mErrorKey:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceError;
    .locals 5

    .line 279
    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpServiceError;->values()[Lcom/texa/carelib/webservices/internal/HttpServiceError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 281
    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceError;->getErrorKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceError;
    .locals 1

    .line 14
    const-class v0, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceError;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/webservices/internal/HttpServiceError;
    .locals 1

    .line 14
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceError;->$VALUES:[Lcom/texa/carelib/webservices/internal/HttpServiceError;

    invoke-virtual {v0}, [Lcom/texa/carelib/webservices/internal/HttpServiceError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/webservices/internal/HttpServiceError;

    return-object v0
.end method


# virtual methods
.method public getErrorKey()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceError;->mErrorKey:Ljava/lang/String;

    return-object v0
.end method
