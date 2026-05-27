package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StreamUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URLConnection;
import java.security.InvalidParameterException;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class TexaURLConnectionHelper {
    public static final String PREFIX_ADTOKEN = "KO_ADTOKEN";
    public static final String PREFIX_CRTOKEN = "KO_CRTOKEN";
    public static final String PREFIX_DEVICE = "KO_DEVICE";
    private static final String PREFIX_DIAGCONFIG_SELECTION_MISSING = "KO_DIAGCONFIG-SELECTION_MISSING ";
    public static final String PREFIX_DIAGNOSIS_CONFIGURATION_FAILED = "KO_DIAGCONFIG-FAILED";
    public static final String PREFIX_DTC = "KO_DTC";
    public static final String PREFIX_FILES = "KO_FILES";
    public static final String PREFIX_HWTOKEN = "KO_HWTOKEN";
    private static final String PREFIX_INFO_MISSING = "KO_APP-INFO_MISSING";
    public static final String PREFIX_INPUT = "KO_INPUT";
    public static final String PREFIX_OUTPUT = "KO_OUTPUT";
    public static final String PREFIX_SELECTION = "KO_SELECTION";
    public static final String PREFIX_SESSION = "KO_SESSION";
    private static final String PREFIX_VERSION_BLACKLISTED = "KO_APP-VERSION_BLACKLISTED";
    public static final String TAG = "TexaURLConnectionHelper";

    public static boolean isSuccessResponseCode(int i) {
        return i >= 200 && i <= 299;
    }

    public static String getHeaderField(URLConnection uRLConnection, String str) {
        return getHeaderField(uRLConnection, str, null);
    }

    public static String getHeaderField(URLConnection uRLConnection, String str, String str2) {
        return !uRLConnection.getHeaderFields().containsKey(str) ? str2 : uRLConnection.getHeaderField(str);
    }

    public static Integer getResponseCode(URLConnection uRLConnection) throws IOException {
        int responseCode;
        int responseCode2;
        if (uRLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
            try {
                responseCode2 = httpsURLConnection.getResponseCode();
            } catch (IOException e) {
                CareLog.e(TAG, e, "Generic IO error", new Object[0]);
                responseCode2 = httpsURLConnection.getResponseCode();
            }
            return Integer.valueOf(responseCode2);
        }
        if (uRLConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            try {
                responseCode = httpURLConnection.getResponseCode();
            } catch (IOException e2) {
                CareLog.e(TAG, e2, "Generic IO error", new Object[0]);
                responseCode = httpURLConnection.getResponseCode();
            }
            return Integer.valueOf(responseCode);
        }
        throw new InvalidParameterException(uRLConnection.getClass().getName() + " is not yet supported.");
    }

    public static String getResponseMessage(URLConnection uRLConnection, int i) throws IOException {
        String responseMessage;
        String strValueOf;
        if (uRLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
            try {
                if (i == 400) {
                    strValueOf = uRLConnection.getHeaderField(HttpTexaService.FIELD_API_ERROR);
                } else {
                    strValueOf = httpsURLConnection.getResponseMessage();
                }
            } catch (Exception e) {
                strValueOf = String.valueOf(e);
            }
            return strValueOf == null ? "" : strValueOf;
        }
        if (uRLConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            if (i == 400) {
                CareLog.v(TAG, "Printing Response Header...", new Object[0]);
                for (Map.Entry<String, List<String>> entry : uRLConnection.getHeaderFields().entrySet()) {
                    CareLog.v(TAG, "%s=%s", entry.getKey(), entry.getValue());
                }
                try {
                    if (uRLConnection.getHeaderFields().containsKey(HttpTexaService.FIELD_API_ERROR)) {
                        responseMessage = uRLConnection.getHeaderField(HttpTexaService.FIELD_API_ERROR);
                    } else {
                        responseMessage = httpURLConnection.getResponseMessage();
                    }
                } catch (Exception e2) {
                    responseMessage = String.valueOf(e2);
                }
            } else {
                responseMessage = httpURLConnection.getResponseMessage();
            }
            return responseMessage == null ? "" : responseMessage;
        }
        throw new InvalidParameterException(uRLConnection.getClass().getName() + " is not yet supported.");
    }

    public static String getErrorBody(URLConnection uRLConnection) throws IOException {
        if (uRLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
            if (httpsURLConnection.getErrorStream() != null) {
                return StreamUtils.getASCIIContentFromStream(httpsURLConnection.getErrorStream());
            }
        }
        if (!(uRLConnection instanceof HttpURLConnection)) {
            return null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
        if (httpURLConnection.getErrorStream() != null) {
            return StreamUtils.getASCIIContentFromStream(httpURLConnection.getErrorStream());
        }
        return null;
    }

    public static void setRequestMethod(URLConnection uRLConnection, String str) throws ProtocolException {
        if (uRLConnection instanceof HttpsURLConnection) {
            ((HttpsURLConnection) uRLConnection).setRequestMethod(str);
        } else {
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).setRequestMethod(str);
                return;
            }
            throw new InvalidParameterException(uRLConnection.getClass().getName() + " is not yet supported.");
        }
    }

    public static CareError.Builder getError(URLConnection uRLConnection, HttpApiError httpApiError) {
        CareError.Builder builder = new CareError.Builder(2, 11);
        String message = httpApiError != null ? httpApiError.getMessage() : "";
        int aPIErrorCode = getAPIErrorCode(message);
        String json = httpApiError != null ? new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().toJson(httpApiError.getDetails()) : "";
        builder.putExtra(CareError.EXTRA_API_URL, uRLConnection.getURL().toString());
        builder.putExtra(CareError.EXTRA_API_ERROR, message);
        builder.putExtra(CareError.EXTRA_API_ERROR_CODE, aPIErrorCode);
        builder.putExtra(CareError.EXTRA_API_ERROR_DETAIL, json);
        return builder;
    }

    private static int getAPIErrorCode(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return 0;
        }
        if (StringUtils.startsWith(PREFIX_ADTOKEN, str)) {
            return 6;
        }
        if (StringUtils.startsWith(PREFIX_CRTOKEN, str)) {
            return 8;
        }
        if (StringUtils.startsWith(PREFIX_DEVICE, str)) {
            return 3;
        }
        if (StringUtils.startsWith(PREFIX_DTC, str)) {
            return 7;
        }
        if (StringUtils.startsWith(PREFIX_FILES, str)) {
            return 9;
        }
        if (StringUtils.startsWith(PREFIX_HWTOKEN, str)) {
            return 4;
        }
        if (StringUtils.startsWith(PREFIX_INPUT, str)) {
            return 1;
        }
        if (StringUtils.startsWith(PREFIX_OUTPUT, str)) {
            return 2;
        }
        if (StringUtils.startsWith(PREFIX_SELECTION, str)) {
            return 5;
        }
        if (StringUtils.startsWith(PREFIX_SESSION, str)) {
            return 10;
        }
        if (StringUtils.startsWith(PREFIX_DIAGNOSIS_CONFIGURATION_FAILED, str)) {
            return 27;
        }
        if (StringUtils.startsWith(PREFIX_VERSION_BLACKLISTED, str)) {
            return 28;
        }
        if (StringUtils.startsWith(PREFIX_INFO_MISSING, str)) {
            return 29;
        }
        return StringUtils.startsWith(PREFIX_DIAGCONFIG_SELECTION_MISSING, str) ? 36 : -1;
    }

    public static boolean hasResponseBody(int i) {
        return isSuccessResponseCode(i) && i != 204;
    }
}
