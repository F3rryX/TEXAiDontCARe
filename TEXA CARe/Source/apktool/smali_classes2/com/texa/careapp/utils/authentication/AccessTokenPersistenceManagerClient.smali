.class public Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;
.super Ljava/lang/Object;
.source "AccessTokenPersistenceManagerClient.java"

# interfaces
.implements Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;


# static fields
.field private static final EXTRA_CLIENT_TOKEN:Ljava/lang/String; = "EXTRA_CLIENT_TOKEN"


# instance fields
.field private final mGson:Lcom/google/gson/Gson;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;->mGson:Lcom/google/gson/Gson;

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "EXTRA_CLIENT_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/texa/careapp/utils/authentication/AccessToken;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessToken;

    return-object v0
.end method

.method public persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_CLIENT_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
