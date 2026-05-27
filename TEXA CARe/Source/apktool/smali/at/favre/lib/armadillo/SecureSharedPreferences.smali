.class public final Lat/favre/lib/armadillo/SecureSharedPreferences;
.super Ljava/lang/Object;
.source "SecureSharedPreferences.java"

# interfaces
.implements Lat/favre/lib/armadillo/ArmadilloSharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;
    }
.end annotation


# static fields
.field private static final PASSWORD_VALIDATION_KEY:Ljava/lang/String; = "at.favre.lib.securepref.PASSWORD_VALIDATION_KEY"

.field private static final PREFERENCES_SALT_KEY:Ljava/lang/String; = "at.favre.lib.securepref.KEY_RANDOM"

.field private static final PREFERENCES_SALT_LENGTH_BYTES:I = 0x20


# instance fields
.field private encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

.field private final factory:Lat/favre/lib/armadillo/EncryptionProtocol$Factory;

.field private password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

.field private prefSaltContentKey:Ljava/lang/String;

.field private preferencesSalt:[B

.field private final recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

.field private final securePreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private supportVerifyPassword:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;Lat/favre/lib/armadillo/RecoveryPolicy;[CZ)V
    .locals 7

    .line 59
    invoke-interface {p3}, Lat/favre/lib/armadillo/EncryptionProtocol$Factory;->getStringMessageDigest()Lat/favre/lib/armadillo/StringMessageDigest;

    move-result-object v0

    const-string v1, "prefName"

    invoke-interface {v0, p2, v1}, Lat/favre/lib/armadillo/StringMessageDigest;->derive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lat/favre/lib/armadillo/SecureSharedPreferences;-><init>(Landroid/content/SharedPreferences;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;Lat/favre/lib/armadillo/RecoveryPolicy;[CZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;[CZ)V
    .locals 7

    .line 55
    new-instance v4, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v4, v0, v1}, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;-><init>(ZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lat/favre/lib/armadillo/SecureSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;Lat/favre/lib/armadillo/RecoveryPolicy;[CZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;Lat/favre/lib/armadillo/RecoveryPolicy;[CZ)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->securePreferenceListeners:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "create new secure shared preferences"

    .line 65
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    iput-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->factory:Lat/favre/lib/armadillo/EncryptionProtocol$Factory;

    .line 68
    iput-object p3, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    .line 69
    invoke-interface {p2, p4}, Lat/favre/lib/armadillo/EncryptionProtocol$Factory;->obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    .line 70
    iput-boolean p5, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->supportVerifyPassword:Z

    .line 71
    invoke-direct {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->init()V

    return-void
.end method

.method static synthetic access$100(Lat/favre/lib/armadillo/SecureSharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 36
    iget-object p0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/EncryptionProtocol;
    .locals 0

    .line 36
    iget-object p0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    return-object p0
.end method

.method static synthetic access$300(Lat/favre/lib/armadillo/SecureSharedPreferences;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
    .locals 0

    .line 36
    iget-object p0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    return-object p0
.end method

.method static synthetic access$400(Lat/favre/lib/armadillo/SecureSharedPreferences;Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptToBase64(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lat/favre/lib/armadillo/SecureSharedPreferences;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->init()V

    return-void
.end method

.method private decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B
    .locals 7

    .line 548
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p2}, Lat/favre/lib/armadillo/EncryptionProtocol;->deobfuscatePassword(Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;)[C

    move-result-object v1

    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->parseBase64(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lat/favre/lib/armadillo/EncryptionProtocol;->decrypt(Ljava/lang/String;[C[B)[B

    move-result-object p1
    :try_end_0
    .catch Lat/favre/lib/armadillo/EncryptionProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 550
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v3, p1

    move-object v4, p3

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lat/favre/lib/armadillo/RecoveryPolicy;->handleBrokenContent(Lat/favre/lib/armadillo/EncryptionProtocolException;Ljava/lang/String;Ljava/lang/String;ZLat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private encryptToBase64(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;
    .locals 1

    .line 539
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p2}, Lat/favre/lib/armadillo/EncryptionProtocol;->deobfuscatePassword(Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;)[C

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lat/favre/lib/armadillo/EncryptionProtocol;->encrypt(Ljava/lang/String;[C[B)[B

    move-result-object p1

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->encodeBase64()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lat/favre/lib/armadillo/EncryptionProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 541
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getPreferencesSalt(Lat/favre/lib/armadillo/StringMessageDigest;Lat/favre/lib/armadillo/DataObfuscator;Ljava/security/SecureRandom;)[B
    .locals 2

    const-string v0, "at.favre.lib.securepref.KEY_RANDOM"

    const-string v1, "prefName"

    .line 91
    invoke-interface {p1, v0, v1}, Lat/favre/lib/armadillo/StringMessageDigest;->derive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->prefSaltContentKey:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "create new preferences random salt"

    .line 95
    invoke-static {v0, p1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x20

    .line 96
    invoke-static {p1, p3}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    .line 98
    :try_start_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->copy()Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p3

    .line 99
    invoke-interface {p2, p1}, Lat/favre/lib/armadillo/DataObfuscator;->obfuscate([B)V

    .line 100
    iget-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->prefSaltContentKey:Ljava/lang/String;

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeBase64()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p2

    .line 105
    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->parseBase64(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p3

    .line 106
    invoke-interface {p2, p3}, Lat/favre/lib/armadillo/DataObfuscator;->deobfuscate([B)V

    :goto_0
    return-object p3
.end method

.method private hasValidationValue()Z
    .locals 1

    const-string v0, "at.favre.lib.securepref.PASSWORD_VALIDATION_KEY"

    .line 116
    invoke-virtual {p0, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .line 80
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->factory:Lat/favre/lib/armadillo/EncryptionProtocol$Factory;

    .line 81
    invoke-interface {v0}, Lat/favre/lib/armadillo/EncryptionProtocol$Factory;->getStringMessageDigest()Lat/favre/lib/armadillo/StringMessageDigest;

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->factory:Lat/favre/lib/armadillo/EncryptionProtocol$Factory;

    .line 82
    invoke-interface {v1}, Lat/favre/lib/armadillo/EncryptionProtocol$Factory;->createDataObfuscator()Lat/favre/lib/armadillo/DataObfuscator;

    move-result-object v1

    iget-object v2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->factory:Lat/favre/lib/armadillo/EncryptionProtocol$Factory;

    .line 83
    invoke-interface {v2}, Lat/favre/lib/armadillo/EncryptionProtocol$Factory;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->getPreferencesSalt(Lat/favre/lib/armadillo/StringMessageDigest;Lat/favre/lib/armadillo/DataObfuscator;Ljava/security/SecureRandom;)[B

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->preferencesSalt:[B

    .line 84
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->factory:Lat/favre/lib/armadillo/EncryptionProtocol$Factory;

    invoke-interface {v1, v0}, Lat/favre/lib/armadillo/EncryptionProtocol$Factory;->create([B)Lat/favre/lib/armadillo/EncryptionProtocol;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    .line 85
    iget-boolean v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->supportVerifyPassword:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->hasValidationValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->preferencesSalt:[B

    invoke-direct {p0, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->storePasswordValidationValue([B)V

    :cond_0
    return-void
.end method

.method private reencryptStringSetType([CLat/favre/lib/armadillo/SecureSharedPreferences$Editor;Ljava/lang/String;Lat/favre/lib/armadillo/KeyStretchingFunction;)Z
    .locals 4

    .line 376
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p1

    .line 377
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 382
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 383
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    iget-object v3, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p3, v3, v2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 392
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p4}, Lat/favre/lib/armadillo/EncryptionProtocol;->setKeyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)V

    .line 395
    :cond_3
    new-instance p4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 396
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    invoke-direct {p0, p3, p1, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptToBase64(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_4
    invoke-virtual {p2, p3, p4}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->putEncryptedStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x1

    return p1
.end method

.method private reencryptStringType([CLat/favre/lib/armadillo/SecureSharedPreferences$Editor;Ljava/lang/String;Lat/favre/lib/armadillo/KeyStretchingFunction;)Z
    .locals 4

    const/4 v0, 0x0

    .line 343
    :try_start_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v1, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p1

    .line 344
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 350
    :cond_0
    iget-object v2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p3, v2, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-eqz p4, :cond_2

    .line 356
    iget-object v3, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v3, p4}, Lat/favre/lib/armadillo/EncryptionProtocol;->setKeyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)V

    .line 359
    :cond_2
    invoke-direct {p0, p3, p1, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptToBase64(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;->putEncryptedBase64(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method private storePasswordValidationValue([B)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->encodeBase64()Ljava/lang/String;

    move-result-object p1

    const-string v1, "at.favre.lib.securepref.PASSWORD_VALIDATION_KEY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public changePassword([C)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->changePassword([CLat/favre/lib/armadillo/KeyStretchingFunction;)V

    return-void
.end method

.method public changePassword([CLat/favre/lib/armadillo/KeyStretchingFunction;)V
    .locals 6

    const-string v0, "changing password should only be done in a background thread"

    .line 307
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 309
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v1}, Lat/favre/lib/armadillo/EncryptionProtocol;->getKeyStretchingFunction()Lat/favre/lib/armadillo/KeyStretchingFunction;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 315
    iget-object v4, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v4, v1}, Lat/favre/lib/armadillo/EncryptionProtocol;->setKeyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)V

    .line 316
    move-object v4, v0

    check-cast v4, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;

    invoke-direct {p0, p1, v4, v3, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->reencryptStringType([CLat/favre/lib/armadillo/SecureSharedPreferences$Editor;Ljava/lang/String;Lat/favre/lib/armadillo/KeyStretchingFunction;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 317
    invoke-direct {p0, p1, v4, v3, p2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->reencryptStringSetType([CLat/favre/lib/armadillo/SecureSharedPreferences$Editor;Ljava/lang/String;Lat/favre/lib/armadillo/KeyStretchingFunction;)Z

    goto :goto_0

    .line 320
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_4

    .line 323
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p2}, Lat/favre/lib/armadillo/EncryptionProtocol;->setKeyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)V

    .line 326
    :cond_4
    iget-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    if-eqz p2, :cond_5

    .line 327
    invoke-interface {p2}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->wipe()V

    .line 329
    :cond_5
    iget-object p2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {p2, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    return-void
.end method

.method public close()V
    .locals 3

    .line 405
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->wipe()V

    :cond_0
    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    .line 409
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->preferencesSalt:[B

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 410
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 412
    :cond_1
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v1}, Lat/favre/lib/armadillo/EncryptionProtocol;->wipeDerivedPasswordCache()V

    .line 413
    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->preferencesSalt:[B

    .line 414
    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->prefSaltContentKey:Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 241
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v1, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 246
    new-instance v0, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences$Editor;-><init>(Lat/favre/lib/armadillo/SecureSharedPreferences;Lat/favre/lib/armadillo/SecureSharedPreferences$1;)V

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

    .line 134
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->prefSaltContentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    .line 138
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 226
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 232
    :cond_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p1, v1, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p2, 0x0

    .line 236
    aget-byte p1, p1, p2

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 211
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 217
    :cond_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p1, v1, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    .line 221
    :cond_1
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->toFloat()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 181
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 187
    :cond_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p1, v1, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    .line 191
    :cond_1
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->toInt()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 196
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    .line 202
    :cond_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p1, v1, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-wide p2

    .line 206
    :cond_1
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->toLong()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 152
    :cond_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p1, v1, v0}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 156
    :cond_1
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
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

    .line 161
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 167
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->password:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-direct {p0, p1, v2, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->decrypt(Ljava/lang/String;Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object p2

    .line 174
    :cond_1
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public isValidPassword()Z
    .locals 3

    const-string v0, "checking password should only be done in a background thread"

    .line 292
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->supportVerifyPassword:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "at.favre.lib.securepref.PASSWORD_VALIDATION_KEY"

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p0, v1, v2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->parseBase64(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    iget-object v2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->preferencesSalt:[B

    invoke-virtual {v1, v2}, Lat/favre/lib/bytes/Bytes;->equalsConstantTime([B)Z

    move-result v1
    :try_end_0
    .catch Lat/favre/lib/armadillo/SecureSharedPreferenceCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "support verify password is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnSecurePreferenceChangeListener(Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;)V
    .locals 3

    .line 263
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->securePreferenceListeners:Ljava/util/List;

    monitor-enter v0

    .line 264
    :try_start_0
    new-instance v1, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;

    iget-object v2, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-direct {v1, p1, v2, p0}, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;-><init>(Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;Lat/favre/lib/armadillo/EncryptionProtocol;Landroid/content/SharedPreferences;)V

    .line 265
    invoke-virtual {p0, v1}, Lat/favre/lib/armadillo/SecureSharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 266
    iget-object p1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->securePreferenceListeners:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unregisterOnSecurePreferenceChangeListener(Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->securePreferenceListeners:Ljava/util/List;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->securePreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 274
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;

    .line 276
    invoke-virtual {v2}, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->getWrapped()Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;

    move-result-object v3

    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    .line 278
    :cond_1
    invoke-virtual {p0, v2}, Lat/favre/lib/armadillo/SecureSharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 279
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 282
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lat/favre/lib/armadillo/SecureSharedPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
