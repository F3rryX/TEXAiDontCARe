.class public final Lat/favre/lib/armadillo/PBKDF2KeyStretcher;
.super Ljava/lang/Object;
.source "PBKDF2KeyStretcher.java"

# interfaces
.implements Lat/favre/lib/armadillo/KeyStretchingFunction;


# static fields
.field private static final PBKDF2_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PBKDF2_DEFAULT_ITERATIONS:I = 0x2710

.field private static final PBKDF2_MIN_ITERATIONS:I = 0x3e8


# instance fields
.field private final iterations:I

.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2710

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v0, v1}, Lat/favre/lib/armadillo/PBKDF2KeyStretcher;-><init>(ILjava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(ILjava/security/Provider;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 49
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lat/favre/lib/armadillo/PBKDF2KeyStretcher;->iterations:I

    .line 50
    iput-object p2, p0, Lat/favre/lib/armadillo/PBKDF2KeyStretcher;->provider:Ljava/security/Provider;

    return-void
.end method

.method private static pbkdf2(Ljava/security/Provider;[C[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string v0, "pbkdf2 is a very expensive call and should not be done on the main thread"

    .line 72
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {v0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string p1, "PBKDF2WithHmacSHA1"

    if-eqz p0, :cond_0

    .line 74
    invoke-static {p1, p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public stretch([B[CI)[B
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/PBKDF2KeyStretcher;->provider:Ljava/security/Provider;

    iget v1, p0, Lat/favre/lib/armadillo/PBKDF2KeyStretcher;->iterations:I

    invoke-static {v0, p2, p1, v1, p3}, Lat/favre/lib/armadillo/PBKDF2KeyStretcher;->pbkdf2(Ljava/security/Provider;[C[BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "could not stretch with pbkdf2"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
