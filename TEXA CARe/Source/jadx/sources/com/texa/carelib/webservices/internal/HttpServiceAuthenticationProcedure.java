package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibConfig;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StreamUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.URLBuilder;
import com.texa.carelib.webservices.AccessToken;
import com.texa.carelib.webservices.HostInfo;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.TexaServiceDelegate;
import java.beans.PropertyChangeEvent;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceAuthenticationProcedure extends ObservableObjectBase implements ServiceAuthenticationProcedure {
    private static final String PATH = "/oauth2/token";
    public static final String TAG = "HttpServiceAuthenticationProcedure";
    private final HttpTexaService mService;
    private ServiceAuthenticationProcedureStatus mStatus = ServiceAuthenticationProcedureStatus.Undefined;
    private Thread mThread;

    @Override // com.texa.carelib.webservices.internal.ServiceAuthenticationProcedure
    public ServiceAuthenticationProcedureStatus getStatus() {
        return this.mStatus;
    }

    protected void setStatus(ServiceAuthenticationProcedureStatus serviceAuthenticationProcedureStatus) {
        ServiceAuthenticationProcedureStatus serviceAuthenticationProcedureStatus2 = this.mStatus;
        if (serviceAuthenticationProcedureStatus2 != serviceAuthenticationProcedureStatus) {
            this.mStatus = serviceAuthenticationProcedureStatus;
            firePropertyChange(new PropertyChangeEvent(this, ServiceAuthenticationProcedure.PROPERTY_STATUS, serviceAuthenticationProcedureStatus2, this.mStatus));
        }
    }

    public HttpTexaService getService() {
        return this.mService;
    }

    public HttpServiceAuthenticationProcedure(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 10).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_authentication_fails)).setInnerError(careError).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public URLConnection getConnection(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        if (getService().getProxy() != null) {
            uRLConnectionOpenConnection = url.openConnection(getService().getProxy());
        } else {
            uRLConnectionOpenConnection = url.openConnection();
        }
        uRLConnectionOpenConnection.setConnectTimeout(CareLibConfig.getServiceConnectionTimeout());
        uRLConnectionOpenConnection.setReadTimeout(CareLibConfig.getServiceReadTimeout());
        HttpTexaService.prepareUrl(this.mService.getContext(), uRLConnectionOpenConnection);
        uRLConnectionOpenConnection.setRequestProperty(TexaCareServiceBus.HEADER_CONTENT_TYPE, "application/x-www-form-urlencoded");
        TexaURLConnectionHelper.setRequestMethod(uRLConnectionOpenConnection, HttpMethod.POST);
        uRLConnectionOpenConnection.setUseCaches(false);
        uRLConnectionOpenConnection.setDoInput(true);
        uRLConnectionOpenConnection.setDoOutput(true);
        return uRLConnectionOpenConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValid(TexaServiceDelegate texaServiceDelegate) {
        return (texaServiceDelegate == null || StringUtils.isNullOrEmpty(texaServiceDelegate.getClientID()) || StringUtils.isNullOrEmpty(texaServiceDelegate.getClientSecret())) ? false : true;
    }

    @Override // com.texa.carelib.webservices.internal.ServiceAuthenticationProcedure
    public boolean authenticate(TexaServiceDelegate texaServiceDelegate, final Callback<ServiceAuthenticationProcedureCompletedEvent> callback) {
        Objects.requireNonNull(texaServiceDelegate, "delegate cannot be null");
        if (ServiceAuthenticationProcedureStatus.Pending == getStatus()) {
            CareLog.d(TAG, "Operations is already running.", new Object[0]);
            return false;
        }
        Thread thread = new Thread(new AuthenticationProcedureRunnable(texaServiceDelegate, callback), TAG + "_authenticate");
        this.mThread = thread;
        thread.setPriority(1);
        this.mThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.texa.carelib.webservices.internal.HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                this.f$0.m778x19c61769(callback, thread2, th);
            }
        });
        this.mThread.start();
        return true;
    }

    /* JADX INFO: renamed from: lambda$authenticate$0$com-texa-carelib-webservices-internal-HttpServiceAuthenticationProcedure, reason: not valid java name */
    public /* synthetic */ void m778x19c61769(Callback callback, Thread thread, Throwable th) {
        fireAuthenticationCompleted(callback, new CareError.Builder(2, 10).setException(th).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireAuthenticationCompleted(Callback<ServiceAuthenticationProcedureCompletedEvent> callback, CareError careError) {
        if (careError == null) {
            CareLog.d(TAG, "Service Authentication completed", new Object[0]);
        } else {
            CareLog.e(TAG, "Service Authentication completed with error. Error:%s.", careError);
        }
        if (careError == null) {
            setStatus(ServiceAuthenticationProcedureStatus.Completed);
        } else {
            setStatus(ServiceAuthenticationProcedureStatus.Error);
        }
        callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, careError));
    }

    public static AuthenticationProcedureResponse fromJson(String str) {
        return (AuthenticationProcedureResponse) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, AuthenticationProcedureResponse.class);
    }

    public final void join(long j) throws InterruptedException {
        Thread thread = this.mThread;
        if (thread != null) {
            thread.join(j);
        }
    }

    class AuthenticationProcedureRunnable implements Runnable {
        private final Callback<ServiceAuthenticationProcedureCompletedEvent> mCallback;
        private final TexaServiceDelegate mTexaServiceDelegate;

        public AuthenticationProcedureRunnable(TexaServiceDelegate texaServiceDelegate, Callback<ServiceAuthenticationProcedureCompletedEvent> callback) {
            this.mTexaServiceDelegate = texaServiceDelegate;
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iIntValue;
            if (HttpServiceAuthenticationProcedure.this.mService.isConnected()) {
                if (!HttpServiceAuthenticationProcedure.this.isValid(this.mTexaServiceDelegate)) {
                    CareLog.e(HttpServiceAuthenticationProcedure.TAG, "Service delegate is not valid. Required fields are missing or seems to not be valid.", new Object[0]);
                    HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure = HttpServiceAuthenticationProcedure.this;
                    httpServiceAuthenticationProcedure.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure.getError(new CareError.Builder(2, 34).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_credential_not_set)).build()));
                    return;
                }
                HttpServiceAuthenticationProcedure.this.setStatus(ServiceAuthenticationProcedureStatus.Pending);
                HostInfo authenticationHost = TexaServiceBase.getAuthenticationHost(this.mTexaServiceDelegate);
                if (authenticationHost == null) {
                    CareLog.e(HttpServiceAuthenticationProcedure.TAG, "Authentication host could not be null!!", new Object[0]);
                    HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure2 = HttpServiceAuthenticationProcedure.this;
                    httpServiceAuthenticationProcedure2.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure2.getError(new CareError.Builder(2, 35).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_host_not_set)).build()));
                    return;
                }
                try {
                    URL url = new URLBuilder(authenticationHost.getScheme(), authenticationHost.getHostName(), HttpServiceAuthenticationProcedure.PATH).getURL();
                    CareLog.d(HttpServiceAuthenticationProcedure.TAG, "Calling url: %s", url.toString());
                    URLConnection connection = HttpServiceAuthenticationProcedure.this.getConnection(url);
                    if (connection.getDoOutput()) {
                        HashMap map = new HashMap();
                        map.put(TexaCareAuthService.PARAM_GRANT_TYPE, TexaCareAuthService.GRANT_TYPE_CLIENT_CREDENTIALS);
                        map.put(TexaCareAuthService.PARAM_CLIENT_ID, this.mTexaServiceDelegate.getClientID());
                        map.put(TexaCareAuthService.PARAM_CLIENT_SECRET, this.mTexaServiceDelegate.getClientSecret());
                        String string = HttpServiceAuthenticationProcedure.this.new AuthenticationProcedureRequest(map).toString();
                        CareLog.v(HttpServiceAuthenticationProcedure.TAG, "Request body:\n%s", string);
                        DataOutputStream dataOutputStream = new DataOutputStream(connection.getOutputStream());
                        dataOutputStream.writeBytes(string);
                        dataOutputStream.flush();
                        dataOutputStream.close();
                    } else {
                        CareLog.e(HttpServiceAuthenticationProcedure.TAG, "Could not write http request content.", new Object[0]);
                    }
                    String responseMessage = "";
                    try {
                        try {
                            iIntValue = TexaURLConnectionHelper.getResponseCode(connection).intValue();
                            try {
                                responseMessage = TexaURLConnectionHelper.getResponseMessage(connection, iIntValue);
                                CareLog.d(HttpServiceAuthenticationProcedure.TAG, "Response code=%d", Integer.valueOf(iIntValue));
                                CareLog.d(HttpServiceAuthenticationProcedure.TAG, "Response message=%s", responseMessage);
                            } catch (IOException e) {
                                e = e;
                                CareLog.e(HttpServiceAuthenticationProcedure.TAG, e, "Could not retrieve responseStatus.", new Object[0]);
                            }
                        } catch (SocketTimeoutException e2) {
                            CareLog.e(HttpServiceAuthenticationProcedure.TAG, e2, "SocketTimeoutException.", new Object[0]);
                            HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure3 = HttpServiceAuthenticationProcedure.this;
                            httpServiceAuthenticationProcedure3.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure3.getError(new CareError.Builder(2, 18).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_socket_timeout)).setException(e2).build()));
                            return;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        iIntValue = 0;
                    }
                    try {
                        if (!TexaURLConnectionHelper.isSuccessResponseCode(iIntValue)) {
                            if (iIntValue == 404) {
                                CareLog.e(HttpServiceAuthenticationProcedure.TAG, "URL is not reachable.", new Object[0]);
                                HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure4 = HttpServiceAuthenticationProcedure.this;
                                httpServiceAuthenticationProcedure4.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure4.getError(new CareError.Builder(2, 18).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_http_socket_connection_fails)).build()));
                                return;
                            } else {
                                String errorBody = TexaURLConnectionHelper.getErrorBody(connection);
                                CareError careErrorBuild = TexaURLConnectionHelper.getError(connection, !StringUtils.isNullOrEmpty(errorBody) ? HttpApiError.fromJson(errorBody) : null).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_http_error, Integer.toString(iIntValue), responseMessage)).build();
                                HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure5 = HttpServiceAuthenticationProcedure.this;
                                httpServiceAuthenticationProcedure5.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure5.getError(careErrorBuild));
                                return;
                            }
                        }
                        if (TexaURLConnectionHelper.hasResponseBody(iIntValue)) {
                            String aSCIIContentFromStream = StreamUtils.getASCIIContentFromStream(connection.getInputStream());
                            CareLog.v(HttpTexaService.TAG, "Response content:\n%s", aSCIIContentFromStream);
                            AuthenticationProcedureResponse authenticationProcedureResponseFromJson = HttpServiceAuthenticationProcedure.fromJson(aSCIIContentFromStream);
                            if (authenticationProcedureResponseFromJson != null) {
                                HttpServiceAuthenticationProcedure.this.getService().setAccessToken(new AccessToken(authenticationProcedureResponseFromJson.getTokenType(), authenticationProcedureResponseFromJson.getAccessToken(), authenticationProcedureResponseFromJson.getSessionLifeTime()));
                                HttpServiceAuthenticationProcedure.this.fireAuthenticationCompleted(this.mCallback, null);
                                return;
                            } else {
                                HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure6 = HttpServiceAuthenticationProcedure.this;
                                httpServiceAuthenticationProcedure6.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure6.getError(new CareError.Builder(2, 12).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body)).build()));
                                return;
                            }
                        }
                        return;
                    } catch (IOException e4) {
                        HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure7 = HttpServiceAuthenticationProcedure.this;
                        httpServiceAuthenticationProcedure7.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure7.getError(TexaURLConnectionHelper.getError(connection, null).setException(e4).build()));
                        return;
                    }
                } catch (IOException e5) {
                    CareLog.e(HttpServiceAuthenticationProcedure.TAG, e5, "Could not open the connection.", new Object[0]);
                    HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure8 = HttpServiceAuthenticationProcedure.this;
                    httpServiceAuthenticationProcedure8.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure8.getError(new CareError.Builder(2, 21).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_http_socket_connection_fails)).setException(e5).build()));
                    return;
                }
            }
            CareLog.e(HttpServiceAuthenticationProcedure.TAG, "Internet connection is not available", new Object[0]);
            HttpServiceAuthenticationProcedure httpServiceAuthenticationProcedure9 = HttpServiceAuthenticationProcedure.this;
            httpServiceAuthenticationProcedure9.fireAuthenticationCompleted(this.mCallback, httpServiceAuthenticationProcedure9.getError(new CareError.Builder(2, 26).setMessage(HttpServiceAuthenticationProcedure.this.mService.getContext().getString(R.string.error_internet_connection_not_available)).build()));
        }
    }

    class AuthenticationProcedureRequest {
        public static final String DEFAULT_ENCODING = "UTF-8";
        public final String TAG = AuthenticationProcedureRequest.class.getSimpleName();
        private final Map<String, String> mFields;

        public Map<String, String> getFields() {
            return this.mFields;
        }

        public AuthenticationProcedureRequest(Map<String, String> map) {
            this.mFields = map;
        }

        private String encode(String str, String str2) {
            try {
                return URLEncoder.encode(str, str2);
            } catch (UnsupportedEncodingException e) {
                CareLog.e(this.TAG, e, "Encoding not supported", new Object[0]);
                return "";
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (Map.Entry<String, String> entry : this.mFields.entrySet()) {
                if (!z) {
                    sb.append(Typography.amp);
                }
                sb.append(encode(entry.getKey(), "UTF-8"));
                sb.append('=');
                sb.append(encode(entry.getValue(), "UTF-8"));
                z = false;
            }
            return sb.toString();
        }
    }

    class AuthenticationProcedureResponse {

        @SerializedName("access_token")
        @Expose
        private String mAccessToken = "";

        @SerializedName("expires_in")
        @Expose
        private long mSessionLifeTime = 0;

        @SerializedName("token_type")
        @Expose
        private String mTokenType = "";

        public String getAccessToken() {
            return this.mAccessToken;
        }

        public void setAccessToken(String str) {
            this.mAccessToken = str;
        }

        public String getTokenType() {
            return this.mTokenType;
        }

        public void setTokenType(String str) {
            this.mTokenType = str;
        }

        public long getSessionLifeTime() {
            return this.mSessionLifeTime;
        }

        public void setSessionLifeTime(int i) {
            this.mSessionLifeTime = i;
        }

        public AuthenticationProcedureResponse() {
        }
    }
}
