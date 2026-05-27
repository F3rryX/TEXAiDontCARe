package com.texa.carelib.webservices.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.gson.GsonBuilder;
import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibConfig;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.URLBuilder;
import com.texa.carelib.webservices.AccessToken;
import com.texa.carelib.webservices.BuildConfig;
import com.texa.carelib.webservices.HostInfo;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceDTCResolutionProcedure;
import com.texa.carelib.webservices.ServiceFirmwareDownloadProcedure;
import com.texa.carelib.webservices.ServiceFirmwareInfo;
import com.texa.carelib.webservices.ServiceImpactDetection;
import com.texa.carelib.webservices.ServiceVehicleConfigurationInfo;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import com.texa.carelib.webservices.ServiceVehicleInfo;
import com.texa.carelib.webservices.events.BeginProtectionSessionCompletedEvent;
import com.texa.carelib.webservices.internal.connection.ConnectionChecker;
import com.texa.carelib.webservices.internal.connection.ConnectionCheckerCompat;
import com.texa.carelib.webservices.utils.HttpHeaderUserAgentBuilder;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.IOException;
import java.lang.Thread;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes2.dex */
public class HttpTexaService extends TexaServiceBase {
    private static final String ACCEPT_JSON = "application/json";
    public static final String ACCEPT_TX_CARE = "application/vnd.tx-care;version=1";
    public static final int CARE_AUTHENTICATION_TIMEOUT = 60000;
    private static final String CONTENT_TYPE = "application/json";
    private static final String DEVICE_FAMILY_ANDROID = "Android";
    public static final String FIELD_API_ERROR = "X-API-Error";
    public static final String FIELD_API_ERROR_DETAIL = "X-API-ErrorDetail";
    public static final String HEADER_DEVICE_FAMILY = "Device-Family";
    public static final String KEY_ACCEPT_LANGUAGE = "Accept-Language";
    public static final String KEY_HWID = "CARe-HWID";
    public static final String KEY_SESSION_ID = "CARe-SID";
    public static final int SESSION_CREATION_TIMEOUT = 60000;
    public static final String TAG = "HttpTexaService";
    private ConnectionCheckerCompat mConnectionCheckerCompat;
    private final HttpServiceDTCResolutionProcedure mDTCResolutionProcedure;
    private final List<String> mFieldsAsHeader;
    private final HttpServiceImpactDetection mHttpServiceImpactDetection;
    private HttpAPIRequest mPendingRequest;
    private Proxy mProxy;
    private final List<HttpAPIRequest> mRequestList;
    private final ReentrantReadWriteLock mRequestListLock;
    private final HttpServiceFirmwareDownloadProcedure mServiceFirmwareDownloadProcedure;
    private final HttpServiceFirmwareInfo mServiceFirmwareInfoProcedure;
    private final HttpServiceProtectionProcedure mServiceProtectionProcedure;
    private final HttpServiceVehicleConfigurationInfo mServiceVehicleConfigurationInfo;
    private final HttpServiceVehicleInfo mServiceVehicleInfo;
    private final HttpServiceAuthenticationProcedure mTexaServiceHttpAuthenticationProcedure;
    private final HttpServiceVehicleConfigurationProcedure mVehicleIdentificationProcedure;

    private static String getHeaderContentType() {
        return TexaCareServiceBus.HEADER_CONTENT_TYPE_VALUE;
    }

