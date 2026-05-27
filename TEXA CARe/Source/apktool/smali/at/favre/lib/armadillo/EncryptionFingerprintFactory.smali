.class public final Lat/favre/lib/armadillo/EncryptionFingerprintFactory;
.super Ljava/lang/Object;
.source "EncryptionFingerprintFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lat/favre/lib/armadillo/EncryptionFingerprint;
    .locals 4

    .line 49
    new-instance v0, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    invoke-static {p0}, Lat/favre/lib/armadillo/EncryptionFingerprintFactory;->getApkSignatureHash(Landroid/content/Context;)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 50
    invoke-static {p0}, Lat/favre/lib/armadillo/EncryptionFingerprintFactory;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 51
    invoke-static {p0}, Lat/favre/lib/armadillo/EncryptionFingerprintFactory;->getApplicationPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 52
    invoke-static {}, Lat/favre/lib/armadillo/EncryptionFingerprintFactory;->getBuildDetails()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    sget-object p0, Lat/favre/lib/armadillo/BuildConfig;->STATIC_RANDOM:[B

    const/4 v2, 0x4

    aput-object p0, v1, v2

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lat/favre/lib/bytes/Bytes;->empty()Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v1, p1

    .line 49
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->from([[B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;-><init>([B)V

    return-object v0
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "This devices returned null as ANDROID_ID, using fallback. This is not expected and may be a device bug. If this behaviour is non-deterministic, it may disrupt the possibility of decrypting the content."

    .line 89
    invoke-static {v0, p0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "0000000000000000"

    :cond_0
    return-object p0
.end method

.method private static getApkSignatureHash(Landroid/content/Context;)[B
    .locals 4

    .line 102
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 105
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 106
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->hashSha256()Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 102
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 109
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not get apk signature hash"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getApplicationPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBuildDetails()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
