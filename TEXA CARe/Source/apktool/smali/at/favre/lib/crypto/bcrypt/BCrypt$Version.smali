.class public final Lat/favre/lib/crypto/bcrypt/BCrypt$Version;
.super Ljava/lang/Object;
.source "BCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/BCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Version"
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Lat/favre/lib/crypto/bcrypt/BCryptFormatter;

.field public static final DEFAULT_MAX_PW_LENGTH_BYTE:I = 0x47

.field private static final DEFAULT_PARSER:Lat/favre/lib/crypto/bcrypt/BCryptParser;

.field public static final MAX_PW_LENGTH_BYTE:I = 0x48

.field public static final SUPPORTED_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/favre/lib/crypto/bcrypt/BCrypt$Version;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

.field public static final VERSION_2B:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

.field public static final VERSION_2X:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

.field public static final VERSION_2Y:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

.field public static final VERSION_2Y_NO_NULL_TERMINATOR:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

.field public static final VERSION_BC:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;


# instance fields
.field public final allowedMaxPwLength:I

.field public final appendNullTerminator:Z

.field public final formatter:Lat/favre/lib/crypto/bcrypt/BCryptFormatter;

.field public final parser:Lat/favre/lib/crypto/bcrypt/BCryptParser;

.field public final useOnly23bytesForHash:Z

.field public final versionIdentifier:[B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 699
    new-instance v7, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;

    new-instance v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;

    invoke-direct {v0}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;-><init>()V

    invoke-static {}, Lat/favre/lib/crypto/bcrypt/BCrypt;->access$200()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;-><init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;)V

    sput-object v7, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->DEFAULT_FORMATTER:Lat/favre/lib/crypto/bcrypt/BCryptFormatter;

    .line 700
    new-instance v8, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;

    new-instance v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;

    invoke-direct {v0}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;-><init>()V

    invoke-static {}, Lat/favre/lib/crypto/bcrypt/BCrypt;->access$200()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;-><init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;)V

    sput-object v8, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->DEFAULT_PARSER:Lat/favre/lib/crypto/bcrypt/BCryptParser;

    .line 720
    new-instance v9, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    const/4 v10, 0x2

    new-array v0, v10, [B

    fill-array-data v0, :array_0

    invoke-direct {v9, v0, v7, v8}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BLat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v9, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 729
    new-instance v11, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-array v0, v10, [B

    fill-array-data v0, :array_1

    invoke-direct {v11, v0, v7, v8}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BLat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v11, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2B:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 741
    new-instance v12, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-array v0, v10, [B

    fill-array-data v0, :array_2

    invoke-direct {v12, v0, v7, v8}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BLat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v12, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2X:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 748
    new-instance v13, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-array v0, v10, [B

    fill-array-data v0, :array_3

    invoke-direct {v13, v0, v7, v8}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BLat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v13, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2Y:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 755
    new-instance v14, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-array v1, v10, [B

    fill-array-data v1, :array_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x48

    move-object v0, v14

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BZZILat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v14, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2Y_NO_NULL_TERMINATOR:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 761
    new-instance v14, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-array v1, v10, [B

    fill-array-data v1, :array_5

    const/4 v2, 0x0

    const/16 v4, 0x47

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BZZILat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v14, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_BC:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    const/4 v0, 0x4

    new-array v0, v0, [Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    aput-object v12, v0, v10

    const/4 v1, 0x3

    aput-object v13, v0, v1

    .line 766
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->SUPPORTED_VERSIONS:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 1
        0x32t
        0x61t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x62t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x32t
        0x78t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x32t
        0x79t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x32t
        0x79t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x32t
        0x63t
    .end array-data
.end method

.method private constructor <init>([BLat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x47

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 803
    invoke-direct/range {v0 .. v6}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BZZILat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    return-void
.end method

.method public constructor <init>([BZZILat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    .line 818
    iput-boolean p2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->useOnly23bytesForHash:Z

    .line 819
    iput-boolean p3, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    .line 820
    iput p4, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    .line 821
    iput-object p5, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->formatter:Lat/favre/lib/crypto/bcrypt/BCryptFormatter;

    .line 822
    iput-object p6, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->parser:Lat/favre/lib/crypto/bcrypt/BCryptParser;

    const/16 p1, 0x48

    if-gt p4, p1, :cond_0

    return-void

    .line 825
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "allowed max pw length cannot be gt 72"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 832
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 833
    :cond_1
    check-cast p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 834
    iget-boolean v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->useOnly23bytesForHash:Z

    iget-boolean v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->useOnly23bytesForHash:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    iget-boolean v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    iget v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    iget-object p1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    .line 837
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 842
    iget-boolean v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->useOnly23bytesForHash:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 843
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