    private static String getHeaderDeviceFamily() {
        return DEVICE_FAMILY_ANDROID;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public void shutdown() {
    }

    public HttpTexaService(Context context) {
        this.mDTCResolutionProcedure = new HttpServiceDTCResolutionProcedure(this);
        this.mTexaServiceHttpAuthenticationProcedure = new HttpServiceAuthenticationProcedure(this);
        this.mServiceProtectionProcedure = new HttpServiceProtectionProcedure(this);
        this.mServiceVehicleInfo = new HttpServiceVehicleInfo(this);
        this.mServiceFirmwareDownloadProcedure = new HttpServiceFirmwareDownloadProcedure(this);
        this.mServiceFirmwareInfoProcedure = new HttpServiceFirmwareInfo(this);
        this.mServiceVehicleConfigurationInfo = new HttpServiceVehicleConfigurationInfo(this);
        this.mHttpServiceImpactDetection = new HttpServiceImpactDetection(this);
        this.mVehicleIdentificationProcedure = new HttpServiceVehicleConfigurationProcedure(this);
        this.mRequestList = new ArrayList();
        this.mRequestListLock = new ReentrantReadWriteLock();
        this.mFieldsAsHeader = new ArrayList();
        initHeaderFields();
    }

    public HttpTexaService(Context context, Proxy proxy) {
        this(context);
        this.mProxy = proxy;
    }

    public Proxy getProxy() {
        return this.mProxy;
    }

    public void setProxy(Proxy proxy) {
        this.mProxy = proxy;
    }

    URLConnection getConnection(HostInfo hostInfo, HttpAPIRequest httpAPIRequest) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        URL url = getURL(hostInfo, httpAPIRequest);
        if (getProxy() != null) {
            uRLConnectionOpenConnection = url.openConnection(getProxy());
        } else {
            uRLConnectionOpenConnection = url.openConnection();
        }
        uRLConnectionOpenConnection.setConnectTimeout(CareLibConfig.getServiceConnectionTimeout());
        uRLConnectionOpenConnection.setReadTimeout(CareLibConfig.getServiceReadTimeout());
        TexaURLConnectionHelper.setRequestMethod(uRLConnectionOpenConnection, httpAPIRequest.getHttpMethod());
        String str = TAG;
        CareLog.d(str, "Request is session protected? %b", Boolean.valueOf(httpAPIRequest.isSessionProtected()));
        CareLog.v(str, "Setting headers:", new Object[0]);
        prepareUrl(getContext(), uRLConnectionOpenConnection);
        if (httpAPIRequest.isSessionProtected()) {
            if (!StringUtils.isNullOrEmpty(getSessionID())) {
                uRLConnectionOpenConnection.setRequestProperty(KEY_SESSION_ID, getSessionID());
            }
            CareLog.v(str, "%s=%s", KEY_SESSION_ID, getSessionID());
        }
        AccessToken accessToken = getAccessToken();
        if (isAuthenticated() && accessToken != null) {
            String str2 = accessToken.getTokenType() + " " + accessToken.getToken();
            CareLog.v(str, "Authorization: %s", str2);
            uRLConnectionOpenConnection.setRequestProperty("Authorization", str2);
        }
        Map<String, Object> fields = httpAPIRequest.getFields();
        for (String str3 : getFieldsAsHeader()) {
            if (fields.get(str3) != null && fields.containsKey(str3)) {
                CareLog.v(TAG, "%s:%s", str3, fields.get(str3));
                uRLConnectionOpenConnection.setRequestProperty(str3, fields.get(str3).toString());
            }
        }
        uRLConnectionOpenConnection.setUseCaches(false);
        uRLConnectionOpenConnection.setDoInput(true);
        if (HttpMethod.POST.equals(httpAPIRequest.getHttpMethod())) {
            uRLConnectionOpenConnection.setDoOutput(true);
        }
        return uRLConnectionOpenConnection;
    }

    private List<String> getFieldsAsHeader() {
        return this.mFieldsAsHeader;
    }

    protected HttpServiceAuthenticationProcedure getServiceAuthenticationProcedure() {
        return this.mTexaServiceHttpAuthenticationProcedure;
    }

