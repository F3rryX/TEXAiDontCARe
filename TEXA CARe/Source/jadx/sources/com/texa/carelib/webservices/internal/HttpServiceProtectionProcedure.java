package com.texa.carelib.webservices.internal;

import android.util.Base64;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibConfig;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Base64Helper;
import com.texa.carelib.core.utils.internal.StreamUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.URLBuilder;
import com.texa.carelib.webservices.AccessToken;
import com.texa.carelib.webservices.HostInfo;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.TexaServiceDelegate;
import com.texa.carelib.webservices.events.BeginProtectionSessionCompletedEvent;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.Thread;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceProtectionProcedure implements ServiceProtectionProcedure {
    private static final String KEY_HWTOKEN = "HWToken";
    private static final String PATH = "/api/sessions";
    public static final String TAG = "HttpServiceProtectionProcedure";
    private final HttpTexaService mService;

    public HttpTexaService getService() {
        return this.mService;
    }

    public HttpServiceProtectionProcedure(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static URLConnection getConnection(Proxy proxy, URL url, String str, String str2, String str3) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        if (proxy != null) {
            uRLConnectionOpenConnection = url.openConnection(proxy);
        } else {
            uRLConnectionOpenConnection = url.openConnection();
        }
        uRLConnectionOpenConnection.setConnectTimeout(CareLibConfig.getServiceConnectionTimeout());
        uRLConnectionOpenConnection.setReadTimeout(CareLibConfig.getServiceReadTimeout());
        if (!StringUtils.isNullOrEmpty(str2)) {
            uRLConnectionOpenConnection.setRequestProperty("Authorization", str3 + " " + str2);
        }
        if (!StringUtils.isNullOrEmpty(str)) {
            uRLConnectionOpenConnection.setRequestProperty(HttpTexaService.KEY_HWID, str);
        }
        uRLConnectionOpenConnection.setUseCaches(false);
        uRLConnectionOpenConnection.setDoInput(true);
        uRLConnectionOpenConnection.setDoOutput(true);
        return uRLConnectionOpenConnection;
    }

    @Override // com.texa.carelib.webservices.internal.ServiceProtectionProcedure
    public boolean beginProtectionSessionWithHWToken(final byte[] bArr, final String str, final Callback<BeginProtectionSessionCompletedEvent> callback) {
        if (this.mService.isAuthenticated()) {
            openProtectionSession(bArr, str, callback);
            return true;
        }
        String str2 = TAG;
        CareLog.e(str2, "Service is not authenticated!", new Object[0]);
        HttpServiceAuthenticationProcedure serviceAuthenticationProcedure = this.mService.getServiceAuthenticationProcedure();
        if (ServiceAuthenticationProcedureStatus.Pending == serviceAuthenticationProcedure.getStatus()) {
            CareLog.d(str2, "Service authentication is already pending... Waiting the end...", new Object[0]);
            try {
                serviceAuthenticationProcedure.join(CareLibConfig.getServiceAuthenticationTimeout());
                CareLog.d(str2, "Service authentication procedure is ended.", new Object[0]);
                openProtectionSession(bArr, str, callback);
                return true;
            } catch (InterruptedException e) {
                CareLog.e(TAG, e, "Could not wait Service authentication ends.", new Object[0]);
                return false;
            }
        }
        CareLog.d(str2, "Begin authentication procedure...", new Object[0]);
        return serviceAuthenticationProcedure.authenticate(this.mService.getServiceDelegate(), new Callback() { // from class: com.texa.carelib.webservices.internal.HttpServiceProtectionProcedure$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m779x14616007(bArr, str, callback, (ServiceAuthenticationProcedureCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$beginProtectionSessionWithHWToken$0$com-texa-carelib-webservices-internal-HttpServiceProtectionProcedure, reason: not valid java name */
    public /* synthetic */ void m779x14616007(byte[] bArr, String str, Callback callback, ServiceAuthenticationProcedureCompletedEvent serviceAuthenticationProcedureCompletedEvent) {
        if (serviceAuthenticationProcedureCompletedEvent.getError() == null) {
            CareLog.d(TAG, "Authentication procedure has completed successfully.", new Object[0]);
            openProtectionSession(bArr, str, callback);
        } else {
            callback.onCompleted(new BeginProtectionSessionCompletedEvent(this, null, null, getError(serviceAuthenticationProcedureCompletedEvent.getError())));
        }
    }

    private void openProtectionSession(byte[] bArr, String str, final Callback<BeginProtectionSessionCompletedEvent> callback) {
        this.mService.setSessionID(null);
        Thread thread = new Thread(new ProtectionProcedureRunnable(this.mService, bArr, str, callback), TAG + "_beginProtectionSessionWithHWToken");
        thread.setPriority(1);
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.texa.carelib.webservices.internal.HttpServiceProtectionProcedure$$ExternalSyntheticLambda1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                this.f$0.m780x1566e8a3(callback, thread2, th);
            }
        });
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$openProtectionSession$1$com-texa-carelib-webservices-internal-HttpServiceProtectionProcedure, reason: not valid java name */
    public /* synthetic */ void m780x1566e8a3(Callback callback, Thread thread, Throwable th) {
        callback.onCompleted(new BeginProtectionSessionCompletedEvent(this, null, null, new CareError.Builder(2, -1).setException(th).build()));
    }

    public static ProtectionProcedureResponse fromJson(String str) {
        ProtectionProcedureResponse protectionProcedureResponse = (ProtectionProcedureResponse) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, ProtectionProcedureResponse.class);
        if (protectionProcedureResponse.getVerificationKey() != null && !protectionProcedureResponse.getVerificationKey().isEmpty()) {
            protectionProcedureResponse.setVerificationKey(Base64Helper.decode(protectionProcedureResponse.getVerificationKey()));
        }
        return protectionProcedureResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 22).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_protection_fails)).setInnerError(careError).build();
    }

    class ProtectionProcedureRunnable implements Runnable {
        private final Callback<BeginProtectionSessionCompletedEvent> mCallback;
        private final String mHWID;
        private final byte[] mHWToken;
        private final TexaServiceDelegate mTexaServiceDelegate;

        public ProtectionProcedureRunnable(HttpTexaService httpTexaService, byte[] bArr, String str, Callback<BeginProtectionSessionCompletedEvent> callback) {
            this.mHWToken = bArr;
            this.mHWID = str;
            this.mTexaServiceDelegate = httpTexaService.getServiceDelegate();
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            String tokenType;
            String token;
            String responseMessage;
            int iIntValue;
            Map<String, String> details;
            String message;
            if (!HttpServiceProtectionProcedure.this.mService.isConnected()) {
                CareLog.e(HttpServiceProtectionProcedure.TAG, "Internet connection is not available", new Object[0]);
                notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, 26).setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getString(R.string.error_internet_connection_not_available)).build()));
                return;
            }
            HostInfo serviceHost = TexaServiceBase.getServiceHost(this.mTexaServiceDelegate);
            if (serviceHost == null) {
                CareLog.e(HttpServiceProtectionProcedure.TAG, "Service Host cannot be null!", new Object[0]);
                return;
            }
            try {
                URL url = new URLBuilder(serviceHost.getScheme(), serviceHost.getHostName(), HttpServiceProtectionProcedure.PATH).getURL();
                Proxy proxy = HttpServiceProtectionProcedure.this.mService.getProxy();
                if (HttpServiceProtectionProcedure.this.mService.isAuthenticated()) {
                    AccessToken accessToken = HttpServiceProtectionProcedure.this.mService.getAccessToken();
                    token = accessToken.getToken();
                    tokenType = accessToken.getTokenType();
                } else {
                    tokenType = "";
                    token = tokenType;
                }
                URLConnection connection = HttpServiceProtectionProcedure.getConnection(proxy, url, this.mHWID, token, tokenType);
                HttpTexaService.prepareUrl(HttpServiceProtectionProcedure.this.mService.getContext(), connection);
                boolean z = true;
                CareLog.d(HttpServiceProtectionProcedure.TAG, "Calling url: %s", connection.getURL().toString());
                HashMap map = new HashMap();
                map.put(HttpServiceProtectionProcedure.KEY_HWTOKEN, Base64.encodeToString(this.mHWToken, 2));
                map.put(HttpTexaService.KEY_HWID, this.mHWID);
                String strValueOf = String.valueOf(HttpServiceProtectionProcedure.this.new ProtectionProcedureRequest(map));
                CareLog.v(HttpServiceProtectionProcedure.TAG, "Request body:\n%s", strValueOf);
                DataOutputStream dataOutputStream = new DataOutputStream(connection.getOutputStream());
                dataOutputStream.writeBytes(strValueOf);
                dataOutputStream.flush();
                dataOutputStream.close();
                try {
                    try {
                        iIntValue = TexaURLConnectionHelper.getResponseCode(connection).intValue();
                        try {
                            responseMessage = TexaURLConnectionHelper.getResponseMessage(connection, iIntValue);
                        } catch (IOException e) {
                            e = e;
                            responseMessage = "";
                        }
                    } catch (SocketTimeoutException e2) {
                        CareLog.e(HttpServiceProtectionProcedure.TAG, e2, "SocketTimeoutException.", new Object[0]);
                        notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, 18).setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_socket_timeout)).setException(e2).build()));
                        return;
                    }
                } catch (IOException e3) {
                    e = e3;
                    responseMessage = "";
                    iIntValue = 0;
                }
                try {
                    CareLog.d(HttpServiceProtectionProcedure.TAG, "Response code=%d", Integer.valueOf(iIntValue));
                    CareLog.d(HttpServiceProtectionProcedure.TAG, "Response message=%s", responseMessage);
                } catch (IOException e4) {
                    e = e4;
                    CareLog.e(HttpServiceProtectionProcedure.TAG, e, "Could not retrieve responseStatus.", new Object[0]);
                }
                try {
                    ProtectionProcedureResponse protectionProcedureResponseFromJson = null;
                    if (TexaURLConnectionHelper.isSuccessResponseCode(iIntValue)) {
                        if (TexaURLConnectionHelper.hasResponseBody(iIntValue)) {
                            String aSCIIContentFromStream = StreamUtils.getASCIIContentFromStream(connection.getInputStream());
                            CareLog.v(HttpTexaService.TAG, "Response content:\n%s", aSCIIContentFromStream);
                            protectionProcedureResponseFromJson = HttpServiceProtectionProcedure.fromJson(aSCIIContentFromStream);
                        }
                        if (protectionProcedureResponseFromJson == null) {
                            notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, 12).setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body)).build()));
                            return;
                        }
                        boolean z2 = (protectionProcedureResponseFromJson.getSessionID() == null || protectionProcedureResponseFromJson.getSessionID().isEmpty()) ? false : true;
                        if (protectionProcedureResponseFromJson.getVerificationKey() == null || protectionProcedureResponseFromJson.getVerificationKey().isEmpty()) {
                            z = false;
                        }
                        if (z2 && z) {
                            notifyCompleted(protectionProcedureResponseFromJson.getSessionID(), protectionProcedureResponseFromJson.getVerificationKey());
                            return;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body));
                        ArrayList arrayList = new ArrayList();
                        if (!z2) {
                            arrayList.add("SessionID");
                        }
                        if (!z) {
                            arrayList.add("VerificationKey");
                        }
                        if (arrayList.size() > 0) {
                            sb.append(" Missing fields: ");
                            sb.append(StringUtils.join(arrayList.toArray(), ","));
                        }
                        CareLog.e(HttpServiceProtectionProcedure.TAG, sb.toString(), new Object[0]);
                        notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, 12).setMessage(sb.toString()).build()));
                        return;
                    }
                    String errorBody = TexaURLConnectionHelper.getErrorBody(connection);
                    CareLog.d(HttpServiceProtectionProcedure.TAG, "Error body:\n%s", errorBody);
                    HttpApiError httpApiErrorFromJson = !StringUtils.isNullOrEmpty(errorBody) ? HttpApiError.fromJson(errorBody) : null;
                    CareError.Builder error = TexaURLConnectionHelper.getError(connection, httpApiErrorFromJson);
                    if (httpApiErrorFromJson != null) {
                        message = httpApiErrorFromJson.getMessage();
                        details = httpApiErrorFromJson.getDetails();
                    } else {
                        details = null;
                        message = "";
                    }
                    error.setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_http_error_with_api_error_info, Integer.valueOf(iIntValue), responseMessage, message, details));
                    notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, 13).setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_http_error, "" + iIntValue, responseMessage)).setInnerError(error.build()).build()));
                } catch (IOException e5) {
                    notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, -1).setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_protection_fails)).setException(e5).build()));
                }
            } catch (IOException e6) {
                CareLog.e(HttpServiceProtectionProcedure.TAG, e6, "Could not open the connection.", new Object[0]);
                notifyError(HttpServiceProtectionProcedure.this.getError(new CareError.Builder(2, 21).setMessage(HttpServiceProtectionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_http_socket_connection_fails)).setException(e6).build()));
            }
        }

        protected void notifyCompleted(String str, String str2) {
            this.mCallback.onCompleted(new BeginProtectionSessionCompletedEvent(this, str, str2, null));
        }

        protected void notifyError(CareError careError) {
            this.mCallback.onCompleted(new BeginProtectionSessionCompletedEvent(this, null, null, careError));
        }
    }

    class ProtectionProcedureRequest {
        private final Map<String, Object> mFields;

        public Map<String, Object> getFields() {
            return this.mFields;
        }

        public ProtectionProcedureRequest(Map<String, Object> map) {
            this.mFields = map;
        }

        public String toString() {
            return new GsonBuilder().disableHtmlEscaping().enableComplexMapKeySerialization().setPrettyPrinting().create().toJson(this.mFields);
        }
    }

    class ProtectionProcedureResponse {

        @SerializedName("verification_key")
        @Expose
        private String mVerificationKey = "";

        @SerializedName("session_id")
        @Expose
        private String mSessionID = "";

        public String getVerificationKey() {
            return this.mVerificationKey;
        }

        public ProtectionProcedureResponse setVerificationKey(String str) {
            this.mVerificationKey = str;
            return this;
        }

        public String getSessionID() {
            return this.mSessionID;
        }

        public ProtectionProcedureResponse setSessionID(String str) {
            this.mSessionID = str;
            return this;
        }

        public ProtectionProcedureResponse() {
        }
    }
}
