.class public Lcom/texa/careapp/utils/securepreferences/SecurePreferences;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AES_KEY_ALG:Ljava/lang/String; = "AES"

.field private static final BACKUP_PBE_KEY_ALG:Ljava/lang/String; = "PBEWithMD5AndDES"

.field private static final ITERATIONS:I = 0x7d0

.field private static final KEY_SIZE:I = 0x100

.field private static final PRIMARY_PBE_KEY_ALG:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PROVIDER:Ljava/lang/String; = "BC"

.field private static final TAG:Ljava/lang/String; = "com.texa.careapp.utils.securepreferences.SecurePreferences"

.field private static sFile:Landroid/content/SharedPreferences; = null

.field private static sKey:[B = null

.field private static sLoggingEnabled:Z = false

.field private static sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 91
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 95
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 96
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->generateAesKeyValue()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    :cond_1
    invoke-static {v0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decode(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sKey:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object p1, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    return-void

    :catch_0
    move-exception p1

    .line 103
    sget-boolean v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/SharedPreferences;
    .locals 1

    .line 62
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x3

    .line 117
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/securepreferences/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "AES"

    if-eqz p0, :cond_2

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "BC"

    .line 238
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 239
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 241
    new-instance v0, Ljava/lang/String;

    .line 242
    invoke-static {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 241
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 244
    sget-boolean v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v1, "decrypt"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 113
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/securepreferences/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "AES"

    if-eqz p0, :cond_2

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "BC"

    .line 220
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 221
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "UTF-8"

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 223
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 226
    sget-boolean v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v1, "encrypt"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 125
    invoke-static {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v1, 0x100

    const/16 v2, 0x7d0

    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    .line 131
    invoke-static {v0, p0, v3, v2, v1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->generatePBEKey([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "PBEWithMD5AndDES"

    .line 137
    invoke-static {v0, p0, v3, v2, v1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->generatePBEKey([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 140
    :goto_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateAesKeyValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const-string v1, "AES"

    .line 202
    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    .line 204
    :try_start_0
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v2, 0xc0

    .line 207
    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/16 v2, 0x80

    .line 209
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 212
    :goto_0
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generatePBEKey([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/16 p3, 0x3e8

    :cond_0
    const-string v0, "BC"

    .line 165
    invoke-static {p2, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    .line 167
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p0, p1, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 169
    invoke-virtual {p2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "android_id"

    .line 182
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 185
    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 192
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 252
    sget-boolean v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    return v0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 256
    sput-boolean p0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 370
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->edit()Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;
    .locals 2

    .line 375
    new-instance v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$Editor;-><init>(Lcom/texa/careapp/utils/securepreferences/SecurePreferences$1;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/util/HashMap;

    .line 263
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 264
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 355
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 356
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 355
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 362
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 364
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 341
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 342
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 341
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 347
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 349
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 313
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 314
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 313
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 319
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 327
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 328
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 327
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 333
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 335
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 277
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 278
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 277
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

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

    .line 298
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 299
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 298
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 303
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    .line 304
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 305
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    invoke-static {v0}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getStringUnencrypted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 290
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 291
    invoke-static {p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 290
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 381
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 382
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    .line 399
    :cond_0
    new-instance p2, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$1;

    invoke-direct {p2, p0, p1}, Lcom/texa/careapp/utils/securepreferences/SecurePreferences$1;-><init>(Lcom/texa/careapp/utils/securepreferences/SecurePreferences;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 417
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object p1, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 419
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 425
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    .line 427
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 428
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 429
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 431
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/securepreferences/SecurePreferences;->sFile:Landroid/content/SharedPreferences;

    .line 432
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_0
    return-void
.end method