    protected HttpServiceProtectionProcedure getServiceProtectionProcedure() {
        return this.mServiceProtectionProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceDTCResolutionProcedure getDTCResolutionProcedure() {
        return this.mDTCResolutionProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceImpactDetection getImpactDetection() {
        return this.mHttpServiceImpactDetection;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceVehicleConfigurationInfo getVehicleConfigurationInfo() {
        return this.mServiceVehicleConfigurationInfo;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceVehicleInfo getVehicleInfo() {
        return this.mServiceVehicleInfo;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceFirmwareInfo getFirmwareInfoProcedure() {
        return this.mServiceFirmwareInfoProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceFirmwareDownloadProcedure getFirmwareDownloadProcedure() {
        return this.mServiceFirmwareDownloadProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceVehicleConfigurationProcedure getVehicleConfigurationProcedure() {
        return this.mVehicleIdentificationProcedure;
    }

    private void enqueueRequest(HttpAPIRequest httpAPIRequest) {
        this.mRequestListLock.writeLock().lock();
        try {
            try {
                this.mRequestList.add(httpAPIRequest);
                CareLog.d(TAG, "Adding request %s[method=%s,ID=%s] to the queue. Current request queue size is:%d.", httpAPIRequest.getPath(), httpAPIRequest.getHttpMethod(), httpAPIRequest.getID(), Integer.valueOf(this.mRequestList.size()));
            } catch (Exception e) {
                CareLog.e(TAG, e, "Could not process the request.", new Object[0]);
            }
        } finally {
            this.mRequestListLock.writeLock().unlock();
        }
    }

    private HttpAPIRequest dequeueRequest() {
        HttpAPIRequest httpAPIRequest;
        this.mRequestListLock.readLock().lock();
        try {
            if (this.mRequestList.size() > 0) {
                CareLog.v(TAG, "Processing next request...", new Object[0]);
                httpAPIRequest = this.mRequestList.get(0);
            } else {
                CareLog.v(TAG, "No request pending...", new Object[0]);
                httpAPIRequest = null;
            }
            return httpAPIRequest;
        } finally {
            this.mRequestListLock.readLock().unlock();
        }
    }

    protected void proceedWithNextRequest() {
        HttpAPIRequest httpAPIRequestDequeueRequest = dequeueRequest();
        if (httpAPIRequestDequeueRequest != null) {
            accessAPIWithRequest(httpAPIRequestDequeueRequest, false);
        }
    }

    protected Map<String, Object> getQueryStringParameters(HttpAPIRequest httpAPIRequest) {
        HashMap map = new HashMap(httpAPIRequest.getFields());
        Iterator<String> it = getFieldsAsHeader().iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return map;
    }

    protected URL getURL(HostInfo hostInfo, HttpAPIRequest httpAPIRequest) throws MalformedURLException {
        URLBuilder uRLBuilder = new URLBuilder(hostInfo.getScheme(), hostInfo.getHostName(), httpAPIRequest.getPath());
        if (HttpMethod.GET.equals(httpAPIRequest.getHttpMethod())) {
            uRLBuilder.addAllQueryItem(getQueryStringParameters(httpAPIRequest));
        }
        return uRLBuilder.getURL();
    }

    protected String getRequestBody(HttpAPIRequest httpAPIRequest) {
        HashMap map = new HashMap();
        map.putAll(getQueryStringParameters(httpAPIRequest));
        return new GsonBuilder().disableHtmlEscaping().enableComplexMapKeySerialization().setPrettyPrinting().create().toJson(map);
    }

    public void accessAPIAtPath(String str, String str2, boolean z, Map<String, Object> map, HttpAPIRequestListener httpAPIRequestListener) {
        accessAPIWithRequest(new HttpAPIRequest(str2, str, map, z, httpAPIRequestListener), true);
    }

    @Override // com.texa.carelib.webservices.ServiceProxy
    public boolean beginProtectionSessionWithHWToken(byte[] bArr, String str, Callback<BeginProtectionSessionCompletedEvent> callback) {
        return getServiceProtectionProcedure().beginProtectionSessionWithHWToken(bArr, str, callback);
    }

    public boolean isConnected() {
        if (this.mConnectionCheckerCompat == null) {
            ConnectionCheckerCompat connectionCheckerCompat = new ConnectionCheckerCompat(getContext());
            this.mConnectionCheckerCompat = connectionCheckerCompat;
            connectionCheckerCompat.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.carelib.webservices.internal.HttpTexaService$$ExternalSyntheticLambda0
                @Override // java.beans.PropertyChangeListener
                public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                    this.f$0.m782x9c5fb188(propertyChangeEvent);
                }
            });
        }
        return this.mConnectionCheckerCompat.isConnected();
    }

    /* JADX INFO: renamed from: lambda$isConnected$0$com-texa-carelib-webservices-internal-HttpTexaService, reason: not valid java name */
    public /* synthetic */ void m782x9c5fb188(PropertyChangeEvent propertyChangeEvent) {
        if (ConnectionChecker.PROPERTY_CONNECTED.equals(propertyChangeEvent.getPropertyName()) && this.mConnectionCheckerCompat.isConnected()) {
            proceedWithNextRequest();
        }
    }

    private void removeRequest(HttpAPIRequest httpAPIRequest) {
        this.mRequestListLock.writeLock().lock();
        try {
            this.mRequestList.remove(httpAPIRequest);
        } finally {
            this.mRequestListLock.writeLock().unlock();
        }
    }

    private void accessAPIWithRequest(HttpAPIRequest httpAPIRequest, boolean z) {
        removeRequest(httpAPIRequest);
        if (this.mPendingRequest != null || (z && this.mRequestList.size() > 0)) {
            enqueueRequest(httpAPIRequest);
            return;
        }
        String str = TAG;
        CareLog.d(str, "Executing request %s[method=%s,ID=%s]. Current request queue size is:%d.", httpAPIRequest.getPath(), httpAPIRequest.getHttpMethod(), httpAPIRequest.getID(), Integer.valueOf(this.mRequestList.size()));
        this.mPendingRequest = httpAPIRequest;
        Thread thread = new Thread(new HttpRequestTask(this, getServiceHost(getServiceDelegate()), this.mPendingRequest), str + "_accessAPIWithRequest_" + this.mPendingRequest.getID());
        thread.setPriority(1);
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.texa.carelib.webservices.internal.HttpTexaService$$ExternalSyntheticLambda1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                this.f$0.m781x6b5160d7(thread2, th);
            }
        });
        thread.start();
        CareLog.d(str, "Request started %s[method=%s,ID=%s]. Current request queue size is:%d.", httpAPIRequest.getPath(), httpAPIRequest.getHttpMethod(), httpAPIRequest.getID(), Integer.valueOf(this.mRequestList.size()));
    }

    /* JADX INFO: renamed from: lambda$accessAPIWithRequest$1$com-texa-carelib-webservices-internal-HttpTexaService, reason: not valid java name */
    public /* synthetic */ void m781x6b5160d7(Thread thread, Throwable th) {
        CareLog.e(TAG, th, "Uncaught exception.", new Object[0]);
        this.mPendingRequest.fireError(new CareError.Builder(2, -1).setMessage(getContext().getResources().getString(R.string.error_service_request_task_uncaught_exception, this.mPendingRequest.getID())).setException(th).build());
    }

    @Override // com.texa.carelib.webservices.ServiceProxy
    public void clear() {
        HttpServiceVehicleConfigurationInfo httpServiceVehicleConfigurationInfo = this.mServiceVehicleConfigurationInfo;
        if (httpServiceVehicleConfigurationInfo != null) {
            httpServiceVehicleConfigurationInfo.clear();
        }
        HttpServiceFirmwareInfo httpServiceFirmwareInfo = this.mServiceFirmwareInfoProcedure;
        if (httpServiceFirmwareInfo != null) {
            httpServiceFirmwareInfo.clear();
        }
    }

    public void onRequestCompleted(HttpAPIRequest httpAPIRequest, boolean z, String str, CareError careError) {
        removeRequest(httpAPIRequest);
        try {
            if (z) {
                CareLog.d(TAG, "onRequestCompleted() but notify skipped.", new Object[0]);
            } else if (careError == null) {
                CareLog.d(TAG, "Request %s(ID=%s) completed.", httpAPIRequest.getPath(), httpAPIRequest.getID());
                if (str == null) {
                    throw new IllegalArgumentException("result cannot be null if the web api has ended successfully.");
                }
                httpAPIRequest.fireCompleted(str);
            } else {
                CareLog.e(TAG, "Request %s(ID=%s) completed with error. Error:%s", httpAPIRequest.getPath(), httpAPIRequest.getID(), careError);
                httpAPIRequest.fireError(careError);
            }
            this.mPendingRequest = null;
            proceedWithNextRequest();
        } catch (Throwable th) {
            this.mPendingRequest = null;
            proceedWithNextRequest();
            throw th;
        }
    }

    public void repeatRequest(HttpAPIRequest httpAPIRequest) {
        CareLog.d(TAG, "Repeating request %s(ID=%s)", httpAPIRequest.getPath(), httpAPIRequest.getID());
        this.mPendingRequest = null;
        accessAPIWithRequest(httpAPIRequest, false);
    }

    public String getAcceptLanguage(Locale[] localeArr) {
        ArrayList arrayList = new ArrayList();
        for (Locale locale : localeArr) {
            arrayList.add(locale.getLanguage());
        }
        return StringUtils.join(arrayList, ",");
    }

    public static void prepareUrl(Context context, URLConnection uRLConnection) {
        String headerContentType = getHeaderContentType();
        uRLConnection.setRequestProperty(TexaCareServiceBus.HEADER_CONTENT_TYPE, headerContentType);
        String str = TAG;
        CareLog.v(str, "Content-Type:%s", headerContentType);
        String headerUserAgent = getHeaderUserAgent(context);
        uRLConnection.setRequestProperty(TexaCareServiceBus.HEADER_USER_AGENT, headerUserAgent);
        CareLog.v(str, "User-Agent:%s", headerUserAgent);
        uRLConnection.setRequestProperty(HEADER_DEVICE_FAMILY, getHeaderDeviceFamily());
        String headerAccept = getHeaderAccept();
        uRLConnection.setRequestProperty("Accept", headerAccept);
        CareLog.v(str, "Accept:%s", headerAccept);
    }

    private static String getHeaderAccept() {
        HttpHeaderAcceptBuilder httpHeaderAcceptBuilder = new HttpHeaderAcceptBuilder();
        httpHeaderAcceptBuilder.putFragment(TexaCareServiceBus.HEADER_CONTENT_TYPE_VALUE);
        httpHeaderAcceptBuilder.putFragment(ACCEPT_TX_CARE);
        return httpHeaderAcceptBuilder.build();
    }

    private void initHeaderFields() {
        this.mFieldsAsHeader.clear();
        this.mFieldsAsHeader.add("Accept-Language");
        this.mFieldsAsHeader.add(KEY_HWID);
        this.mFieldsAsHeader.add(KEY_SESSION_ID);
    }

    private static String getAndroidOSVersion() {
        return Build.VERSION.RELEASE;
    }

    private static String getApplicationId(Context context) {
        return context.getApplicationContext().getPackageName();
    }

    private static String getApplicationVersionName(Context context) {
        Context applicationContext = context.getApplicationContext();
        try {
            return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            CareLog.e(TAG, e, "Unable to get app version name.", new Object[0]);
            return "";
        }
    }

    private static long getApplicationVersionCode(Context context) {
        Context applicationContext = context.getApplicationContext();
        try {
            return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            CareLog.e(TAG, e, "Unable to get app version code.", new Object[0]);
            return -1L;
        }
    }

    private static String getHeaderUserAgent(Context context) {
        Context applicationContext = context.getApplicationContext();
        return new HttpHeaderUserAgentBuilder().setOSVersion(getAndroidOSVersion()).setCAReLibInfo(BuildConfig.LIBRARY_PACKAGE_NAME, "4.2.1").setAppInfo(getApplicationId(applicationContext), getApplicationVersionName(applicationContext), getApplicationVersionCode(applicationContext)).build();
    }
}
