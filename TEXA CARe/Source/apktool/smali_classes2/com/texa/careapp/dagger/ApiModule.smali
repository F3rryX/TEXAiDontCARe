.class public Lcom/texa/careapp/dagger/ApiModule;
.super Ljava/lang/Object;
.source "ApiModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field protected static final CLIENT_ID:Ljava/lang/String; = "B6544DA3-4D04-4577-8975-FD874D6DF1B6"

.field protected static final CLIENT_SECRET:Ljava/lang/String; = "Hl0kowhqPSOKpLUhChuRQylTwuj0PxF2kQcRNA2txyO83tIVYC1h76FaGYqmBTT"

.field private static final HTTP_TIMEOUT:J = 0x7530L

.field public static final NAMED_CLIENT_SECRET:Ljava/lang/String; = "ongMqxhLIh5eDB_0CLyo0nabXbSVbLO9lLRB5jsxTYgkhAIlZ5x4!mVRzqqdOkv"


# instance fields
.field protected final mCareApplication:Lcom/texa/careapp/CareApplication;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    return-void
.end method


# virtual methods
.method provideApiAuthenticatorClient(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;
    .locals 1
    .param p1    # Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
        .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientId;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 57
    new-instance v0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;-><init>(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    return-object v0
.end method

.method provideApiAuthenticatorUser(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;Lcom/texa/careapp/utils/UserDataManager;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;
    .locals 9
    .param p1    # Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
        .annotation runtime Lcom/texa/careapp/dagger/AuthenticationUser;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientId;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 66
    new-instance v8, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;

    iget-object v0, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;-><init>(Landroid/accounts/AccountManager;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;Lcom/texa/careapp/utils/UserDataManager;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object v8
.end method

.method provideClientId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "B6544DA3-4D04-4577-8975-FD874D6DF1B6"

    return-object v0
.end method

.method provideClientSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "Hl0kowhqPSOKpLUhChuRQylTwuj0PxF2kQcRNA2txyO83tIVYC1h76FaGYqmBTT"

    return-object v0
.end method

.method provideTexaCareApiClient(Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareApiServiceClient;
    .locals 5
    .param p2    # Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
        .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 117
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 118
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 119
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 120
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 122
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "http-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    new-instance v2, Lokhttp3/Cache;

    const-wide/32 v3, 0x500000

    invoke-direct {v2, v1, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 124
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 126
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 127
    sget-object v2, Lcom/texa/careapp/BuildConfig;->API_LOGGER_LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 128
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 129
    new-instance v1, Lcom/texa/careapp/utils/authentication/ApiHeaders;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v1, v2, p2}, Lcom/texa/careapp/utils/authentication/ApiHeaders;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 130
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 132
    new-instance p1, Lretrofit2/Retrofit$Builder;

    invoke-direct {p1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string p2, "https://careapi.texa.com/"

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 133
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 134
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class p2, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    return-object p1
.end method

.method provideTexaCareApiServiceUser(Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .locals 5
    .param p2    # Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
        .annotation runtime Lcom/texa/careapp/dagger/AuthenticationUser;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 141
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 142
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 143
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 144
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 146
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "http-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    new-instance v2, Lokhttp3/Cache;

    const-wide/32 v3, 0x500000

    invoke-direct {v2, v1, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 148
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 150
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 151
    sget-object v2, Lcom/texa/careapp/BuildConfig;->API_LOGGER_LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 152
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 153
    new-instance v1, Lcom/texa/careapp/utils/authentication/ApiHeaders;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v1, v2, p2}, Lcom/texa/careapp/utils/authentication/ApiHeaders;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 154
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 156
    new-instance p1, Lretrofit2/Retrofit$Builder;

    invoke-direct {p1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string p2, "https://careapi.texa.com/"

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 157
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 158
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class p2, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-object p1
.end method

.method provideTexaCareAuthService()Lcom/texa/careapp/networking/TexaCareAuthService;
    .locals 5
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 72
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 73
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 74
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 75
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 77
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "http-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    new-instance v2, Lokhttp3/Cache;

    const-wide/32 v3, 0x500000

    invoke-direct {v2, v1, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 79
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 82
    sget-object v2, Lcom/texa/careapp/BuildConfig;->API_LOGGER_LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 83
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 85
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://careauth.texa.com/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 87
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    return-object v0
.end method

.method provideTexaCareServiceBus()Lcom/texa/careapp/networking/TexaCareServiceBus;
    .locals 5
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 94
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 95
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 96
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 99
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "http-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    new-instance v2, Lokhttp3/Cache;

    const-wide/32 v3, 0x500000

    invoke-direct {v2, v1, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 101
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 103
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 104
    sget-object v2, Lcom/texa/careapp/BuildConfig;->API_LOGGER_LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 105
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 106
    new-instance v1, Lcom/texa/careapp/utils/authentication/ServiceBusApiHeaders;

    invoke-direct {v1}, Lcom/texa/careapp/utils/authentication/ServiceBusApiHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 108
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://carequeue-production.servicebus.windows.net/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 110
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/networking/TexaCareServiceBus;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareServiceBus;

    return-object v0
.end method
