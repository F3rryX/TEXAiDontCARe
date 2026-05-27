.class public Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;
.super Ljava/lang/Object;
.source "AccessTokenPersistenceManagerUser.java"

# interfaces
.implements Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;


# static fields
.field public static final EXTRA_USER_TOKEN:Ljava/lang/String; = "USER_TOKEN"


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mGson:Lcom/google/gson/Gson;

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->getFirstAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->getAccessToken(Landroid/accounts/Account;)Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method protected getAccessToken(Landroid/accounts/Account;)Lcom/texa/careapp/utils/authentication/AccessToken;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "USER_TOKEN"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mGson:Lcom/google/gson/Gson;

    const-class v1, Lcom/texa/careapp/utils/authentication/AccessToken;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/utils/authentication/AccessToken;

    return-object p1
.end method

.method protected getAccountByName(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 4

    .line 135
    iget-object p1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    sget-object v0, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 136
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 137
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFirstAccount()Landroid/accounts/Account;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    sget-object v1, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 154
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 157
    aget-object v0, v0, v1

    return-object v0
.end method

.method protected persist(Landroid/accounts/Account;Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 4

    const-string v0, "USER_TOKEN"

    if-eqz p2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    sget-object v2, Lcom/texa/careapp/Constants;->AUTH_TOKEN_TYPE:Ljava/lang/String;

    iget-object v3, p2, Lcom/texa/careapp/utils/authentication/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v0, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p2, p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->getFirstAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;->persist(Landroid/accounts/Account;Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method
