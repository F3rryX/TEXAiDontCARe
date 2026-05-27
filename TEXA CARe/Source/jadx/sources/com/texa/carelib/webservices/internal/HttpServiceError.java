package com.texa.carelib.webservices.internal;

import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public enum HttpServiceError {
    Error_Input_WrongValues("KO_INPUT-VALUES_NOT_VALID"),
    Error_Input_JSON("KO_INPUT-JSON_NOT_VALID"),
    Error_Input_Null("KO_INPUT-NULL_VALUE"),
    Error_Input_WrongMode("KO_INPUT-REQUESTED_MODE_UNAVAILABLE"),
    Error_Input_Length("KO_INPUT-LENGTH_NOT_VALID"),
    Error_Input_Base64(Constants.ERROR_KO_INPUT_BASE64_NOT_VALID),
    Error_Input_ContentName("KO_INPUT-CONTENTNAME_NOT_VALID"),
    Error_Input_Model(Constants.ERROR_KO_INPUT_MODEL_ERROR),
    Error_Input_VIN("KO_INPUT-VIN_NOT_VALID"),
    Error_Input_SessionID("KO_INPUT-SESSIONID_NOT_VALID"),
    Error_Output_EnumNotDefined("KO_OUTPUT-ENUM_NOT_DEFINED"),
    Error_Output_EnumNotManaged("KO_OUTPUT-ENUM_NOT_MANAGED"),
    Error_Output_FWVersion("KO_OUTPUT-FWVERSION_NOT_VALID"),
    Error_Device_Status("KO_DEVICE-STATUS"),
    Error_Device_HWID_Invalid("KO_DEVICE-HWID_NOT_VALID"),
    Error_Device_FW_MA("KO_DEVICE-FW_VERSION_MA_MISSING"),
    Error_Device_FW_SA("KO_DEVICE-FW_VERSION_SA_MISSING"),
    Error_Device_FW_MA_NA("KO_DEVICE-FW_VERSION_MA_NOT_AVAILABLE"),
    Error_Device_FW_SA_NA("KO_DEVICE-FW_VERSION_SA_NOT_AVAILABLE"),
    Error_HWToken_Empty("KO_HWTOKEN-EMPTY_CONTENT"),
    Error_HWToken_Length("KO_HWTOKEN-INVALID_DATA_E8001"),
    Error_HWToken_Password("KO_HWTOKEN-INVALID_DATA_E8002"),
    Error_HWToken_Content_Revision("KO_HWTOKEN-INVALID_DATA_E8003"),
    Error_HWToken_Content_Padding("KO_HWTOKEN-INVALID_DATA_E8004"),
    Error_HWToken_Empty_HWID("KO_HWTOKEN-INVALID_DATA_E8005"),
    Error_HWToken_SessionKey("KO_HWTOKEN-INVALID_DATA_E8006"),
    Error_HWToken_SessionKey_IV("KO_HWTOKEN-INVALID_DATA_E8007"),
    Error_Session_NotFound("KO_SESSION-NOT_FOUND"),
    Error_Session_Expired("KO_SESSION-EXPIRED"),
    Error_Selection_NotFound("KO_SELECTION-FRAGMENT_UNAVAILABLE"),
    Error_HWToken_Decode("KO_HWTOKEN-PARSE_ERROR"),
    Error_HWToken_Content("KO_HWTOKEN-INVALID_DATA"),
    Error_AutoDetect_Decode("KO_ADTOKEN-PARSE_ERROR"),
    Error_AutoDetect_Content("KO_ADTOKEN-INVALID_DATA"),
    Error_DTC_Decode("KO_DTC-PARSE_ERROR"),
    Error_DTC_Content("KO_DTC-INVALID_DATA"),
    Error_DTC_Content_Revision("KO_DTC-INVALID_DATA_E9002"),
    Error_DTC_Content_VerChar("KO_DTC-INVALID_DATA_E9003"),
    Error_DTC_Content_Decrypt("KO_DTC-INVALID_DATA_E9004"),
    Error_DTC_Content_Parse("KO_DTC-INVALID_DATA_E9005"),
    Error_ConfigResults_Decode("KO_CRTOKEN-PARSE_ERROR"),
    Error_Files_Generic("KO_FILES-PROCESS_ERROR"),
    Error_Files_RequestedBrand("KO_FILES-BRAND_ERROR"),
    Error_Files_RequestedConfig("KO_FILES-CONFIG_ERROR"),
    Error_Files_MissingConfigs("KO_FILES-CONFIG_MISSING"),
    Error_Files_PartialConfigs("KO_FILES-CONFIG_PARTIAL"),
    Error_Vehicle_Selection_Not_Found("KO_DIAGCONFIG-SELECTION_MISSING");

    private final String mErrorKey;

    HttpServiceError(String str) {
        this.mErrorKey = str;
    }

    public String getErrorKey() {
        return this.mErrorKey;
    }

    public static HttpServiceError fromString(String str) {
        for (HttpServiceError httpServiceError : values()) {
            if (str.equals(httpServiceError.getErrorKey())) {
                return httpServiceError;
            }
        }
        return null;
    }
}
