.class public Lcom/texa/securepreferences/SecurePreferences;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/securepreferences/SecurePreferences$Editor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.texa.securepreferences.SecurePreferences"

.field private static sLoggingEnabled:Z = false


# instance fields
.field private keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

.field private sharedPrefFilename:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, v0, v1}, Lcom/texa/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/texa/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p1, p4}, Lcom/texa/securepreferences/SecurePreferences;->getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p4

    iput-object p4, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    if-eqz p2, :cond_1

    .line 108
    iput-object p2, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    goto/16 :goto_1

    .line 109
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 112
    :try_start_0
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 116
    invoke-static {}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->generateKey()Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    .line 118
    iget-object p2, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    invoke-virtual {p3}, Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_3

    .line 120
    sget-object p1, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string p2, "Key not committed to prefs"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {p2}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->keys(Ljava/lang/String;)Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    .line 126
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 127
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Problem generating Key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 131
    sget-boolean p2, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz p2, :cond_5

    .line 132
    sget-object p2, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error init:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 139
    :cond_6
    :try_start_1
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    if-eqz p1, :cond_7

    :goto_1
    return-void

    .line 142
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Problem generating Key From Password"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    .line 145
    sget-boolean p2, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz p2, :cond_8

    .line 146
    sget-object p2, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error init using user password:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/texa/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/texa/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 282
    :cond_0
    :try_start_0
    new-instance v0, Lcom/texa/securepreferences/AesCbcWithIntegrity$CipherTextIvMac;

    invoke-direct {v0, p1}, Lcom/texa/securepreferences/AesCbcWithIntegrity$CipherTextIvMac;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    invoke-static {v0, p1}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->decryptString(Lcom/texa/securepreferences/AesCbcWithIntegrity$CipherTextIvMac;Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 286
    :goto_0
    sget-boolean v0, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 287
    sget-object v0, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v1, "decrypt"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "encrypt"

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    invoke-static {p1, v2}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->encrypt(Ljava/lang/String;Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;)Lcom/texa/securepreferences/AesCbcWithIntegrity$CipherTextIvMac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/securepreferences/AesCbcWithIntegrity$CipherTextIvMac;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 267
    sget-boolean v2, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 268
    sget-object v2, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1

    :catch_1
    move-exception p1

    .line 262
    sget-boolean v2, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 263
    sget-object v2, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public static generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {p0}, Lcom/texa/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 167
    invoke-static {v0, p0}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[B)Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Key not generated"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "android_id"

    .line 186
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 189
    :cond_0
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 192
    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v1

    .line 200
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public static hashPrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-256"

    .line 212
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 214
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 216
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 219
    :goto_0
    sget-boolean v0, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v1, "Problem generating hash"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 227
    sget-boolean v0, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    return v0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 231
    sput-boolean p0, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public destroyKeys()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    return-void
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/texa/securepreferences/SecurePreferences;->edit()Lcom/texa/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/texa/securepreferences/SecurePreferences$Editor;
    .locals 2

    .line 472
    new-instance v0, Lcom/texa/securepreferences/SecurePreferences$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/securepreferences/SecurePreferences$Editor;-><init>(Lcom/texa/securepreferences/SecurePreferences;Lcom/texa/securepreferences/SecurePreferences$1;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/util/HashMap;

    .line 301
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 302
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v4, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    invoke-virtual {v4}, Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 309
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 312
    sget-boolean v4, Lcom/texa/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 313
    sget-object v4, Lcom/texa/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v5, "error during getAll"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 403
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 402
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 408
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 410
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 389
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 388
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 394
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 396
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 361
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 360
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 366
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 368
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 375
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 374
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 380
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 382
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 326
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 325
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    invoke-direct {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 346
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 345
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 350
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    .line 351
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 352
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-direct {p0, v0}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getUnencryptedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 338
    invoke-static {p1}, Lcom/texa/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 337
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public handlePasswordChange(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 427
    invoke-static {p2}, Lcom/texa/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/securepreferences/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    move-result-object p1

    .line 429
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 431
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 435
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 436
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 438
    check-cast v4, Ljava/lang/String;

    .line 439
    invoke-direct {p0, v4}, Lcom/texa/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/texa/securepreferences/SecurePreferences;->destroyKeys()V

    .line 447
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 453
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/texa/securepreferences/SecurePreferences;->getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 456
    iput-object p1, p0, Lcom/texa/securepreferences/SecurePreferences;->keys:Lcom/texa/securepreferences/AesCbcWithIntegrity$SecretKeys;

    .line 458
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 461
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 462
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    invoke-direct {p0, v2}, Lcom/texa/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 467
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 479
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/texa/securepreferences/SecurePreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/texa/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 533
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
