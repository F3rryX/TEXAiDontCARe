package com.texa.carelib.webservices.internal;

import com.texa.carelib.care.profile.CareProxy;
import com.texa.carelib.care.profile.CareProxyProtectionSessionCompletedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StreamUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.HostInfo;
import com.texa.carelib.webservices.R;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class HttpRequestTask implements Runnable {
    public static final String TAG = "HttpRequestTask";
    private CareError mError;
    private final HostInfo mHostInfo;
    private final HttpAPIRequest mRequest;
    private final HttpTexaService mService;
    private final Object mAuthenticationLock = new Object();
    private final Object mProtectionLock = new Object();
    private boolean mSkipNotify = false;

    public HttpRequestTask(HttpTexaService httpTexaService, HostInfo hostInfo, HttpAPIRequest httpAPIRequest) {
        this.mService = httpTexaService;
        this.mHostInfo = hostInfo;
        this.mRequest = httpAPIRequest;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mHostInfo == null) {
            setError(new CareError.Builder(2, 25).setMessage(this.mService.getContext().getString(R.string.error_service_delegate_not_set)).build());
            onPostExecute(null);
        } else if (!this.mService.isConnected()) {
            CareLog.e(TAG, "Internet connection is not available", new Object[0]);
            setError(new CareError.Builder(2, 26).setMessage(this.mService.getContext().getString(R.string.error_internet_connection_not_available)).build());
            onPostExecute(null);
        } else {
            prepareSecurityForAPI(this.mRequest, new Callback() { // from class: com.texa.carelib.webservices.internal.HttpRequestTask$$ExternalSyntheticLambda2
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m777x48f92a8d((ServiceAuthenticationProcedureCompletedEvent) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$run$0$com-texa-carelib-webservices-internal-HttpRequestTask, reason: not valid java name */
    public /* synthetic */ void m777x48f92a8d(ServiceAuthenticationProcedureCompletedEvent serviceAuthenticationProcedureCompletedEvent) {
        if (serviceAuthenticationProcedureCompletedEvent.getError() == null) {
            performRequest(this.mHostInfo, this.mRequest);
        } else {
            setError(serviceAuthenticationProcedureCompletedEvent.getError());
            onPostExecute(null);
        }
    }

    public void setError(CareError careError) {
        this.mError = careError;
    }

    private void prepareSecurityForAPI(final HttpAPIRequest httpAPIRequest, final Callback<ServiceAuthenticationProcedureCompletedEvent> callback) {
        HttpServiceAuthenticationProcedure serviceAuthenticationProcedure = this.mService.getServiceAuthenticationProcedure();
        if (!this.mService.isAuthenticated() && (this.mService.getServiceDelegate() != null ? this.mService.getServiceDelegate().useDirectAuthentication() : true)) {
            String str = TAG;
            CareLog.v(str, "TexaService is not yet authenticated.", new Object[0]);
            CareLog.v(str, "Begin authentication procedure.", new Object[0]);
            if (serviceAuthenticationProcedure.authenticate(this.mService.getServiceDelegate(), new Callback() { // from class: com.texa.carelib.webservices.internal.HttpRequestTask$$ExternalSyntheticLambda4
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m775x52defc5b(httpAPIRequest, callback, (ServiceAuthenticationProcedureCompletedEvent) obj);
                }
            })) {
                return;
            }
            CareLog.wtf(str, "Could not authenticate. Authentication procedure is not yet available.(authenticate() method returns false).", new Object[0]);
            if (callback != null) {
                callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, new CareError.Builder(2, 10).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_authentication_could_not_authenticate_at_this_moment)).build()));
                return;
            }
            return;
        }
        protectionBlock(httpAPIRequest, callback);
    }

    /* JADX INFO: renamed from: lambda$prepareSecurityForAPI$1$com-texa-carelib-webservices-internal-HttpRequestTask, reason: not valid java name */
    public /* synthetic */ void m775x52defc5b(HttpAPIRequest httpAPIRequest, Callback callback, ServiceAuthenticationProcedureCompletedEvent serviceAuthenticationProcedureCompletedEvent) {
        if (serviceAuthenticationProcedureCompletedEvent.getError() == null) {
            String str = TAG;
            CareLog.v(str, "Authentication is granted.", new Object[0]);
            CareLog.v(str, "Checking for session status.", new Object[0]);
            protectionBlock(httpAPIRequest, callback);
            return;
        }
        CareLog.e(TAG, "Authentication is failed.", new Object[0]);
        if (callback != null) {
            callback.onCompleted(serviceAuthenticationProcedureCompletedEvent);
        }
    }

    private void protectionBlock(HttpAPIRequest httpAPIRequest, final Callback<ServiceAuthenticationProcedureCompletedEvent> callback) {
        if (!httpAPIRequest.isSessionProtected()) {
            CareLog.v(TAG, "WebAPI is not session protected.", new Object[0]);
            if (callback != null) {
                callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, null));
                return;
            }
            return;
        }
        if (!StringUtils.isNullOrEmpty(this.mService.getSessionID())) {
            CareLog.v(TAG, "TexaService session is already opened.", new Object[0]);
            if (callback != null) {
                callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, null));
                return;
            }
            return;
        }
        if (this.mService.getCareProxy() == null) {
            CareLog.e(TAG, "CareProxy is not set! Could not open the protection session!", new Object[0]);
            if (callback != null) {
                callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, new CareError.Builder(2, 10).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_care_proxy_not_set)).build()));
                return;
            }
            return;
        }
        String str = TAG;
        CareLog.v(str, "Opening new protection session...", new Object[0]);
        if (this.mService.getCareProxy().beginProtectionSession(new Callback() { // from class: com.texa.carelib.webservices.internal.HttpRequestTask$$ExternalSyntheticLambda3
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m776x2dbac838(callback, (CareProxyProtectionSessionCompletedEvent) obj);
            }
        })) {
            return;
        }
        CareLog.wtf(str, "Couldn't begin CARe protection session. beginProtectionSession() returns false.", new Object[0]);
        if (callback != null) {
            callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, new CareError.Builder(1, 7).setMessage(this.mService.getContext().getString(R.string.error_service_protection_could_not_open_protection_session_at_this_moment)).build()));
        }
    }

    /* JADX INFO: renamed from: lambda$protectionBlock$2$com-texa-carelib-webservices-internal-HttpRequestTask, reason: not valid java name */
    public /* synthetic */ void m776x2dbac838(Callback callback, CareProxyProtectionSessionCompletedEvent careProxyProtectionSessionCompletedEvent) {
        CareError error = careProxyProtectionSessionCompletedEvent.getError();
        if (error == null) {
            if (callback != null) {
                callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, null));
            }
        } else {
            CareLog.e(TAG, "CARe protection  procedure completed with error: %s.", error);
            if (callback != null) {
                callback.onCompleted(new ServiceAuthenticationProcedureCompletedEvent(this, error));
            }
        }
    }

    private URLConnection proceed(HostInfo hostInfo, HttpAPIRequest httpAPIRequest) throws IOException {
        URLConnection connection = this.mService.getConnection(hostInfo, httpAPIRequest);
        String str = TAG;
        CareLog.d(str, "Calling request %s(method=%s,ID=%s)", connection.getURL().toString(), httpAPIRequest.getHttpMethod(), httpAPIRequest.getID());
        if (connection.getDoOutput()) {
            CareLog.v(str, "Writing request body for %s[method=%s,ID=%s]", connection.getURL().toString(), httpAPIRequest.getHttpMethod(), httpAPIRequest.getID());
            String requestBody = this.mService.getRequestBody(httpAPIRequest);
            CareLog.v(str, "Request body:\n%s", requestBody);
            DataOutputStream dataOutputStream = new DataOutputStream(connection.getOutputStream());
            dataOutputStream.writeBytes(requestBody);
            dataOutputStream.flush();
            dataOutputStream.close();
        }
        return connection;
    }

    private void performRequest(HostInfo hostInfo, HttpAPIRequest httpAPIRequest) {
        String responseMessage;
        int iIntValue;
        String aSCIIContentFromStream;
        try {
            URLConnection uRLConnectionProceed = proceed(hostInfo, httpAPIRequest);
            try {
                try {
                    iIntValue = TexaURLConnectionHelper.getResponseCode(uRLConnectionProceed).intValue();
                    try {
                        responseMessage = TexaURLConnectionHelper.getResponseMessage(uRLConnectionProceed, iIntValue);
                    } catch (IOException e) {
                        e = e;
                        responseMessage = "";
                    }
                } catch (IOException e2) {
                    e = e2;
                    responseMessage = "";
                    iIntValue = 0;
                }
                try {
                    String str = TAG;
                    CareLog.d(str, "Response code=%d", Integer.valueOf(iIntValue));
                    CareLog.d(str, "Response message=%s", responseMessage);
                } catch (IOException e3) {
                    e = e3;
                    CareLog.e(TAG, e, "Could not retrieve responseStatus.", new Object[0]);
                }
                try {
                } catch (Exception e4) {
                    CareLog.e(TAG, e4, "An exception is occurred", new Object[0]);
                    setError(new CareError.Builder(2, -1).setMessage(e4.getMessage()).setException(e4).build());
                }
                if (TexaURLConnectionHelper.isSuccessResponseCode(iIntValue)) {
                    if (TexaURLConnectionHelper.hasResponseBody(iIntValue)) {
                        try {
                            aSCIIContentFromStream = StreamUtils.getASCIIContentFromStream(uRLConnectionProceed.getInputStream());
                        } catch (Exception e5) {
                            e = e5;
                            aSCIIContentFromStream = "";
                        }
                        try {
                            CareLog.v(TAG, "Response content:\n%s", aSCIIContentFromStream);
                        } catch (Exception e6) {
                            e = e6;
                            CareLog.e(TAG, e, "Could not read response content.", new Object[0]);
                        }
                    } else {
                        aSCIIContentFromStream = "";
                    }
                    try {
                        setError(null);
                        onPostExecute(aSCIIContentFromStream);
                        return;
                    } catch (Exception e7) {
                        CareLog.e(TAG, e7, "An exception is occurred", new Object[0]);
                        setError(new CareError.Builder(2, -1).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_http_error, "" + iIntValue, responseMessage)).setException(e7).build());
                        return;
                    }
                }
                if (iIntValue == 404) {
                    CareLog.e(TAG, "URL is not reachable.", new Object[0]);
                    setError(new CareError.Builder(2, 18).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_http_socket_connection_fails)).build());
                    onPostExecute(null);
                }
                boolean z = httpAPIRequest.getLastHttpResponseStatus() != iIntValue;
                httpAPIRequest.setLastHttpResponseStatus(iIntValue);
                String errorBody = TexaURLConnectionHelper.getErrorBody(uRLConnectionProceed);
                CareLog.d(TAG, "Error body:\n%s", errorBody);
                HttpApiError httpApiErrorFromJson = !StringUtils.isNullOrEmpty(errorBody) ? HttpApiError.fromJson(errorBody) : null;
                if (z) {
                    if (401 == iIntValue && this.mService.getServiceDelegate() != null && this.mService.getServiceDelegate().useDirectAuthentication()) {
                        authenticate();
                        onPostExecute(null);
                        return;
                    } else if (400 == iIntValue && isSessionError(httpApiErrorFromJson)) {
                        openSession();
                        onPostExecute(null);
                        return;
                    }
                }
                String message = httpApiErrorFromJson != null ? httpApiErrorFromJson.getMessage() : "";
                Map<String, String> details = httpApiErrorFromJson != null ? httpApiErrorFromJson.getDetails() : new HashMap<>();
                CareError.Builder error = TexaURLConnectionHelper.getError(uRLConnectionProceed, httpApiErrorFromJson);
                error.setMessage(this.mService.getContext().getResources().getString(R.string.error_service_http_error_with_api_error_info, Integer.valueOf(iIntValue), responseMessage, message, details));
                setError(error.build());
                onPostExecute(null);
            } catch (SocketTimeoutException e8) {
                CareLog.e(TAG, e8, "SocketTimeoutException.", new Object[0]);
                setError(new CareError.Builder(2, 18).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_socket_timeout)).setException(e8).build());
                onPostExecute(null);
            }
        } catch (IOException e9) {
            CareLog.e(TAG, e9, "Could not open the connection.", new Object[0]);
            setError(new CareError.Builder(2, 21).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_http_socket_connection_fails)).setException(e9).build());
            onPostExecute(null);
        }
    }

    private void onPostExecute(String str) {
        this.mService.onRequestCompleted(this.mRequest, this.mSkipNotify, str, this.mError);
    }

    private boolean isSessionError(HttpApiError httpApiError) {
        if (httpApiError != null) {
            return "KO_DEVICE-STATUS".equalsIgnoreCase(httpApiError.getMessage()) || "KO_SESSION-NOT_FOUND".equalsIgnoreCase(httpApiError.getMessage()) || "KO_SESSION-EXPIRED".equalsIgnoreCase(httpApiError.getMessage()) || "KO_INPUT-SID_MISSING".equalsIgnoreCase(httpApiError.getMessage());
        }
        return false;
    }

    private void authenticate() {
        CareLog.d(TAG, "Begin authentication procedure", new Object[0]);
        if (this.mService.getServiceAuthenticationProcedure().authenticate(this.mService.getServiceDelegate(), new Callback() { // from class: com.texa.carelib.webservices.internal.HttpRequestTask$$ExternalSyntheticLambda1
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m773xa74bd6b4((ServiceAuthenticationProcedureCompletedEvent) obj);
            }
        })) {
            try {
                synchronized (this.mAuthenticationLock) {
                    this.mAuthenticationLock.wait(60000L);
                }
                return;
            } catch (InterruptedException e) {
                CareLog.e(TAG, e, "Wait has failed.", new Object[0]);
                setError(new CareError.Builder(2, 10).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_socket_timeout)).build());
                return;
            }
        }
        setError(new CareError.Builder(2, 10).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_authentication_could_not_authenticate_at_this_moment)).build());
    }

    /* JADX INFO: renamed from: lambda$authenticate$3$com-texa-carelib-webservices-internal-HttpRequestTask, reason: not valid java name */
    public /* synthetic */ void m773xa74bd6b4(ServiceAuthenticationProcedureCompletedEvent serviceAuthenticationProcedureCompletedEvent) {
        if (serviceAuthenticationProcedureCompletedEvent.getError() == null) {
            try {
                CareLog.d(TAG, "ServiceAuthenticationProcedure procedure completed successfully", new Object[0]);
                this.mService.repeatRequest(this.mRequest);
                this.mSkipNotify = true;
                synchronized (this.mAuthenticationLock) {
                    this.mAuthenticationLock.notifyAll();
                }
                return;
            } catch (Throwable th) {
                synchronized (this.mAuthenticationLock) {
                    this.mAuthenticationLock.notifyAll();
                    throw th;
                }
            }
        }
        CareLog.e(TAG, "ServiceAuthenticationProcedure procedure fails. Error=%s", serviceAuthenticationProcedureCompletedEvent.getError());
        try {
            setError(serviceAuthenticationProcedureCompletedEvent.getError());
            synchronized (this.mAuthenticationLock) {
                this.mAuthenticationLock.notifyAll();
            }
        } catch (Throwable th2) {
            synchronized (this.mAuthenticationLock) {
                this.mAuthenticationLock.notifyAll();
                throw th2;
            }
        }
    }

    private void openSession() {
        String str = TAG;
        CareLog.d(str, "Begin protection procedure", new Object[0]);
        Callback<CareProxyProtectionSessionCompletedEvent> callback = new Callback() { // from class: com.texa.carelib.webservices.internal.HttpRequestTask$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m774xa25a07f2((CareProxyProtectionSessionCompletedEvent) obj);
            }
        };
        CareProxy careProxy = this.mService.getCareProxy();
        if (careProxy != null) {
            if (careProxy.beginProtectionSession(callback)) {
                try {
                    try {
                        CareLog.d(str, "CARe protection  procedure is starting...", new Object[0]);
                        synchronized (this.mProtectionLock) {
                            this.mProtectionLock.wait(60000L);
                        }
                        CareLog.d(str, "CARe protection  procedure ended.", new Object[0]);
                        return;
                    } catch (InterruptedException e) {
                        String str2 = TAG;
                        CareLog.e(str2, e, "Wait for session protection fails", new Object[0]);
                        CareLog.d(str2, "CARe protection  procedure ended.", new Object[0]);
                        return;
                    }
                } catch (Throwable th) {
                    CareLog.d(TAG, "CARe protection  procedure ended.", new Object[0]);
                    throw th;
                }
            }
            CareLog.e(str, "Could not create the protection session.", new Object[0]);
            setError(new CareError.Builder(1, 7).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_protection_could_not_open_protection_session_at_this_moment)).build());
            return;
        }
        CareLog.e(str, "CareProxy not set.", new Object[0]);
        setError(new CareError.Builder(1, 7).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_care_proxy_not_set)).build());
    }

    /* JADX INFO: renamed from: lambda$openSession$4$com-texa-carelib-webservices-internal-HttpRequestTask, reason: not valid java name */
    public /* synthetic */ void m774xa25a07f2(CareProxyProtectionSessionCompletedEvent careProxyProtectionSessionCompletedEvent) {
        CareError error = careProxyProtectionSessionCompletedEvent.getError();
        try {
            if (error == null) {
                CareLog.d(TAG, "CARe protection  procedure completed successfully", new Object[0]);
                this.mService.repeatRequest(this.mRequest);
                this.mSkipNotify = true;
            } else {
                CareLog.e(TAG, "CARe protection  procedure completed with error: %s.", error);
                setError(new CareError.Builder(1, 7).setMessage(this.mService.getContext().getString(R.string.error_service_protection_fails)).setInnerError(error).build());
                this.mSkipNotify = false;
            }
            synchronized (this.mProtectionLock) {
                this.mProtectionLock.notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this.mProtectionLock) {
                this.mProtectionLock.notifyAll();
                throw th;
            }
        }
    }
}
