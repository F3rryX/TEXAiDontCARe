package com.texa.careapp.utils.authentication;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.Version;
import java.io.IOException;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class ApiHeaders implements Interceptor {
    private static final String DEVICE_FAMILY_ANDROID = "Android";
    private static final String HEADER_ACCEPT_LANGUAGE = "Accept-Language";
    static final String HEADER_AUTHORIZATION = "Authorization";
    static final String HEADER_CARE_HWID = "CARe-HWID";
    private static final String HEADER_DEVICE_FAMILY = "Device-Family";
    private static final String HEADER_DEVICE_ID = "Device-UId";
    private static final String HEADER_DEVICE_TIME_ZONE = "Device-TimeZone";
    private static final String HEADER_DEVICE_TOKEN = "Device-Token";
    private static final String HEADER_USER_AGENT = "User-Agent";

    @Inject
    FcmManager fcmManager;
    private AccessTokenPersistenceManager mAccessTokenPersistenceManager;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private String mUserAgent;

    public ApiHeaders(CareApplication careApplication, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        careApplication.component().inject(this);
        this.mAccessTokenPersistenceManager = accessTokenPersistenceManager;
        this.mUserAgent = buildUserAgent(careApplication.getApplicationContext());
    }

    protected ApiHeaders() {
    }

    static String buildUserAgent(Context context, PackageInfo packageInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append(packageInfo.packageName);
        sb.append("/");
        sb.append(packageInfo.versionName);
        sb.append(Version.SEPARATOR);
        sb.append(packageInfo.versionCode);
        sb.append(" " + context.getPackageName() + "/");
        sb.append(context.getString(R.string.carelib_webservices_version));
        sb.append(" Android/");
        sb.append(Build.VERSION.RELEASE);
        return sb.toString();
    }

    private String buildUserAgent(Context context) {
        try {
            return buildUserAgent(context, context.getPackageManager().getPackageInfo(context.getPackageName(), 0));
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Could not get package name: " + e);
        }
    }

    private void addLanguageHeader(Request.Builder builder) {
        builder.addHeader("Accept-Language", Locale.getDefault().getLanguage());
    }

    private void addDeviceTokenHeader(Request.Builder builder) {
        builder.addHeader(HEADER_DEVICE_TOKEN, this.fcmManager.getNotificationToken());
    }

    private void addDeviceFamilyHeader(Request.Builder builder) {
        builder.addHeader("Device-Family", DEVICE_FAMILY_ANDROID);
    }

    private void addUserAgentHeader(Request.Builder builder) {
        builder.addHeader("User-Agent", this.mUserAgent);
    }

    void addHardwareIdHeader(Request.Builder builder) {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null || dongleModel.getHwid() == null) {
            return;
        }
        builder.addHeader("CARe-HWID", dongleModel.getHwid());
    }

    private void addAuthorizationHeader(Request.Builder builder) {
        String str;
        AccessToken accessToken = this.mAccessTokenPersistenceManager.getAccessToken();
        if (accessToken != null) {
            str = accessToken.tokenType + " " + accessToken.accessToken;
        } else {
            str = null;
        }
        if (str != null) {
            builder.addHeader("Authorization", str);
        }
    }

    private void addDeviceTimeZoneHeader(Request.Builder builder) {
        builder.addHeader(HEADER_DEVICE_TIME_ZONE, (TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 1000) + "");
    }

    private void addDeviceUUID(Request.Builder builder) {
        builder.addHeader(HEADER_DEVICE_ID, Utils.getUniqueDeviceId(this.mSharedPreferences));
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        addAuthorizationHeader(builderNewBuilder);
        addHardwareIdHeader(builderNewBuilder);
        addDeviceFamilyHeader(builderNewBuilder);
        addLanguageHeader(builderNewBuilder);
        addDeviceTimeZoneHeader(builderNewBuilder);
        addUserAgentHeader(builderNewBuilder);
        addDeviceUUID(builderNewBuilder);
        addDeviceTokenHeader(builderNewBuilder);
        return chain.proceed(builderNewBuilder.build());
    }
}
