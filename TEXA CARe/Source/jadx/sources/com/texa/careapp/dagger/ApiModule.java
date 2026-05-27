package com.texa.careapp.dagger;

import android.accounts.AccountManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.BuildConfig;
import com.texa.careapp.CareApplication;
import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.ApiAuthenticatorClient;
import com.texa.careapp.utils.authentication.ApiAuthenticatorUser;
import com.texa.careapp.utils.authentication.ApiHeaders;
import com.texa.careapp.utils.authentication.ServiceBusApiHeaders;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import java.util.concurrent.TimeUnit;
import javax.inject.Singleton;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes2.dex */
@Module
public class ApiModule {
    protected static final String CLIENT_ID = "B6544DA3-4D04-4577-8975-FD874D6DF1B6";
    protected static final String CLIENT_SECRET = "Hl0kowhqPSOKpLUhChuRQylTwuj0PxF2kQcRNA2txyO83tIVYC1h76FaGYqmBTT";
    private static final long HTTP_TIMEOUT = 30000;
    public static final String NAMED_CLIENT_SECRET = "ongMqxhLIh5eDB_0CLyo0nabXbSVbLO9lLRB5jsxTYgkhAIlZ5x4!mVRzqqdOkv";
    protected final CareApplication mCareApplication;

    @Provides
    @ClientId
    String provideClientId() {
        return CLIENT_ID;
    }

    @Provides
    @ClientSecret
    String provideClientSecret() {
        return CLIENT_SECRET;
    }

    public ApiModule(CareApplication careApplication) {
        this.mCareApplication = careApplication;
    }

    @Provides
    @Singleton
    ApiAuthenticatorClient provideApiAuthenticatorClient(@AuthenticationClient AccessTokenPersistenceManager accessTokenPersistenceManager, @ClientId String str, @ClientSecret String str2, TexaCareAuthService texaCareAuthService) {
        return new ApiAuthenticatorClient(accessTokenPersistenceManager, str, str2, texaCareAuthService);
    }

    @Provides
    @Singleton
    ApiAuthenticatorUser provideApiAuthenticatorUser(@AuthenticationUser AccessTokenPersistenceManager accessTokenPersistenceManager, @ClientId String str, @ClientSecret String str2, TexaCareAuthService texaCareAuthService, UserDataManager userDataManager, LocalBroadcastManager localBroadcastManager) {
        return new ApiAuthenticatorUser(AccountManager.get(this.mCareApplication), accessTokenPersistenceManager, str, str2, texaCareAuthService, userDataManager, localBroadcastManager);
    }

    @Provides
    @Singleton
    TexaCareAuthService provideTexaCareAuthService() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.writeTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.readTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.cache(new Cache(new File(this.mCareApplication.getCacheDir(), "http-cache"), 5242880L));
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(BuildConfig.API_LOGGER_LEVEL);
        builder.addInterceptor(httpLoggingInterceptor);
        return (TexaCareAuthService) new Retrofit.Builder().baseUrl("https://careauth.texa.com/").addConverterFactory(GsonConverterFactory.create(Utils.buildGsonInstance())).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(builder.build()).build().create(TexaCareAuthService.class);
    }

    @Provides
    @Singleton
    TexaCareServiceBus provideTexaCareServiceBus() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.writeTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.readTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.cache(new Cache(new File(this.mCareApplication.getCacheDir(), "http-cache"), 5242880L));
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(BuildConfig.API_LOGGER_LEVEL);
        builder.addInterceptor(httpLoggingInterceptor);
        builder.addInterceptor(new ServiceBusApiHeaders());
        return (TexaCareServiceBus) new Retrofit.Builder().baseUrl("https://carequeue-production.servicebus.windows.net/").addConverterFactory(GsonConverterFactory.create(Utils.buildGsonInstance())).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(builder.build()).build().create(TexaCareServiceBus.class);
    }

    @Provides
    @Singleton
    TexaCareApiServiceClient provideTexaCareApiClient(ApiAuthenticatorClient apiAuthenticatorClient, @AuthenticationClient AccessTokenPersistenceManager accessTokenPersistenceManager) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.writeTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.readTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.cache(new Cache(new File(this.mCareApplication.getCacheDir(), "http-cache"), 5242880L));
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(BuildConfig.API_LOGGER_LEVEL);
        builder.addInterceptor(httpLoggingInterceptor);
        builder.addInterceptor(new ApiHeaders(this.mCareApplication, accessTokenPersistenceManager));
        builder.authenticator(apiAuthenticatorClient);
        return (TexaCareApiServiceClient) new Retrofit.Builder().baseUrl("https://careapi.texa.com/").addConverterFactory(GsonConverterFactory.create(Utils.buildGsonInstance())).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(builder.build()).build().create(TexaCareApiServiceClient.class);
    }

    @Provides
    @Singleton
    TexaCareApiServiceUser provideTexaCareApiServiceUser(ApiAuthenticatorUser apiAuthenticatorUser, @AuthenticationUser AccessTokenPersistenceManager accessTokenPersistenceManager) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.writeTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.readTimeout(30000L, TimeUnit.MILLISECONDS);
        builder.cache(new Cache(new File(this.mCareApplication.getCacheDir(), "http-cache"), 5242880L));
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(BuildConfig.API_LOGGER_LEVEL);
        builder.addInterceptor(httpLoggingInterceptor);
        builder.addInterceptor(new ApiHeaders(this.mCareApplication, accessTokenPersistenceManager));
        builder.authenticator(apiAuthenticatorUser);
        return (TexaCareApiServiceUser) new Retrofit.Builder().baseUrl("https://careapi.texa.com/").addConverterFactory(GsonConverterFactory.create(Utils.buildGsonInstance())).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(builder.build()).build().create(TexaCareApiServiceUser.class);
    }
}
